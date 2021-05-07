defmodule IslandsEngine.Coordinate do
  alias __MODULE__

  @enforce_keys [:row, :col]
  defstruct [:row, :col]

  @type t(row, col) :: %Coordinate{row: row, col: col}

  @board_range 1..10

  @doc """
  Returns a new instance of a Coordinate struct, both `row` and `col`
  values are required. Values must be between 1 and 10.
  """
  @spec new(integer, integer) :: {:ok, Coordinate.t(integer, integer)} | tuple()
  def new(row, col) when row in @board_range and col in @board_range do
    {:ok, %Coordinate{row: row, col: col}}
  end

  def new(_row, _col), do: {:error, :invalid_coordinate}
end
