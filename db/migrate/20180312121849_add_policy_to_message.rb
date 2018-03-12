class AddPolicyToMessage < ActiveRecord::Migration
  def change
    add_column :messages, :policy, :boolean
  end
end
