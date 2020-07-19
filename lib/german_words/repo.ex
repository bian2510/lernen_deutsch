defmodule GermanWords.Repo do
  use Ecto.Repo,
    otp_app: :german_words,
    adapter: Ecto.Adapters.Postgres
end
