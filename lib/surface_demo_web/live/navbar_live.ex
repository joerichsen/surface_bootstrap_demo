defmodule SurfaceDemoWeb.NavbarLive do
  use Surface.LiveView

  def render(assigns) do
    ~H"""
    <div class="row mb-4">
      <div class="col">
        <h2>Navbar component</h2>
        <h4>Example</h4>
        <Navbar>
          <NavItem url="#" title="Home" active />
          <NavItem url="#" title="Features" />
          <NavItem url="#" title="Pricing" />
          <NavItem url="#" title="Disabled" disabled />
        </Navbar>
      </div>
    </div>
    <div class="row" phx-hook="HighlightCode">
      <div class="col">
        <h4>Code</h4>
        <pre>
          <code>
            &lt;Navbar&gt;
              &lt;NavItem url=&quot;#&quot; title=&quot;Home&quot; active /&gt;
              &lt;NavItem url=&quot;#&quot; title=&quot;Features&quot; /&gt;
              &lt;NavItem url=&quot;#&quot; title=&quot;Pricing&quot; /&gt;
              &lt;NavItem url=&quot;#&quot; title=&quot;Disabled&quot; disabled /&gt;
            &lt;/Navbar&gt;
          </code>
        </pre>
      </div>
    </div>
    <div class="row mb-5">
      <div class="col">
        <h4>Implementation</h4>
        <a href="https://github.com/joerichsen/surface_bootstrap_demo/blob/master/lib/surface_demo_web/components/navbar.ex">lib/surface_demo_web/components/navbar.ex</a>
      </div>
    </div>
    """
  end

  def mount(_session, socket) do
    {:ok, socket}
  end
end