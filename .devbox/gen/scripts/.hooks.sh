test -z $DEVBOX_COREPACK_ENABLED || corepack enable --install-directory "/mnt/c/Users/Projects/github actions/.devbox/virtenv/nodejs/corepack-bin/"
test -z $DEVBOX_COREPACK_ENABLED || export PATH="/mnt/c/Users/Projects/github actions/.devbox/virtenv/nodejs/corepack-bin/:$PATH"
echo 'Welcome to your Node.js + Typescript dev environment!'
echo 'Node version:' && node --version
echo 'PNPM version:' && pnpm --version