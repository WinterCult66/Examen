defmodule Examen.HelperLibraryTest do
  use ExUnit.Case
  use Examen.DataCase
  alias Examen.HelperLibrary
  alias Examen.Library


  describe "# START DATA" do
    setup do
      library = insert(:library)
      {:ok, library: library}
    end

    test "HelperLibrary.update_library Validate == False" do
      library = %{category: nil}
      result  = %Library{} |> Library.changeset(library)
      assert result.valid? == false
    end

    test "HelperLibrary.update_library Validate == True", %{library: library} do
      library_load = HelperLibrary.get_library!(library.id)
      assert {:ok, %Library{} = library_u} =  HelperLibrary.update_library(library_load, %{category: "xxx"})
    end

    test "HelperLibrary.list_library ", %{library: library} do
      assert HelperLibrary.list_library() == [library]
    end

  end


  test "Library.changeset Validate == False" do
    library = %{description: nil}
    result  = %Library{} |> Library.changeset(library)
    assert result.valid? == false
  end

  test "HelperLibrary.create_library Validate == True" do
    library = %{name: "New Library"}
    %Library{} |> Library.changeset(library)
    HelperLibrary.create_library(library)
    assert true
  end



end
