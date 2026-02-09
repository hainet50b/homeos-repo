#!/usr/bin/env bash
set -eu

if command -v vale > /dev/null 2>&1; then
  current_version=v$(vale --version| awk '{print $3}')
else
  current_version='v0.0.0'
fi
releases=$(curl -fsSL \
  -H 'Accept: application/vnd.github+json' \
  https://api.github.com/repos/errata-ai/vale/releases/latest
)
latest_version=$(echo "$releases" | jq -r '.tag_name')

install_and_update_vale() {
  local tmpdir=$(mktemp -d)
  trap 'rm -rf "$tmpdir"' RETURN

  local assets=$(echo "$releases" | jq -r '.assets[]')

  local latest_version_number=${latest_version#v}

  local bin_name="vale_${latest_version_number}_Linux_64-bit.tar.gz"
  local checksum_name="vale_${latest_version_number}_checksums.txt"

  local bin_link=$(echo "$assets" \
    | jq -r "select(.name == \"${bin_name}\") | .browser_download_url"
  )
  local checksum_link=$(echo "$assets" \
    | jq -r "select(.name == \"${checksum_name}\") | .browser_download_url"
  )

  cd "$tmpdir"

  curl -fsSL -O "$bin_link"
  curl -fsSL -O "$checksum_link"

  grep "$bin_name" "$checksum_name" > "${checksum_name}.tmp"
  mv "${checksum_name}.tmp" "$checksum_name"
  sha256sum -c "$checksum_name"

  local base_dir="${HOME}/.local"
  local bin_dir="${base_dir}/bin"
  local opt_dir="${base_dir}/opt/vale"

  mkdir -p "$bin_dir"
  mkdir -p "$opt_dir"

  local current_dir="${opt_dir}/current"
  local install_dir="${opt_dir}/${latest_version}"

  mkdir -p "$install_dir"

  tar -xzf "${tmpdir}/${bin_name}" -C "$install_dir"

  ln -sfn "$install_dir" "$current_dir"
  ln -sfn "${current_dir}/vale" "${bin_dir}/vale"
}

package_name='Vale'
if [ "$current_version" = '0.0.0' ]; then
  echo "Installing ${package_name}: ${latest_version}"
  install_and_update_vale
elif [ "$current_version" = "$latest_version" ]; then
  echo "${package_name} is up to date: ${current_version}"
else
  echo "Updating ${package_name}: ${current_version} -> ${latest_version}"
  install_and_update_vale
fi

