defmodule SurfaceDemoWeb.CardsLive do
  use Surface.LiveView

  def render(assigns) do
    ~H"""
    <div class="row mb-4">
      <div class="col">
        <h2>Card component</h2>
        <h4>Example</h4>
        <Card title="Card title">
          Some quick example text to build on the card title and make up the bulk of the card's content.
        </Card>
      </div>
    </div>
    <div class="row" phx-hook="HighlightCode">
      <div class="col">
        <h4>Code</h4>
        <pre>
          <code>
            &lt;Card title=&quot;Card title&quot;&gt;
              Some quick example text to build on the card title and make up the bulk of the card&apos;s content.
            &lt;/Card&gt;
          </code>
        </pre>
      </div>
    </div>
    <div class="row mb-5">
      <div class="col">
        <h4>Implementation</h4>
        <a href="https://github.com/joerichsen/surface_bootstrap_demo/blob/master/lib/surface_demo_web/components/card.ex">lib/surface_demo_web/components/card.ex</a>
      </div>
    </div>
    """
  end

  def mount(_session, socket) do
    {:ok, socket}
  end
end