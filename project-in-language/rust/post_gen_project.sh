#!/bin/sh

cargo init --name=app
cargo add tokio --features macros,rt
cargo add anyhow tracing
cargo add tracing-subscriber --features env-filter
