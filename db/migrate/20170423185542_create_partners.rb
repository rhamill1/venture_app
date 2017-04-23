class CreatePartners < ActiveRecord::Migration[5.0]
  def change
    create_table :partners do |t|
      t.string :name
      t.string :title
      t.string :twitter
      t.string :linkedin
      t.string :subtitle
      t.string :bio
      t.string :home_image
      t.string :bio_image
      t.string :background_image
      t.string :story_image
      t.string :story_image_text
      t.string :signature_image

      t.timestamps
    end
  end
end
