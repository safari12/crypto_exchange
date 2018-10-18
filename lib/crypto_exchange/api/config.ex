defmodule CryptoExchange.API.Config do
  defmacro __using__(opts) do
    quote do

      exchange = unquote(opts)[:exchange]

      def base_url() do
        Application.fetch_env!(exchange, :api)[:base_url]
      end

      def token() do
        Application.fetch_env!(exchange, :api)[:token]
      end

    end
  end
end
