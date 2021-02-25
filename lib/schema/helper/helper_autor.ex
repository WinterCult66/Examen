defmodule Examen.HelperAutor do
  import Ecto.Query, warn: false
  alias Examen.Repo

  alias Examen.Autor

  def list_autor do
    Repo.all(Autor)
  end

  def get_autor!(id), do: Repo.get!(Autor, id)

  def create_autor(attrs \\ %{}) do
    %Autor{}
    |> Autor.changeset(attrs)
    |> Repo.insert()
  end

  def update_autor(%Autor{} = autor, attrs) do
    autor
    |> Autor.changeset(attrs)
    |> Repo.update()
  end

  def delete_autor(%Autor{} = autor) do
    Repo.delete(autor)
  end

  def change_autor(%Autor{} = autor) do
    Autor.changeset(autor, %{})
  end
end
