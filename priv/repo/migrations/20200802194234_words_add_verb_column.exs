defmodule GermanWords.Repo.Migrations.WordsAddVerbColumn do
  use Ecto.Migration

  def change do
    alter table("words") do
      add :verb, :boolean
    end
  end
end
