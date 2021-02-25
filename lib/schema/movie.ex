defmodule Examen.Movie do
  use Ecto.Schema

  schema "movies" do
    field :title, :string
    field :tagline, :string
    has_many :characters, Examen.Character
    has_one :distributor, Examen.Distributor
  end
end
