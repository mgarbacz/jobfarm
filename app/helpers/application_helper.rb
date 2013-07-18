module ApplicationHelper
  # Returns the Twitter Bootstrap class for a particular message level
  def get_msg_class(msg_level)
    case msg_level
      when :notice  then {css: 'alert-success', note: 'Well done!'}
      when :error   then {css: 'alert-error',   note: 'Oh snap!'}
      when :alert   then {css: 'alert-info',    note: 'Heads up!'}
    end
  end
end
