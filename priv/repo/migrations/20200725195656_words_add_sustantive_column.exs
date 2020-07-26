defmodule GermanWords.Repo.Migrations.WordsAddSustantiveColumn do
  use Ecto.Migration

  def change do
    alter table("words") do
      add :sustantive, :boolean
    end
  end
end
