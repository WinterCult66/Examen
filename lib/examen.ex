defmodule Examen do
  import Examen.HelperAutor
  import Examen.HelperBook
  import Ecto.Query
  alias Examen.Book
  alias Examen.Autor
  alias Examen.Repo

  def list_all_authors() do
   list_autor()
  end

  def create_author(map) do
   create_autor(map)
  end


  def create_book(name,id) do
    map = %{name: name,autor_id: id}
    create_book(map)
  end

  def join() do

    query = from b in Book,
            join: a in Autor, on: a.id == b.autor_id

    query = from [b, a] in query,
            select: {b.name, a.name}
    result = Repo.all(query)
    IO.inspect(result)
  end



end
