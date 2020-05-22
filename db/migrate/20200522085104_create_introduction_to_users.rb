class CreateIntroductionToUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :introduction_to_users do |t|
      t.text "introduction"
    end
  end
end
