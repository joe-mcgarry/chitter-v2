require 'rails_helper'

RSpec.describe Peep, :type => :model do
  subject {
    described_class.new(user: "Joe",
                        date: Date.new(2022,8,17),
                        body: "Sophie is the best")
  }

  it "is valid with valid attributes" do
    expect(subject.body).to eq("Sophie is the best")
  end
end