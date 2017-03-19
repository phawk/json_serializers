require_relative "json_serializers/version"
require_relative "json_serializers/serializer"

module JsonSerializers
  def self.serializer_for(resource)
    "#{resource.class.name}Serializer".constantize.new
  end
end
