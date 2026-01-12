set -e

if [ -z "$__DEVBOX_SKIP_INIT_HOOK_c9f5903a3797c574ad34fc30e2c881018728fc1b74d1a1e2b7f0c0b2d732de86" ]; then
    . "/mnt/c/Users/Projects/github actions/.devbox/gen/scripts/.hooks.sh"
fi

pnpm run test
