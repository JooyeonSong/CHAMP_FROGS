class Answer < ApplicationRecord
  belongs_to :user

  def self.get_1st
    ordering = Answer.pluck('ordering')
    Rails.logger.info ordering

    result = {1 => 0, 2 => 0, 3 => 0, 4 => 0, 5 => 0, 6 => 0, 7 => 0, 8 => 0, 9 => 0, 10 => 0}


    ordering.each do |key|
        score = 10
        key.each do |k|
          result[k] +=score
          score -=1
        end
    end
    result = result.sort_by{|_key, value| value}.reverse.to_h
    result
  end
end