defmodule GermanWords.Repo.Migrations.WordsAddColorColumn do
  use Ecto.Migration

  def change do
    alter table("words") do
      add :color, :boolean
    end
  end
end
