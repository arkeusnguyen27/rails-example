class ApplicationController < ActionController::Base
   
    SHOPS = {
        1 => {id:1, name: "Shop 1", description: "Awesome shop", banner_url:"https://cdn-images.win.gg/resize/w/1000/format/webp/type/progressive/fit/cover/path/wp/uploads/2022/08/image-28-1024x576.png"},
        2 => {id:2, name: "Shop 2", description: "Pro shop", banner_url:"https://i.pinimg.com/originals/34/26/38/3426385006cfd4e4b1167fa2266cdebd.jpg"}
    }.freeze

   

    def get_shops
        SHOPS
    end

    def not_found
        #raise ActionController::RoutingError.new('Not Found')
        render "not_found"
    end

end
