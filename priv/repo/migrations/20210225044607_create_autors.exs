defmodule Examen.Repo.Migrations.CreateAutors do
  use Ecto.Migration

  def change do
    create table(:autors) do
      add :name, :string
    end
  end
end
