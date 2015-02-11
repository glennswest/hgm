module API
  class Hosts < Grape::API
    use Rack::JSONP

    desc 'Manage Docker Hosts to Group Associations'
    get "all" do
      present Host.order("hostname").all, with: API::Entities::Host
    end

  end
end
