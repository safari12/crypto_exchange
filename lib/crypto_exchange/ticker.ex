defmodule CryptoExchange.Ticker do
  @moduledoc """
  Data structure representing a market ticker
  """

  @type t :: %__MODULE__{
    last_price: float,
    lowest_ask_price: float,
    highest_bid_price: float,
    percent_change: float,
    volume: float,
    quote_volume: float
  }

  defstruct [
    :last_price,
    :lowest_ask_price,
    :highest_bid_price,
    :percent_change,
    :volume,
    :quote_volume
  ]

end
