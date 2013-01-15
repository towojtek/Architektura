class AddAttachmentAvatarToFortunes < ActiveRecord::Migration
  def self.up
    change_table :fortunes do |t|
      t.has_attached_file :avatar
    end
  end

  def self.down
    drop_attached_file :fortunes, :avatar
  end
end
