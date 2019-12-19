defmodule SurfaceDemoWeb.DemoLive do
  use Surface.LiveView

  def render(assigns) do
    ~H"""
    <div>
      <Alert>Hello World</Alert>
    </div>
    """
  end

  def mount(_session, socket) do
    {:ok, socket}
  end
end