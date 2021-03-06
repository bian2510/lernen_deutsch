defmodule GermanWordsWeb.WordController do
  use GermanWordsWeb, :controller

  alias GermanWords.Words
  alias GermanWords.Words.Word

  def index(conn, _params) do
    words = Words.list_words()

    render(conn, "index.html", words: words)
  end

  def new(conn, _params) do
    changeset = Words.change_word(%Word{})
    render(conn, "new.html", changeset: changeset)
  end

  def create(conn, %{"word" => word_params}) do
    params =
      Enum.map(word_params, fn tuple ->
        {tuple |> elem(0), tuple |> elem(1) |> String.downcase()}
      end)
      |> Enum.into(%{})

    case Words.create_word(params) do
      {:ok, _word} ->
        conn
        |> put_flash(:info, "Word created successfully.")
        |> redirect(to: Routes.word_path(conn, :index))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "new.html", changeset: changeset)
    end
  end

  def show(conn, %{"id" => id}) do
    word = Words.get_word!(id)
    render(conn, "show.html", word: word)
  end

  def edit(conn, %{"id" => id}) do
    word = Words.get_word!(id)
    changeset = Words.change_word(word)
    render(conn, "edit.html", word: word, changeset: changeset)
  end

  def update(conn, %{"id" => id, "word" => word_params}) do
    word = Words.get_word!(id)

    case Words.update_word(word, word_params) do
      {:ok, word} ->
        conn
        |> put_flash(:info, "Word updated successfully.")
        |> redirect(to: Routes.word_path(conn, :show, word))

      {:error, %Ecto.Changeset{} = changeset} ->
        render(conn, "edit.html", word: word, changeset: changeset)
    end
  end

  def delete(conn, %{"id" => id}) do
    word = Words.get_word!(id)
    {:ok, _word} = Words.delete_word(word)

    conn
    |> put_flash(:info, "Word deleted successfully.")
    |> redirect(to: Routes.word_path(conn, :index))
  end

  def sustantives(conn, _params) do
    sustantives = Words.list_sustantives()
    render(conn, "sustantive.html", words: sustantives)
  end

  def numbers(conn, _params) do
    numbers = Words.list_numbers()
    render(conn, "number.html", words: numbers)
  end

  def colors(conn, _params) do
    colors = Words.list_colors()
    render(conn, "color.html", words: colors)
  end

  def pronouns(conn, _params) do
    pronouns = Words.list_pronouns()
    render(conn, "pronoun.html", words: pronouns)
  end

  def verbs(conn, _params) do
    verbs = Words.list_verbs()
    render(conn, "verb.html", words: verbs)
  end
end
