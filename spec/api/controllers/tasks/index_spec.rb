require 'spec_helper'
require_relative '../../../../apps/api/controllers/tasks/index'

describe Api::Controllers::Tasks::Index do
  let(:action) { Api::Controllers::Tasks::Index.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
