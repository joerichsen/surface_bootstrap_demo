defmodule Card do
  use Surface.Component

  property title, :string

  def render(assigns) do
    ~H"""
    <div class="card">
      <div class="card-body">
        <h5 class="card-title">{{ @title }}</h5>
        <p class="card-text">
          {{ @inner_content.() }}
        </p>
      </div>
    </div>
    """
  end
end