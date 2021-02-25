defmodule Examen.Library do
  use Ecto.Schema
  import Ecto.Changeset

  schema "library" do
    field :category, :string
    has_many :books, Examen.Book
  end


  def changeset(book, attrs) do
    book
    |> cast(attrs, [:name, :autor_id])
    |> validate_required([:name, :autor_id])
  end

end
