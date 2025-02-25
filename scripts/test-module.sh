#!/usr/bin/env bash

set -eo pipefail

script_dir="$(dirname "$0")"

args=("$@")

# If the command is used like `yarn test plugin`, set the --rootDir option to the `plugin` directory
extra_module_build_types=("plugin" "cli" "utils" "scripts")
for i in "${extra_module_build_types[@]}"
do
  if [ "$1" == "$i" ]; then
    args=()
    args+=("--rootDir")
    args+=("$i")

    if [[ -f "$i/jest.config.js" ]]; then
      args+=("--config")
      args+=("$i/jest.config.js")
    else
      args+=("--config")
      args+=("$(node --print "require.resolve('expo-module-scripts/jest-preset-$i.js')")")
    fi

    # Push the rest of the arguments minus the `plugin` arg
    args+=("${@:2}")
  fi
done

if [[ -t 1 && (-z "$CI" && -z "$EXPO_NONINTERACTIVE" && -z "$TURBO_HASH") ]]; then
  args+=("--watch")
fi

"$script_dir/../node_modules/expo-module-scripts/bin/expo-module-jest" "${args[@]}"
