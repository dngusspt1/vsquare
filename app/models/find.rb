class Find < ActiveRecord::Base
    belongs_to :store, foreign_key: :num_id, class_name: 'Store'
end
