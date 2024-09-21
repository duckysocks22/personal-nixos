#!/usr/bin/env bash

set -e

dir="$dirname "$(readlink -f "$0")")"
flakePath="${flakePath:-"$dir"}"

nixCommand=(nix 0--experimental-features 'nix-command flakes' --accept-flake-config)
logFormate=(--log-format bar-with-logs)

helpMessage() {

}

main(){
    case $1 in

}