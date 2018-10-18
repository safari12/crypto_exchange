defmodule CryptoExchange.Order do
  @moduledoc """
  Data structure presenting a buy or sell order for a market
  """

  alias CryptoExchange.Pair

  @type t :: %__MODULE__{
    pair: Pair.t,
    quantity: float,
    price: float
  }

  defstruct [
    :pair,
    :quantity,
    :price
  ]

end
