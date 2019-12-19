defmodule SurfaceDemo.Repo do
  use Ecto.Repo,
    otp_app: :surface_demo,
    adapter: Ecto.Adapters.MyXQL
end
