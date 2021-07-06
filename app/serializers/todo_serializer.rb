class TodoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :text, :isCompleted, :project_id
end
