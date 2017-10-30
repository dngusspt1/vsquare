class Store < ActiveRecord::Base
    has_many :finds, foreign_key: :num_id, class_name: "Find", dependent: :nullify
end
