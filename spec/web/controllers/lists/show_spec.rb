require 'spec_helper'
require_relative '../../../../apps/web/controllers/lists/show'

describe Web::Controllers::Lists::Show do
  let(:action) { Web::Controllers::Lists::Show.new }
  let(:params) { Hash[] }

  it 'is successful' do
    response = action.call(params)
    response[0].must_equal 200
  end
end
