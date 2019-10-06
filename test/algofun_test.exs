defmodule AlgofunTest do
  use ExUnit.Case
  alias Algofun.{MergeSort, QuickSort, InsertionSort, HeapSort}

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

  test "Heap Sort", %{test_list: test_list} do
    assert HeapSort.sort(test_list) == Enum.sort(test_list)
  end

  test "Insertion Sort", %{test_list: test_list} do
    assert InsertionSort.sort(test_list) == Enum.sort(test_list)
  end
end
