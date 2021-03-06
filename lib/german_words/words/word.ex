defmodule GermanWords.Words.Word do
  use Ecto.Schema
  import Ecto.Changeset

  schema "words" do
    field :gender, :string
    field :translation, :string
    field :word, :string
    field :sustantive, :boolean
    field :adjetive, :boolean
    field :number, :boolean
    field :color, :boolean
    field :pronoun, :boolean
    field :example, :string
    field :verb, :boolean

    timestamps()
  end

  @doc false
  def changeset(word, attrs) do
    word
    |> cast(attrs, [
      :word,
      :gender,
      :translation,
      :sustantive,
      :adjetive,
      :number,
      :color,
      :pronoun,
      :verb,
      :example
    ])
    |> validate_required([:word, :translation])
  end
end
