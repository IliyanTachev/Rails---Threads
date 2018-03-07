class Program < ApplicationRecord
	validates :thread_id, inclusion: { in: Threadth.all.map { |element| element.thread_id },
	message: "thread %{value} does not exist" }
end

