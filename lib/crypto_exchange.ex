defmodule CryptoExchange do
  @moduledoc """
  A common module for cryptocurrency exchanges
  """

  alias CryptoExchange.{Ticker, Pair, Order, Trade}

  @callback get_all_tickers() :: %{required(Pair.t) => Ticker.t}
  @callback get_ticker(Pair.t) :: Ticker.t
  @callback get_order_book(Pair.t) :: Order.Book.t
  @callback get_trade_history(Pair.t) :: list(Trade.t)
  @callback submit_buy_order(Order.t) :: Order.status
  @callback submit_sell_order(Order.t) :: Order.status
  @callback cancel_order(Order.id) :: Order.status
  @callback get_open_orders(Pair.t) :: list(Order.t)

end
