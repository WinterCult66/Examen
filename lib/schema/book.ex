defmodule Examen.Book do
  use Ecto.Schema
  import Ecto.Changeset
  schema "books" do
    field :name, :string
    belongs_to :autor, Examen.Autor
  end

  def changeset(book, attrs) do
    book
    |> cast(attrs, [:name,:autor_id])
    |> validate_required([:name,:autor_id])
end

end
