module API
  module Entities
    class Host < Grape::Entity
      expose :hostname
      expose :ipaddr
      expose :type
      expose :host_group_id
    end
  end
end
