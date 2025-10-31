# pm-benchmark

```
$ uname -a
Linux divy 6.10.6-arch1-1 #1 SMP PREEMPT_DYNAMIC Mon, 19 Aug 2024 17:02:39 +0000 x86_64 GNU/Linux
```

| Runtime | Version |
| ------- | ------- |
| Node.js | 25.1.0  |
| Deno    | 3.0.0   |
| Bun     | 1.3.1   |
| Npm     | 11.6.2  |
| Yarn    | 1.22.22 |
| Pnpm    | 10.20.0 |

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
Deno|	19.828s	|0.752s
npm	|31.646s|	13.513s
yarn	|27.087s|	13.144s
pnpm	|19.282s|	6.942s
Bun	|22.145s	|0.557s

