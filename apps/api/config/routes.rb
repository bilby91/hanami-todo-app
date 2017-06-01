# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
resources :lists, only: [:index, :show, :create] do
  resources :tasks, only: [:index, :show, :create], controller: :tasks
end
