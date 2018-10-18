defmodule CryptoExchange.Order.Book do
  @moduledoc """
  Data structure that holds open bid (buy) and ask (sell) orders
  """

  alias CryptoExchange.Order

  @type t :: %__MODULE__{
    bids: list(Order.t),
    asks: list(Order.t)
  }

  defstruct [
    :bids,
    :asks
  ]

end
