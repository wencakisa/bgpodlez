module ApplicationHelper
  def full_title(page_title = '')
    base_title = 'bgpodlez'
    if page_title.empty?
      base_title
    else
      base_title + ' | ' + page_title
    end
  end

  def message_to_toast(message, duration, klass = '')
    "Materialize.toast('#{message}', #{duration}, '#{klass}'); "
  end

  def toasts_to_script(errors)
    ['<script>', *errors, '</script>'].join('').html_safe
  end

  def toast_flash
    flash_messages = []

    flash.each do |type, message|
      klass = 'green' if type == 'notice'
      klass = 'red'   if type == 'error'

      text = message_to_toast message, 5000, klass
      flash_messages << text.html_safe if message
    end

    toasts_to_script flash_messages
  end
end
