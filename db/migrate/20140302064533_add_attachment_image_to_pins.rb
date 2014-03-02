class AddAttachmentImageToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :image
      add_attachment :users, :pins
    end
  end

  def self.down
    drop_attached_file :pins, :image
  end
end
