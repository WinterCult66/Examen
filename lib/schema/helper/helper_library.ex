defmodule Examen.HelperAutor do
  import Ecto.Query, warn: false
  alias Examen.Repo

  alias Examen.Library

  def list_autor do
    Repo.all(Library)
  end

  def get_autor!(id), do: Repo.get!(Library, id)

  def create_autor(attrs \\ %{}) do
    %Library{}
    |> Library.changeset(attrs)
    |> Repo.insert()
  end

  def update_autor(%Library{} = library, attrs) do
    library
    |> Library.changeset(attrs)
    |> Repo.update()
  end

  def delete_autor(%Library{} = library) do
    Repo.delete(library)
  end

  def change_autor(%Library{} = library) do
    Library.changeset(library, %{})
  end
end
