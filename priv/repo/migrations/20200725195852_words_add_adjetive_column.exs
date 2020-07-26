defmodule GermanWords.Repo.Migrations.WordsAddAdjetiveColumn do
  use Ecto.Migration

  def change do
    alter table("words") do
      add :adjetive, :boolean
    end
  end
end
