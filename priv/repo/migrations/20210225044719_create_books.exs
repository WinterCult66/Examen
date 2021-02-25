defmodule Examen.Repo.Migrations.CreateBooks do
  use Ecto.Migration

  def change do
    create table(:books) do
      add :name, :string
      add :autor_id, references(:autors)
      add :library_id, references(:library)
    end
  end
end
