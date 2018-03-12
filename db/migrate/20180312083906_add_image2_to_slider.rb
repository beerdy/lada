class AddImage2ToSlider < ActiveRecord::Migration
  def change
    add_column :sliders, :image1_uid, :string
    add_column :sliders, :image1_name, :string
  end
end
