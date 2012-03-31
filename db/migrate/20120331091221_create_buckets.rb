class CreateBuckets < ActiveRecord::Migration
  def change
    create_table :buckets do |t|
      t.string :name
      t.string :description
      t.string :admin_email
      t.string :admin_hash
      t.string :participation_hash
      t.string :go_cardless_code
      t.string :go_cardless_token

      t.timestamps
    end
  end
end
