module ApplicationHelper
  def last_updated_date
    File.mtime(Rails.root.join('REVISION')).to_date rescue Date.today
  end

  def ajax_enabled_for?(name)
    %w(
      all-smart-answer-questions
    ).exclude?(name)
  end
end
