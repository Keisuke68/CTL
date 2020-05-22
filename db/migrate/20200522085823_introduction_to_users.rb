class IntroductionToUsers < ActiveRecord::Migration[6.0]
  def change
    drop_table :introduction_to_users
  end
end
