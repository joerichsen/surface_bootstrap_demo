defmodule SurfaceDemoWeb.Modal do
  use Surface.LiveComponent

  property title, :string
  property close_button, :boolean, default: true
  property close_button_text, :string, default: "Close"

  def render(assigns) do
    ~H"""
    <div class="modal" id="modal" tabindex="-1" role="dialog">
      <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title">{{ @title }}</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          {{ @inner_content.() }}
        </div>
        <div class="modal-footer">
          <button :if={{ @close_button }} type="button" class="btn btn-secondary" data-dismiss="modal">{{ @close_button_text }}</button>
          <Button>Save changes</Button>
        </div>
      </div>
      </div>
    </div>

    <div phx-hook="ShowModal" :if={{ @show }} />
    """
  end

  def mount(socket) do
    {:ok, assign(socket, show: false)}
  end

  def show(dialog_id) do
    send_update(__MODULE__, id: dialog_id, show: true)
  end

  def handle_event("hide", _, socket) do
    {:noreply, assign(socket, show: false)}
  end
end