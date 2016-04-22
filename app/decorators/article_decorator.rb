class ArticleDecorator < Draper::Decorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:

  def created_at
    time = object.created_at.in_time_zone('Tokyo')
    helpers.content_tag :time, :datetime => time.to_datetime do
      time.strftime("%Y年%m月%d日 %H時%M分")
    end
  end

end
