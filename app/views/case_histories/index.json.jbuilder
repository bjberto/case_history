json.array!(@case_histories) do |case_history|
  json.extract! case_history, :company_name, :start_at, :end_at, :title, :mission_title, :mission_description, :solution_title, :solution_description, :result_title, :result_description
  json.url case_history_url(case_history, format: :json)
end