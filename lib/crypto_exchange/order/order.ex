defmodule CryptoExchange.Order do
  @moduledoc """
  Data structure presenting a buy or sell order for a market
  """

  alias CryptoExchange.Pair

  @type id :: String.t
  @type status :: {:ok, id} | {:error, Map.t}
  @type type :: String.t

  @type t :: %__MODULE__{
    id: id | nil,
    type: type,
    quantity: float,
    price: float,
    pair: Pair.t,
    date: non_neg_integer | nil
  }

  defstruct [
    :id,
    :type,
    :quantity,
    :price,
    :pair,
    :date
  ]

  def total(%__MODULE__{quantity: q, price: p}), do: q * p

end
