class Answer < ApplicationRecord
  belongs_to :user


  def self.get_1st
    ordering = Answer.pluck('ordering')
    Rails.logger.info ordering

    first = []
    ordering.each do |i|
      first << i.first
    end

    count = Hash.new(0)
    first.each { |motivator| count[motivator] += 1 }
    result = count.sort_by { |k, v| v }
    result
  end

end
