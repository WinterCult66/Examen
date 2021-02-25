defmodule Examenx do

 import Examen.HelperAutor

 def list_all_authors() do
  list_autor()
 end

 def create_author() do
  map = %{name: "ttt"}
  create_autor(map)
 end






end
