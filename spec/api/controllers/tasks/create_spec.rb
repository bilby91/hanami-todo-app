require 'spec_helper'
require_relative '../../../../apps/api/controllers/tasks/create'

describe Api::Controllers::Tasks::Create do
  let(:action) { Api::Controllers::Tasks::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
