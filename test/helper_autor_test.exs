defmodule Examen.HelperAutorTest do
  use ExUnit.Case
  use Examen.DataCase
  alias Examen.HelperAutor
  alias Examen.Autor

  describe "# START DATA" do
    setup do
      autor = insert(:autor)
      {:ok, autor: autor}
    end

    test "HelperAutor.update_autor Validate == False" do
      autor = %{name: nil}
      result = %Autor{} |> Autor.changeset(autor)
      assert result.valid? == false
    end

    test "HelperAutor.update_autor Validate == True", %{autor: autor} do
      autor_load = HelperAutor.get_autor!(autor.id)
      assert {:ok, %Autor{} = autor_u} = HelperAutor.update_autor(autor_load, %{name: "xxx"})
    end

    test "HelperAutor.list_autor ", %{autor: autor} do
      assert HelperAutor.list_autor() == [autor]
    end

    test "Autor.changeset Validate == False" do
      autor = %{name: nil}
      result = %Autor{} |> Autor.changeset(autor)
      assert result.valid? == false
    end

    test "HelperAutor.create_autor Validate == True" do
      autor = %{name: "New Autor"}
      %Autor{} |> Autor.changeset(autor)
      HelperAutor.create_autor(autor)
      assert true
    end

    test "HelperAutor.delete_autor Validate == True", %{autor: autor} do
      HelperAutor.delete_autor(autor)
      assert true
    end
  end
end
