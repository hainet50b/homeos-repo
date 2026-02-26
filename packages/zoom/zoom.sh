#!/usr/bin/env bash
sudo curl -fsSL -o /etc/yum.repos.d/zoom_release.repo https://repo.zoom.us/repo/rpm/zoom_release.repo
sudo rpmkeys --import https://zoom.us/linux/download/pubkey
sudo dnf install zoom

