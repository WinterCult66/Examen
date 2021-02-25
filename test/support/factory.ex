defmodule Examen.Factory do
  use ExMachina.Ecto, repo: Examen.Repo

  # use ExMachina

  def library_factory do
    %Examen.Library{
      category: "Ciencia Ficcion"
    }
  end

  def autor_factory do
    %Examen.Autor{
      name: sequence(:name, &"J. R. R. Tolkien #{&1}" )
    }
  end

  def book_factory do
    %Examen.Book{
      name: sequence(:name, &"el senor de los anillos #{&1}" ),
      autor_id: 0
    }
  end


end
