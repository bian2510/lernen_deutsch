defmodule GermanWords.Repo.Migrations.WordsAddNumberColumn do
  use Ecto.Migration

  def change do
    alter table("words") do
      add :number, :boolean
    end
  end
end
