module ApplicationHelper
  def flash_class(level)
    case level
    when :success then "success"
    when :notice then "info"
    when :error then "danger"
    when :alert then "warning"
    end
  end

  def new_fields_template(f,association,options={})
    options[:object] ||= f.object.class.reflect_on_association(association).klass.new
    options[:partial] ||= association.to_s.singularize+"_fields"
    options[:template] ||= association.to_s+"_fields"
    options[:f] ||= :f

    tmpl = content_tag(:div,:id =>"#{options[:template]}") do
      tmpl = f.fields_for(association,options[:object], :child_index => "new_#{association}") do |b|
        render(:partial=>options[:partial],:locals =>{:f => b})
      end
    end
    tmpl = tmpl.gsub /(?<!\n)\n(?!\n)/, ' '
    tmpl = tmpl.gsub "'", "\""
    return "<script> var #{options[:template]} = '#{tmpl.to_s}' </script>".html_safe
  end
end
