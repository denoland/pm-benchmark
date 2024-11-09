# pm-benchmark

```
$ uname -a
Linux divy 6.10.6-arch1-1 #1 SMP PREEMPT_DYNAMIC Mon, 19 Aug 2024 17:02:39 +0000 x86_64 GNU/Linux
```

| Runtime | Version |
| ------- | ------- |
| Node.js | 22.8.0  |
| Deno    | 2.0.5   |
| Bun     | 1.1.27  |
| Npm     | 10.7.0  |
| Yarn    | 1.22.22 |
| Pnpm    | 9.1.1   |

## Benchmark

```
./run-bench.sh
```

> Warning: Make sure you have a stable internet connection or you can also use a [cached proxy](https://github.com/dsherret/bench-registry) service to avoid network latency affecting the results.

Run the same script with the cache enabled (comment the first few lines that removes cache) to measure performance with cache.

## Results

![](https://littledivy.com/assets/pm-bench.png)

| Runtime | Uncached | Cached |
| ------- | -------  | ------ |
Deno|	27.332s	|0.869s
npm	|32.112s|	9.034s
yarn	|25.694s|	8.955s
pnpm	|20.525s|	7.645s
Bun	|30.395s	|1.219s

