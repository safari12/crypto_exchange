defmodule CryptoExchange.API.Config do
  defmacro __using__(opts) do
    quote do
      def base_url do
        Application.fetch_env!(exchange_config_key(), :api)[:base_url]
      end

      def token do
        Application.fetch_env!(exchange_config_key(), :api)[:token]
      end

      defp exchange_config_key do
        unquote(opts)[:exchange]
      end
    end
  end
end
