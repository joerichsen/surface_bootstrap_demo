defmodule SurfaceDemoWeb.DemoLive do
  use Surface.LiveView

  def render(assigns) do
    ~H"""
    <div>
      <Alert>Primary alert</Alert>
      <Alert variant="secondary">Secondary alert</Alert>
      <Alert variant="success">Success alert</Alert>
      <Alert variant="danger">Danger alert</Alert>
      <Alert variant="warning">Warning alert</Alert>
      <Alert variant="info">Info alert</Alert>
      <Alert variant="light">Light alert</Alert>
      <Alert variant="dark">Dark alert</Alert>
      <Card title="Card title">
        Some quick example text to build on the card title and make up the bulk of the card's content.
      </Card>
    </div>
    """
  end

  def mount(_session, socket) do
    {:ok, socket}
  end
end