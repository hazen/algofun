defmodule Algofun.QuickSort do
  @spec sort(list()) :: list()
  def sort([]), do: []
  def sort([h]), do: [h]

  def sort(input_list) do
    {left, right, pivot} = partition(input_list)
    sort(left) ++ [pivot] ++ sort(right)
  end

  defp partition(input) do
    {remainder, [pivot]} = Enum.split(input, -1)

    remainder
    |> Enum.reduce({[], [], pivot}, fn
      val, {less, more, pivot} when val < pivot ->
        {less ++ [val], more, pivot}

      val, {less, more, pivot} ->
        {less, more ++ [val], pivot}
    end)
  end
end
