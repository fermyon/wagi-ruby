LOGDIR   := _scratch/logs
CACHEDIR := _scratch/cache

.PHONY: serve
serve:
	RUST_LOG=wagi=trace wagi -c modules.toml --log-dir ${LOGDIR} --module-cache ${CACHEDIR}

.PHONY: run-wasmtime
run-wasmtime:
	wasmtime ruby.wasm --mapdir /::./ -- lib/env.rb
