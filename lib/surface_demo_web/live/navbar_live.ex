defmodule SurfaceDemoWeb.NavbarLive do
  use Surface.LiveView

  def render(assigns) do
    ~H"""
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
end