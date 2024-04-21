class Post < ApplicationRecord
    
  validates :user_id, {presence: true}
  validates :food,{presence: true, numericality: { only_integer: true } }
  validates :water,{presence: true, numericality: { only_integer: true } }
  validates :rice,{presence: true, numericality: { only_integer: true } }
  validates :can,{presence: true, numericality: { only_integer: true } }
  validates :seasonal,{presence: true, numericality: { only_integer: true }}
  validates :ramen,{presence: true, numericality: { only_integer: true } }
  validates :snack,{presence: true, numericality: { only_integer: true } }

  def index
    return Post.where(user_id: self.id)
  end
  

    def user
        return User.find_by(id: self.user_id)
      end

end
