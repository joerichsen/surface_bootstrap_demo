defmodule SurfaceDemoWeb.AlertsLive do
  use Surface.LiveView

  def render(assigns) do
    ~H"""
    <div class="row mb-4">
      <div class="col">
        <h2>Alert component</h2>
        <Alert>Primary alert</Alert>
        <Alert variant="secondary">Secondary alert</Alert>
        <Alert variant="success">Success alert</Alert>
        <Alert variant="danger">Danger alert</Alert>
        <Alert variant="warning">Warning alert</Alert>
        <Alert variant="info">Info alert</Alert>
        <Alert variant="light">Light alert</Alert>
        <Alert variant="dark">Dark alert</Alert>
      </div>
    </div>
    """
  end

  def mount(_session, socket) do
    {:ok, socket}
  end
end