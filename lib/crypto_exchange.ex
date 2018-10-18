defmodule CryptoExchange do
  @moduledoc """
  A common module for cryptocurrency exchanges
  """

  alias CryptoExchange.{Ticker, Pair, Order}

  @callback get_all_tickers() :: %{required(Pair.t) => Ticker.t}
  @callback get_ticker(Pair.t) :: Ticker.t
  @callback get_order_book(Pair.t) :: Order.Book.t

end
