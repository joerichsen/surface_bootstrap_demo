defmodule SurfaceDemoWeb.CardsLive do
  use Surface.LiveView

  def render(assigns) do
    ~H"""
    <div class="row mb-4">
      <div class="col">
        <h2>Card component</h2>
        <Card title="Card title">
          Some quick example text to build on the card title and make up the bulk of the card's content.
        </Card>
      </div>
    </div>
    """
  end

  def mount(_session, socket) do
    {:ok, socket}
  end

  def handle_event("show_dialog", _, socket) do
    Modal.show("modal")
    {:noreply, socket}
  end
end