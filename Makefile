LOGDIR   := _scratch/logs
CACHEDIR := _scratch/cache

.PHONY: serve
serve:
	RUST_LOG=wagi=trace wagi -c modules.toml --log-dir ${LOGDIR} --module-cache ${CACHEDIR}

.PHONY: serve-spin
serve-spin:
	RUST_LOG=spin_engine=info,spin_http,wact=info,wagi=debug spin up --app spin.toml

.PHONY: run-wasmtime
run-wasmtime:
	wasmtime ruby.wasm --mapdir /::./ -- lib/env.rb
