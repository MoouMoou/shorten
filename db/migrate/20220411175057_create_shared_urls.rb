class CreateSharedUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :shared_urls do |t|
      t.string :original_url
      t.string :namespace
      t.string :key

      t.timestamps
    end
  end
end
