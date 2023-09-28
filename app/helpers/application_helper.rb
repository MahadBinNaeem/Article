module ApplicationHelper
	def text_field_with_label(form, attribute)
    form.label(attribute) + form.text_field(attribute)
  end
  def text_area_with_label(form, attribute)
    form.label(attribute) + form.text_area(attribute)
  end
  def form_select_with_label(form, attribute)
    form.label(attribute) + form.select(attribute)
  end
end
