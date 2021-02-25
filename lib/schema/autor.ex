defmodule Examen.Autor do
  use Ecto.Schema

  schema "autors" do
    field :name, :string
    has_many :books, Examen.Book
   # has_one :distributor, Examen.Distributor
  end
end
