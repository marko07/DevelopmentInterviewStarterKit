require 'rails_helper'

describe SalesLoft::Api do
  let(:url) { ENV.fetch("SALES_LOFT_URL") }
  let(:key) { ENV.fetch("SALESLOFT_APPLICATION_ID") }
  
  it "retrieves list of People" do
    people = SalesLoft::Api.new(url, key).get_people
    expect(people["metadata"]).not_to be_empty
  end
end
