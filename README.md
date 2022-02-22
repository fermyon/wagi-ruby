# Wagi-Ruby

Demo of executing a ruby script in Wagi.

## Building Ruby for wasi

https://github.com/ruby/ruby/tree/master/wasm

## Copy Ruby build

```
$ cp [ruby source dir]/ruby-wasm32-wasi .
```

## Rename the ruby binary

Bindle will only set the media type to 'application/wasm' if the file extension
is '.wasm'.

```
cp ./ruby-wasm32-wasi/usr/local/bin/ruby ./ruby.wasm
```

## Run the example in Wagi

```
$ wagi -c modules.toml
```

## Test the endpoint

Pass the script name as the first argument

```
$ curl 'http://localhost:3000/?env.rb'
```
