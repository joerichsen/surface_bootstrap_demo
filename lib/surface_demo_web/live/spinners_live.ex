defmodule SurfaceDemoWeb.SpinnersLive do
  use Surface.LiveView

  alias SurfaceDemoWeb.Spinner

  def render(assigns) do
    ~H"""
    <div class="row">
      <div class="col">
        <h2>Spinner component</h2>
        <h4>Examples</h4>
        <p>
          <Spinner></Spinner>
          <Spinner variant="primary"></Spinner>
          <Spinner variant="secondary"></Spinner>
          <Spinner variant="success"></Spinner>
          <Spinner variant="danger"></Spinner>
          <Spinner variant="warning"></Spinner>
          <Spinner variant="info"></Spinner>
          <Spinner variant="light"></Spinner>
          <Spinner variant="dark"></Spinner>
        <p>
        </p>
          <Spinner center></Spinner>
        </p>
      </div>
    </div>
    <div class="row" phx-hook="HighlightCode">
      <div class="col">
        <h4>Code</h4>
        <pre>
          <code>
            &#x3C;Spinner&#x3E;&#x3C;/Spinner&#x3E;
            &#x3C;Spinner variant=&#x22;primary&#x22;&#x3E;&#x3C;/Spinner&#x3E;
            &#x3C;Spinner variant=&#x22;secondary&#x22;&#x3E;&#x3C;/Spinner&#x3E;
            &#x3C;Spinner variant=&#x22;success&#x22;&#x3E;&#x3C;/Spinner&#x3E;
            &#x3C;Spinner variant=&#x22;danger&#x22;&#x3E;&#x3C;/Spinner&#x3E;
            &#x3C;Spinner variant=&#x22;warning&#x22;&#x3E;&#x3C;/Spinner&#x3E;
            &#x3C;Spinner variant=&#x22;info&#x22;&#x3E;&#x3C;/Spinner&#x3E;
            &#x3C;Spinner variant=&#x22;light&#x22;&#x3E;&#x3C;/Spinner&#x3E;
            &#x3C;Spinner variant=&#x22;dark&#x22;&#x3E;&#x3C;/Spinner&#x3E;

            &#x3C;Spinner center&#x3E;&#x3C;/Spinner&#x3E;
          </code>
        </pre>
      </div>
    </div>
    <div class="row mb-5">
      <div class="col">
        <h4>Implementation</h4>
        <a href="https://github.com/joerichsen/surface_bootstrap_demo/blob/master/lib/surface_demo_web/components/button.ex">lib/surface_demo_web/components/spinner.ex</a>
      </div>
    </div>
    """
  end

  def mount(_session, socket) do
    {:ok, socket}
  end
end