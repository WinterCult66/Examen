defmodule Examen.ExamenTest do
  use ExUnit.Case
  use Examen.DataCase
  # alias Examen.HelperAutor
  alias Examen.HelperBook
  alias Examen.HelperLibrary

  describe "#Test to validate the join with 6 data when is Success" do
    setup do

      library2 = insert(:library, category: "other")

      autor = insert(:autor)
      library = insert(:library)
      book = insert(:book, autor_id: autor.id, library_id: library.id)

      autor2 = insert(:autor)
      book2 = insert(:book, autor_id: autor2.id, library_id: library.id)

      autor3 = insert(:autor)
      book3 = insert(:book, autor_id: autor3.id, library_id: library.id)

      autor4 = insert(:autor)
      book4 = insert(:book, autor_id: autor4.id, library_id: library.id)

      autor5 = insert(:autor)
      book5 = insert(:book, autor_id: autor5.id, library_id: library.id)

      {:ok,
       [
         autor: autor,
         book: book,
         autor: autor2,
         book: book2,
         autor: autor3,
         book: book3,
         autor: autor4,
         book: book4,
         autor: autor5,
         book: book5,
         library: library,
         library2: library2
       ]}
    end

   test "#Validate the 5 rows in Join all tables Where is Success", %{ autor: _, book: _, library: _} do
     joins = HelperBook.get_books_with_author_2()
     assert length(joins) == 5
   end

   test "#Validate the 4 rows in Join all tables Where is False" do
    joins = HelperBook.get_books_with_author_2()
    assert length(joins) == 0
  end

  test "# Delete the library due the  hasn't relation ==> True", %{library2: library2} do
    assert HelperLibrary.delete_library(library2)
  end

  test "# Delete the library due the library has relation ==> False", %{library: library} do
    assert HelperLibrary.delete_library(library)
  end




 end


#
# describe "insert author" do
#   setup do
#     autor = insert(:autor, name: nil)
#     {:ok, autor: autor}
#   end
#
#   test "#get data 2", %{
#     autor: autor
#   } do
#     IO.inspect(autor, label: ">>>>>>>>>>>>>>")
#     assert true
#   end
# end


end
