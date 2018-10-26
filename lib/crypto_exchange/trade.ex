defmodule CryptoExchange.Trade do
  @moduledoc """
  Data structure representing a market trade
  """

  alias CryptoExchange.Order

  @type t :: %__MODULE__{
    order: Order.t,
    type: String.t,
    date: non_neg_integer
  }

  defstruct [
    :order,
    :type,
    :date
  ]
end
