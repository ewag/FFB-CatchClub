using ruby dockerfile

```bash
export JEKYLL_VERSION=3.8
```

```bash
docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  -it jekyll/builder:$JEKYLL_VERSION \
  jekyll build

```


```bash
docker run --rm \
  --volume="$PWD:/srv/jekyll:Z" \
  --publish \[::1\]:4000:4000 \
  jekyll/jekyll \
  jekyll serve
```