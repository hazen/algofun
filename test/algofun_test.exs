defmodule AlgofunTest do
  use ExUnit.Case
  alias Algofun.{MergeSort, QuickSort, InsertionSort, HeapSort, BinarySearch}

  setup do
    test_list =
      -100..100
      |> Enum.shuffle()

    %{test_list: test_list}
  end

  test "Merge Sort", %{test_list: test_list} do
    assert MergeSort.sort(test_list) == Enum.sort(test_list)
  end

  test "Quick Sort", %{test_list: test_list} do
    assert QuickSort.sort(test_list) == Enum.sort(test_list)
  end

  @tag :skip
  test "Heap Sort", %{test_list: test_list} do
    assert HeapSort.sort(test_list) == Enum.sort(test_list)
  end

  test "Insertion Sort", %{test_list: test_list} do
    assert InsertionSort.sort(test_list) == Enum.sort(test_list)
  end

  test "Binary Search", %{test_list: test_list} do
    input_list = Enum.sort(test_list)
    mid = div(length(test_list), 2)
    array = :array.from_list(input_list)
    assert BinarySearch.search(input_list, hd(input_list)) == 0
    assert BinarySearch.search(input_list, List.last(input_list)) == length(input_list) - 1
    assert BinarySearch.search(input_list, :array.get(mid + 1, array)) == mid + 1
    assert BinarySearch.search(input_list, -200) == :not_found
    assert BinarySearch.search(input_list, 200) == :not_found
    assert BinarySearch.search(input_list, 99.5) == :not_found
  end
end
