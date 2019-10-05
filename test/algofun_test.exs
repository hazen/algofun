defmodule AlgofunTest do
  use ExUnit.Case
  alias Algofun.MergeSort

  test "Merge Sort" do
    test_list =
      1..10
      |> Enum.map(fn _ -> Enum.random(-100..100) end)

    assert MergeSort.sort(test_list) == Enum.sort(test_list)
  end
end
