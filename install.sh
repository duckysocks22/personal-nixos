#!/usr/bin/env bash

set -e

dir="$dirname "$(readlink -f "$0")")"
flakePath="${flakePath:-"$dir"}"

nixCommand=(nix --experimental-features 'nix-command flakes' --accept-flake-config)
logFormat=(--log-format bar-with-logs)

helpMessage() {
  echo -e ":3"
}

main(){
    case $1 in
        --boot)
        sudo nixos-rebuild boot --fast --flake "$flakePath/.#$2" "${logFormat[@]}" "${@:3}"
        ;;
        --build)
        if [ "$#" -lt 2]; then
            output="$(hostname)"
        else
            output="$2"
        fi
   
        if grep -q "puppy-nix" <<< "$output"; then
            "${nixCommand[@]}" build "${logFormat[@]}" "$flakePath/.#nixosConfigurations.$output.config.system.build.toplevel" "${@:3}"
        elif grep -q "protogen-nix" <<< "$output"; then
            "${nixCommand[@]}" build "${logFormat[@]}" "$flakePath/.#nixosConfigurations.$output.config.system.build.toplevel" "${@:3}"
        else
        "${nixCommand[@]}" build "${logFormat[@]}" "$flakePath/.#nixosConfigurations.$output.config.system.build.toplevel" "${@:3}"
        fi
        ;;

        --help|-h)
            helpMessage
        ;;

        --switch|*)
            sudo nixos-rebuild switch --fast --flake "$flakePath/.#$2" "${logFormat[@]}" "${@:3}"
        ;;
    esac
}
main "$@"