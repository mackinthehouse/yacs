class CourseResponder < ApplicationResponder
   topic :course_change, required: true

    def respond(event)
        respond_to :course_change, event.to_json(:only => [:uuid,:department_id, :name, :number, :min_credits, :max_credits, :created_at , :updated_at, :description, :tags  ])
    end
end
