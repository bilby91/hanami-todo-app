module Api::Controllers::Lists
  class Create
    include Api::Action
    include JSONAPI::Hanami::Action

    deserializable_resource :list

    params do
      required(:list).schema do
        required(:name)
      end
    end

    def call(params)
      self.data = list_repository.create(params[:list])
      self.status = 200
    end

    def list_repository
      @list_repository ||= ListRepository.new
    end
  end
end
