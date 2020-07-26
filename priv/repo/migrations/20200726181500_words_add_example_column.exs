defmodule GermanWords.Repo.Migrations.WordsAddExampleColumn do
  use Ecto.Migration

  def change do
    alter table("words") do
      add :example, :string
    end
  end
end
