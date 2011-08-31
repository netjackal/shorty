class CreateShortcuts < ActiveRecord::Migration
  def self.up
    create_table(:shortcuts) do |t|
      t.string    :url
      t.string    :hash
      t.integer    :visit_count, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table(:shortcuts)
  end
end
