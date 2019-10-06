defmodule AlgofunTest do
  use ExUnit.Case
  alias Algofun.{MergeSort, QuickSort}

  setup do
    test_list =
      1..10
      |> Enum.map(fn _ -> Enum.random(-100..100) end)

    %{test_list: test_list}
  end

  test "Merge Sort", %{test_list: test_list} do
    assert MergeSort.sort(test_list) == Enum.sort(test_list)
  end

  test "Quick Sort", %{test_list: test_list} do
    assert QuickSort.sort(test_list) == Enum.sort(test_list)
  end
end
