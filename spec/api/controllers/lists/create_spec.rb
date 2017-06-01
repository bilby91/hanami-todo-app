require 'spec_helper'
require_relative '../../../../apps/api/controllers/lists/create'

describe Api::Controllers::Lists::Create do
  let(:action) { Api::Controllers::Lists::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
