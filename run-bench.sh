# Remove global cache (uncomment to measure performance with cache)
rm -rf ~/.bun/install/cache
rm -rf ~/.cache/deno/npm
npm cache clean --force
yarn cache clean --force
pnpm store prune
rm -rf ~/.pnpm-store

commands=(
  "bun i"
  "deno i"
  "yarn"
  "npm i"
  "pnpm i"
)

export DENO_FUTURE=1

for command in "${commands[@]}"
do
  echo "Benchmarking $command"
  mkdir testbed
  cp -R fixture/* testbed
  cd testbed
  time $command;
  cd ..
  rm -rf testbed
done
