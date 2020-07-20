defmodule GermanWords.Repo.Migrations.CreateWords do
  use Ecto.Migration

  def change do
    create table(:words) do
      add :word, :string
      add :gender, :string
      add :translation, :string

      timestamps()
    end
  end
end
