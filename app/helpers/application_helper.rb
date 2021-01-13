module ApplicationHelper

  def tailwind_classes_for(flash_type)
    {
      notice: "bg-green-400 border-l-4 border-green-700 text-white",
      error:   "bg-red-400 border-l-4 border-red-700 text-black",
    }.stringify_keys[flash_type.to_s] || flash_type.to_s
  end

  def existing_value(location_questions, question_name)
    if location_questions.find_by(name: question_name).nil?
      ""
    else
      "#{location_questions.where(name: question_name).last.answer}"
    end
  end

  def existing_comment_value(location_questions)
    if location_questions.find_by(name: "COMMENT").nil?
      ""
    else
      "#{location_questions.where(name: "COMMENT").last.body}"
    end
  end

end
