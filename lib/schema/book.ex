defmodule Examen.Book do
  use Ecto.Schema

  schema "books" do
    field :name, :string
    belongs_to :autor, Examen.Autor
  end
end
