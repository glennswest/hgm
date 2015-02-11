module API
  class HostGroups < Grape::API
    use Rack::JSONP

    desc 'Manage Docker Hosts'
    get "all" do
      present HostGroup.order("groupname").all, with: API::Entities::HostGroup
    end

  end
end
