FROM elixir:1.12.2-alpine

WORKDIR /app

RUN mix do local.hex --force, local.rebar --force

COPY . .

CMD ["iex","-S","mix","phx.server"]

