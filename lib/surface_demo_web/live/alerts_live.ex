defmodule SurfaceDemoWeb.AlertsLive do
  use Surface.LiveView

  def render(assigns) do
    ~H"""
    <div class="row">
      <div class="col">
        <h2>Alert component</h2>
        <h4>Examples</h4>
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
    <div class="row" phx-hook="HighlightCode">
      <div class="col">
        <h4>Code</h4>
        <pre>
          <code>
            &lt;Alert&gt;Primary alert&lt;/Alert&gt;
            &lt;Alert variant=&quot;secondary&quot;&gt;Secondary alert&lt;/Alert&gt;
            &lt;Alert variant=&quot;success&quot;&gt;Success alert&lt;/Alert&gt;
            &lt;Alert variant=&quot;danger&quot;&gt;Danger alert&lt;/Alert&gt;
            &lt;Alert variant=&quot;warning&quot;&gt;Warning alert&lt;/Alert&gt;
            &lt;Alert variant=&quot;info&quot;&gt;Info alert&lt;/Alert&gt;
            &lt;Alert variant=&quot;light&quot;&gt;Light alert&lt;/Alert&gt;
            &lt;Alert variant=&quot;dark&quot;&gt;Dark alert&lt;/Alert&gt;
          </code>
        </pre>
      </div>
    </div>
    <div class="row mb-5">
      <div class="col">
        <h4>Implementation</h4>
        <a href="https://github.com/joerichsen/surface_bootstrap_demo/blob/master/lib/surface_demo_web/components/alert.ex">lib/surface_demo_web/components/alert.ex</a>
      </div>
    </div>
    """
  end

  def mount(_session, socket) do
    {:ok, socket}
  end
end