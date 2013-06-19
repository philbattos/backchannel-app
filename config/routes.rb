BackchannelApp::Application.routes.draw do

  get 'auth/twitter/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  delete 'signout', to: 'sessions#destroy', as: 'signout'

  get '/:conference', to: 'conferences#show', as: 'conference'
  get '/:conference/:track_id', to: 'tracks#show', as: 'conference_track'


end
