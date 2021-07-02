defmodule HumiCafe.Repo do
  use Ecto.Repo,
    otp_app: :humi_cafe,
    adapter: Ecto.Adapters.Postgres
end
