defmodule SurfaceDemoWeb.DemoLive do
  use Surface.LiveView

  def render(assigns) do
    ~H"""
    <div class="row mb-4">
      <div class="col">
        <h2>Modal component</h2>
        <Modal title="Modal title" id="modal">
          <p>Modal body text goes here.</p>
        </Modal>
        <Button click="show_dialog">Launch modal</Button>
      </div>
    </div>
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

    <div class="row mb-4">
      <div class="col">
        <h2>Button component</h2>
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
      </div>
    </div>

    <div class="row mb-4">
      <div class="col">
        <h2>Card component</h2>
        <Card title="Card title">
          Some quick example text to build on the card title and make up the bulk of the card's content.
        </Card>
      </div>
    </div>

    <div class="row mb-4">
      <div class="col">
        <h2>Navbar component</h2>
        <Navbar>
          <NavItem url="#" title="Home" active />
          <NavItem url="#" title="Features" />
          <NavItem url="#" title="Pricing" />
          <NavItem url="#" title="Disabled" disabled />
        </Navbar>
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