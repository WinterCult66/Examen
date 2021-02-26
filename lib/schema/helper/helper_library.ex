defmodule Examen.HelperLibrary do
  import Ecto.Query, warn: false
  alias Examen.Repo

  alias Examen.Library

  def list_library do
    Repo.all(Library)
  end

  def get_library!(id), do: Repo.get!(Library, id)

  def create_library(attrs \\ %{}) do
    %Library{}
    |> Library.changeset(attrs)
    |> Repo.insert()
  end

  def update_library(%Library{} = library, attrs) do
    library
    |> Library.changeset(attrs)
    |> Repo.update()
  end

  def delete_library(%Library{} = library) do
    Repo.delete(library)
  end

  def change_library(%Library{} = library) do
    Library.changeset(library, %{})
  end
end
