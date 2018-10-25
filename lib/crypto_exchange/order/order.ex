defmodule CryptoExchange.Order do
  @moduledoc """
  Data structure presenting a buy or sell order for a market
  """

  @type t :: %__MODULE__{
    quantity: float,
    price: float
  }

  defstruct [
    :quantity,
    :price
  ]

end
