module API
  class Tags < Grape::API
    use Rack::JSONP

    desc 'Manage Hosts tags'
    get "all" do
      present Tags.order("tag").all, with: API::Entities::tag
    end
 
    desc "Add a host tag"
     post do
       params do
        requires :id, type: Integer, desc: "Host Id to Tag"
        requires :name, type: String, desc: "The tag name"
        end
     post do
        x = Host.find(params[:id])
        t = Tag.Create!
        t.tag = params[:name]
        t.hostgroupid = x.host_group_id
        t.hostid = x.id
        t.save
        end
          

  end
end
