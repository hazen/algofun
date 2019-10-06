defmodule Algofun.InsertionSort do
  @spec sort(list()) :: list()
  def sort([]), do: []

  def sort([h]), do: [h]

  def sort(list), do: sorter(list, [])

  def sorter([], sorted), do: sorted

  def sorter([h | t], sorted) do
    sorter(t, insert(h, sorted))
  end

  defp insert(elem, []), do: [elem]
  defp insert(elem, [s | _] = sorted) when elem < s, do: [elem | sorted]
  defp insert(elem, [s | sorted]), do: [s | insert(elem, sorted)]
end
