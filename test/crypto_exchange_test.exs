defmodule CryptoExchangeTest do
  use ExUnit.Case
  doctest CryptoExchange

  test "greets the world" do
    assert CryptoExchange.hello() == :world
  end
end
