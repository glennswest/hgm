module API
  module Entities
    class HostGroup < Grape::Entity
      expose :groupname
      expose :emailaddress
    end
  end
end
