defmodule SurfaceDemoWeb.DemoLive do
  use Surface.LiveView

  def render(assigns) do
    ~H"""
    <div>
      <Button>Primary</Button>
      <Button variant="secondary">Secondary</Button>
      <Button variant="success">Success</Button>
      <Button variant="danger">Danger</Button>
      <Button variant="warning">Warning</Button>
      <Button variant="info">Info</Button>
      <Button variant="light">Light</Button>
      <Button variant="dark">Dark</Button>
      <Button variant="link">Link</Button>
      <Button size="sm">Small</Button>
      <Button size="lg">Large</Button>

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

      <Navbar>
        <NavItem url="#" title="Home" active=true />
        <NavItem url="#" title="Features" />
        <NavItem url="#" title="Pricing" />
      </Navbar>
    </div>
    """
  end

  def mount(_session, socket) do
    {:ok, socket}
  end
end