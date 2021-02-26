defmodule Examen.Library do
  use Ecto.Schema
  import Ecto.Changeset

  schema "library" do
    field :category, :string
    has_many :books, Examen.Book
  end


  def changeset(library, attrs) do
    library
    |> cast(attrs, [:category])
    |> validate_required([:category])
  end

end
