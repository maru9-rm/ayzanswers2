module ApplicationHelper
    def human_enum_name(model_name, attribute, key)
      I18n.t("activerecord.attributes.#{model_name}.#{attribute}.#{key}")
    end
  end