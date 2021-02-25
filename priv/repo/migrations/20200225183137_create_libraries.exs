defmodule Examen.Repo.Migrations.CreateLibraries do
  use Ecto.Migration



    def change do
      create table(:library) do
        add :category, :string
      end
    end


end
