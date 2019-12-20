defmodule Navbar do
  @moduledoc """
  See https://getbootstrap.com/docs/4.4/components/navbar/
  """

  use Surface.Component

  property nav_items, :children, group: NavItem

  def render(assigns) do
    ~H"""
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class={{ "nav-item", active: nav_item.active }} :for={{ nav_item <- @nav_items }}>
            <a class="nav-link" href="{{ nav_item.url }}">{{ nav_item.title }}</a>
          </li>
        </ul>
      </div>
    </nav>
    """
  end
end