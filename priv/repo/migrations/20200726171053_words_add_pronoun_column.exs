defmodule GermanWords.Repo.Migrations.WordsAddPronounColumn do
  use Ecto.Migration

  def change do
    alter table("words") do
      add :pronoun, :boolean
    end
  end
end
