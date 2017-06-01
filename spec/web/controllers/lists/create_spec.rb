require 'spec_helper'
require_relative '../../../../apps/web/controllers/lists/create'

describe Web::Controllers::Lists::Create do
  let(:action) { Web::Controllers::Lists::Create.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
