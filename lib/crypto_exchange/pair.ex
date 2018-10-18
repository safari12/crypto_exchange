defmodule CryptoExchange.Pair do
  @moduledoc """
  Data structure representing a market pair
  """

  @type t :: %__MODULE__{
    base: String.t,
    quote: String.t
  }

  defstruct [
    :base,
    :quote
  ]

end
