require 'rails_helper'

RSpec.describe User, :type => :model do
  subject {
    described_class.new(first_name: "Joe",
                        last_name: "M",
                        email: "ikbeneenappel@joe.net",
                        password: "50ph13",
                        handle: "bloemkool"
                        )
  }

  it "is valid with valid attributes" do
    expect(subject.first_name).to eq("Joe")
    expect(subject.last_name).to eq("M")
    expect(subject.email).to eq("ikbeneenappel@joe.net")
    expect(subject.password).to eq("50ph13")
    expect(subject.handle).to eq("bloemkool")
  end
end