defmodule Examen.Autor do
  use Ecto.Schema
  import Ecto.Changeset

  schema "autors" do
    field :name, :string
    has_many :books, Examen.Book
    # has_one :distributor, Examen.Distributor
  end

  def changeset(autor, attrs) do
    IO.puts("llego")
    autor
    |> cast(attrs, [:name])
    |> validate_required([:name])
    |> validate_not_nil([:name, :name])
  end

  def validate_not_nil(changeset, fields) do
    Enum.reduce(fields, changeset, fn field, changeset ->
      if get_field(changeset, field) == nil do
        add_error(changeset, field, "nil")
      else
        changeset
      end
    end)
  end
end
