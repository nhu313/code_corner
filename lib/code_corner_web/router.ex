defmodule CodeCornerWeb.Router do
  use CodeCornerWeb, :router

  import CodeCornerWeb.UserAuth

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {CodeCornerWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
    plug :fetch_current_user
    plug CodeCornerWeb.Plugs.RequestLog
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", CodeCornerWeb do
    pipe_through :browser

    get "/", PageController, :home
  end

  scope "/admin", CodeCornerWeb do
    import Phoenix.LiveDashboard.Router
    pipe_through [:browser, :require_authenticated_user, :require_admin]

    live_dashboard "/dashboard", metrics: CodeCornerWeb.Telemetry
    get "/request_logs/users/:user_id", RequestLogController, :user
    get "/request_logs", RequestLogController, :index
    delete "/request_logs/:id", RequestLogController, :delete
  end


  ## Authentication routes

  scope "/", CodeCornerWeb do
    pipe_through [:browser, :redirect_if_user_is_authenticated]

    live_session :redirect_if_user_is_authenticated,
      on_mount: [{CodeCornerWeb.UserAuth, :redirect_if_user_is_authenticated}] do
      live "/users/register", UserRegistrationLive, :new
      live "/users/log_in", UserLoginLive, :new
      live "/users/reset_password", UserForgotPasswordLive, :new
      live "/users/reset_password/:token", UserResetPasswordLive, :edit
    end

    post "/users/log_in", UserSessionController, :create
  end

  scope "/", CodeCornerWeb do
    pipe_through [:browser, :require_authenticated_user]

    live_session :require_authenticated_user,
      on_mount: [{CodeCornerWeb.UserAuth, :ensure_authenticated}] do
      live "/users/settings", UserSettingsLive, :edit
      live "/users/settings/confirm_email/:token", UserSettingsLive, :confirm_email
    end
  end

  scope "/", CodeCornerWeb do
    pipe_through [:browser]

    delete "/users/log_out", UserSessionController, :delete

    live_session :current_user,
      on_mount: [{CodeCornerWeb.UserAuth, :mount_current_user}] do
      live "/users/confirm/:token", UserConfirmationLive, :edit
      live "/users/confirm", UserConfirmationInstructionsLive, :new
    end
  end
end
