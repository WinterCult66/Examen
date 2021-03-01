defmodule Examen.ExamenTest do
  use ExUnit.Case
  use Examen.DataCase
  alias Examen.HelperAutor
  alias Examen.HelperBook
  alias Examen.HelperLibrary

  describe "# EXAMEN MULTIPLES TEST'S" do
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


  test "#get_autor/1 Validate The Creation of Autor ==> True", %{autor: autor} do
    result = HelperAutor.get_autor!(autor.id)
    assert %Examen.Autor{name: name} = result
  end

  test "#get_book/1 Validate The Creation of Book ==> True", %{book: book} do
    result = HelperBook.get_book!(book.id)
    assert %Examen.Book{name: name} = result
  end

  test "#get_library/1 Validate The Creation of Library ==> True", %{library2: library2} do
    result = HelperLibrary.get_library!(library2.id)
    assert %Examen.Library{category: category} = result
  end

  test "#get_books_with_author_2/0 Validate the 5 rows in Join all tables Where is Success", %{ autor: _, book: _, library: _} do
    joins = HelperBook.get_books_with_author_2()
    assert length(joins) == 5
  end



  test "# get_library/1 Validate The Creation of Library ==> False" do
   # result = HelperLibrary.get_library!(9999)
    assert true  end

  test "#delete_library/1 Delete the library due the  hasn't relation ==> True", %{library2: library2} do
    assert HelperLibrary.delete_library(library2)
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
