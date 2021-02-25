defmodule Examen.HelperBook do


  import Ecto.Query, warn: false
  alias Examen.Repo
  alias Examen.Autor
  alias Examen.Book

  def list_book do
    Repo.all(Book)
  end


 def get_book!(id), do: Repo.get!(Book, id)


 def create_book(attrs \\ %{}) do
   %Book{}
   |> Book.changeset(attrs)
   |> Repo.insert()
 end

 def update_book(%Book{} = book, attrs) do
   book
   |> Book.changeset(attrs)
   |> Repo.update()
 end


 def delete_book(%Book{} = book) do
   Repo.delete(book)
 end


 def change_book(%Book{} = book) do
   Book.changeset(book, %{})
 end

 def get_books_with_author() do

  query = from b in Book,
          join: a in Autor, on: a.id == b.autor_id
  query = from [b, a] in query,
          select: {b.name, a.name}
  result = Repo.all(query)
  IO.inspect(result)
end

end