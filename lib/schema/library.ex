defmodule Examen.Library do
  use Ecto.Schema

  schema "library" do
    field :category, :string
    has_many :books, Examen.Book
  end


end
