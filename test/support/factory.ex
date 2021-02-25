defmodule Examen.Factory do

  use ExMachina.Ecto, repo: Examen.Repo

  #use ExMachina

  def autor_factory do
    %Examen.Autor{
      name: "J. R. R. Tolkien",
    }
  end

  def book_factory do
    %Examen.Book{
      name: "el senor de los anillos",
      autor_id: 1
    }
  end

end
