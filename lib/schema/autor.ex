defmodule Examen.Autor do
  use Ecto.Schema
  import Ecto.Changeset

  schema "autors" do
    field :name, :string
    has_many :books, Examen.Book
    # has_one :distributor, Examen.Distributor
  end

  def changeset(autor, attrs) do
    autor
    |> cast(attrs, [:name])
    |> validate_required([:name])
  end
end
