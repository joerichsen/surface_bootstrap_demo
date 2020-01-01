defmodule SurfaceDemoWeb.ButtonsLive do
  use Surface.LiveView

  def render(assigns) do
    ~H"""
    <div class="row">
      <div class="col">
        <h2>Button component</h2>
        <h4>Examples</h4>
        <p>
          <Button>Primary</Button>
          <Button variant="secondary">Secondary</Button>
          <Button variant="success">Success</Button>
          <Button variant="danger">Danger</Button>
          <Button variant="warning">Warning</Button>
          <Button variant="info">Info</Button>
          <Button variant="light">Light</Button>
          <Button variant="dark">Dark</Button>
          <Button variant="link">Link</Button>
        </p>
        <p>
          <Button size="sm">Small</Button>
          <Button size="lg">Large</Button>
        </p>
      </div>
    </div>
    <div class="row" phx-hook="HighlightCode">
      <div class="col">
        <h4>Code</h4>
        <pre>
          <code>
            &lt;Button&gt;Primary&lt;/Button&gt;
            &lt;Button variant=&quot;secondary&quot;&gt;Secondary&lt;/Button&gt;
            &lt;Button variant=&quot;success&quot;&gt;Success&lt;/Button&gt;
            &lt;Button variant=&quot;danger&quot;&gt;Danger&lt;/Button&gt;
            &lt;Button variant=&quot;warning&quot;&gt;Warning&lt;/Button&gt;
            &lt;Button variant=&quot;info&quot;&gt;Info&lt;/Button&gt;
            &lt;Button variant=&quot;light&quot;&gt;Light&lt;/Button&gt;
            &lt;Button variant=&quot;dark&quot;&gt;Dark&lt;/Button&gt;
            &lt;Button variant=&quot;link&quot;&gt;Link&lt;/Button&gt;

            &lt;Button size=&quot;sm&quot;&gt;Small&lt;/Button&gt;
            &lt;Button size=&quot;lg&quot;&gt;Large&lt;/Button&gt;
          </code>
        </pre>
      </div>
    </div>
    <div class="row mb-5">
      <div class="col">
        <h4>Implementation</h4>
        <a href="https://github.com/joerichsen/surface_bootstrap_demo/blob/master/lib/surface_demo_web/components/button.ex">lib/surface_demo_web/components/button.ex</a>
      </div>
    </div>
    """
  end

  def mount(_session, socket) do
    {:ok, socket}
  end
end