class AddShortUrlToUrl < ActiveRecord::Migration
  def change
    add_column :urls, :short_url, :string

  end
end
