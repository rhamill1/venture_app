class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :logo_image
      t.string :background_image
      t.string :tag_line
      t.string :linkedin
      t.string :twitter
      t.string :company_link

      t.timestamps
    end
  end
end
