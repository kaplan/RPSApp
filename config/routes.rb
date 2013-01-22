RPSApp::Application.routes.draw do
  get("/rps", {:controller => "game", :action => "choose" })
end
