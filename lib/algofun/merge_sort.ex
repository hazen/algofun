defmodule Algofun.MergeSort do
  @spec sort(list()) :: list()
  def sort([]), do: []

  def sort([h]), do: [h]

  def sort(input_list) do
    {left, right} = split_list(input_list)
    merge_lists(sort(left), sort(right), [])
  end

  defp split_list(input) do
    Enum.split(input, div(length(input), 2))
  end

  defp merge_lists([], right, acc), do: acc ++ right

  defp merge_lists(left, [], acc), do: acc ++ left

  defp merge_lists([lh | ltail], [rh | _] = right, acc) when lh < rh do
    merge_lists(ltail, right, acc ++ [lh])
  end

  defp merge_lists(left, [rh | rtail], acc) do
    merge_lists(left, rtail, acc ++ [rh])
  end
end
