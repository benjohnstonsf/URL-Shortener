class AddCounterToUrls < ActiveRecord::Migration
  def change
    add_column :urls, :counter, :integer, :default => 0

  end
end
