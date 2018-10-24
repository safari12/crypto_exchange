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

  @spec from_string(String.t, String.t) :: t
  def from_string(string, delimiter \\ "-") do
    quotes = string
    |> String.split(delimiter)

    %__MODULE__{
      base: List.first(quotes),
      quote: List.last(quotes)
    }
  end

end
