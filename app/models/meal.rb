class Meal < ApplicationRecord

  enum category: { breakfast: 0, lunch: 1, dinner: 2, snack: 3 }

end