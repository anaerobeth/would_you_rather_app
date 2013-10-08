class Option < ActiveRecord::Base
  has_many :votes,
    inverse_of: :option

  belongs_to :question,
    inverse_of: :options

  validates_presence_of :content


  def chosen_percentage

    if self.votes.count == 0
      0
    else
      (self.votes.count / self.question.votes.count.to_f * 100).floor
    end

  end
end
