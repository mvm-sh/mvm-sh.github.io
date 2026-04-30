# mvm.sh

Website for https://mvm.sh, served through GitHub Pages.

The landing page lives at the repo root (`index.html`, `style.css`).
The playground under `/playground/` is mirrored from
[`mvm-sh/mvm-playground`](https://github.com/mvm-sh/mvm-playground)
which must be checked out as a sibling directory (`../mvm-playground`).

## Build

```sh
make            # build playground in ../mvm-playground and copy web/ into ./playground/
make serve      # http://localhost:8080
make clean      # remove ./playground/
```

`make` requires `go` on `PATH` (the sibling Makefile compiles `main.wasm` for
`GOOS=js GOARCH=wasm`). For local preview without `mvm` installed, any static
server works, e.g. `python3 -m http.server 8080`.

## License

BSD-3-Clause. See [LICENSE](LICENSE).
