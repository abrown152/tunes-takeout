class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column(:users, :uid, :text, presence: true)
    add_column(:users, :name, :text, presence: true)
    add_column(:users, :email, :text, presence: true)
    add_column(:users, :provider, :text, presence: true)
  end
end
