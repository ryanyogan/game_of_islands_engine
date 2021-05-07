defmodule IslandsEngine.Guesses do
  alias __MODULE__

  @enforce_keys [:hits, :misses]
  defstruct [:hits, :misses]

  @type t(hits, misses) :: %Guesses{hits: hits, misses: misses}

  @spec new :: %Guesses{hits: MapSet.t(any), misses: MapSet.t(any)}
  def new do
    %Guesses{hits: MapSet.new(), misses: MapSet.new()}
  end
end
