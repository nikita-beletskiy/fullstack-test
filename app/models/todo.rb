class Todo < ApplicationRecord
  belongs_to :project

  before_save :default

  def default
    self.isCompleted = false
  end
end
