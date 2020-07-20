defmodule GermanWords.Words.Word do
  use Ecto.Schema
  import Ecto.Changeset

  schema "words" do
    field :gender, :string
    field :translation, :string
    field :word, :string

    timestamps()
  end

  @doc false
  def changeset(word, attrs) do
    word
    |> cast(attrs, [:word, :gender, :translation])
    |> validate_required([:word, :gender, :translation])
  end
end
