# frozen_string_literal: true
module ActiveAdmin
  class Component < Arbre::Component
    def initialize(*)
      super
      add_class default_class_name if default_class_name.present?
    end

    def default_class_name
    end
  end
end
