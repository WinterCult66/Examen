defmodule Examen.ExamenTest do
  use ExUnit.Case
  use Examen.DataCase
  alias Examen

  describe "#get_author" do
    setup do
      autor = insert(:autor)
      {:ok, autor: autor}
    end

    test "list_all_authors", %{
      autor: autor
    } do
        assert true
    end
  end
end






 # test "create_author /1" do
 #   map = %{name: "kevin"}
 #   author = Examen.create_author(map)
 #   assert author != nil
 # end
#
 # test "create_book /1" do
 #   map = %{name: "kevin"}
 #   author = Examen.create_author(map)
 #   assert author != nil
 # end
#
 # test "list_all_authors /0" do
 #  result=  Examen.list_all_authors()
 #  assert true
 # end
