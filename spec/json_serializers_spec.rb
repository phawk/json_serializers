require "spec_helper"

RSpec.describe JsonSerializers do
  it "has a version number" do
    expect(JsonSerializers::VERSION).not_to be nil
  end

  describe ".serializer_for" do
    it "finds the appropriate serializer" do
      object = JsonSerializers.serializer_for(User.new)
      expect(object).to be_a(UserSerializer)
    end
  end
end
