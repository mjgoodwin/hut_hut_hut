module RushingPerformancesHelper
  def responsive_table(&block)
    content_tag(:div, class: 'table-responsive') do
      content_tag(:table, class: 'table') do
        capture(&block)
      end
    end
  end

  def sortable_header_link(column, title = nil)
    title ||= column.titleize
    direction = column == sort_column && sort_direction == 'desc' ? 'asc' : 'desc'
    arrow = sort_direction == 'asc' ? '<' : '>'
    arrow = column == sort_column ? arrow : ''
    link_to "#{title} <span>#{arrow}</span>".html_safe, column: column, direction: direction
  end
end
