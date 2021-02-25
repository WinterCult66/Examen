defmodule Examen.ExamenTest do
  use ExUnit.Case
  use Examen.DataCase
  # alias Examen.HelperAutor
  alias Examen.HelperBook

  describe "#Test to validate the join with 6 data when is Success" do
    setup do
      autor = insert(:autor)
      book = insert(:book, autor_id: autor.id)

      autor2 = insert(:autor)
      book2 = insert(:book, autor_id: autor2.id)

      autor3 = insert(:autor)
      book3 = insert(:book, autor_id: autor3.id)

      autor4 = insert(:autor)
      book4 = insert(:book, autor_id: autor4.id)

      autor5 = insert(:autor)
      book5 = insert(:book, autor_id: autor5.id)

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
         book: book5
       ]}
    end

    test "#get data", %{
      autor: _,
      book: _
    } do
      joins = HelperBook.get_books_with_author()
      assert length(joins) == 6
    end
  end

  describe "insert author" do
    setup do
      autor = insert(:autor, name: nil)
      {:ok, autor: autor}
    end

    test "#get data 2", %{
      autor: autor
    } do
      IO.inspect(autor, label: ">>>>>>>>>>>>>>")
      assert true
    end
  end
end
