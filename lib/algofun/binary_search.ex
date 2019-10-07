defmodule Algofun.BinarySearch do
  @spec search(list(), term()) :: term() | :not_found
  def search(input_list, value) when is_list(input_list) do
    array = :array.from_list(input_list)
    mid = div(:array.size(array), 2)
    binary_search(array, value, :array.get(mid, array), 0, mid, :array.size(array) - 1)
  end

  defp binary_search(_, value, mid_val, _, mid, _) when value == mid_val do
    mid
  end

  defp binary_search(_, _, _, left, _, right) when left > right do
    :not_found
  end

  defp binary_search(array, value, mid_val, left, old_mid, _) when value < mid_val do
    mid = div(left + old_mid - 1, 2)
    binary_search(array, value, :array.get(mid, array), left, mid, old_mid - 1)
  end

  defp binary_search(array, value, _, _, old_mid, right) do
    mid = div(right + old_mid + 1, 2)
    binary_search(array, value, :array.get(mid, array), old_mid + 1, mid, right)
  end
end
