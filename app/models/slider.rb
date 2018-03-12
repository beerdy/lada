class Slider < ActiveRecord::Base
  dragonfly_accessor :image
  dragonfly_accessor :image1
  rails_admin do
    include_all_fields

    edit do
      field :description, :rich_editor do
        config({
          :insert_many => true
        })
      end
    end
  end
end
