# frozen_string_literal: true
ActiveAdmin.register Tag do
  config.create_another = true

  permit_params :name

  index do
    selectable_column
    id_column
    column :name
    column :name
    column :name
    column :created_at
    column :updated_at
    column :status do |tag|

      # button class: "text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800 inline-flex items-center" do
      #   span svg_adjustments_vertical(class: "w-5 h-5 mr-2 text-white dark:text-white")
      #   span "My Button"
      # end
      div class: "flex gap-3" do
        status_tag true
        status_tag false
        status_tag nil

        # bg-green-100 text-green-800 text-xs font-medium mr-2 px-2.5 py-0.5 rounded-md dark:bg-gray-700 dark:text-green-400 border border-green-100 dark:border-green-500

        span class: "inline-flex items-center p-1 mr-2 text-sm font-semibold text-gray-800 bg-gray-100 rounded-full dark:bg-gray-700 dark:text-gray-300" do
          text_node svg_adjustments_vertical(class: "w-3 h-3")
          span class: "sr-only" do
            "Icon description"
          end
        end

        span class: "inline-flex items-center bg-indigo-100 text-indigo-800 text-sm font-medium mr-2 px-2.5 py-0.5 rounded dark:bg-indigo-900 dark:text-indigo-300" do
          text_node svg_adjustments_vertical(class: "w-3 h-3 mr-1")
          text_node "Green"
        end
      end
    end
    actions do |tag|
      item "Preview", admin_tag_path(tag), class: "py-2.5 px-5 mr-2 mb-2 text-sm font-medium text-gray-900 focus:outline-none bg-white rounded-lg border border-gray-200 hover:bg-gray-100 hover:text-blue-700 focus:z-10 focus:ring-4 focus:ring-gray-200 dark:focus:ring-gray-700 dark:bg-gray-800 dark:text-gray-400 dark:border-gray-600 dark:hover:text-white dark:hover:bg-gray-700"
    end
  end

  sidebar :sample_attributes, only: :index, class: "mt-8" do
    h3 "Sample Data", class: "text-lg font-medium text-gray-900 pb-4"
    attributes_table_for Tag.last do
      row :name
      row :created_at
      row :updated_at
      row :status
    end
  end

  sidebar :sample_attributes, only: :index, class: "mt-8" do
    panel "Sample Data", class: "p-0" do
      attributes_table_for Tag.last do
        row :name
        row :created_at
        row :updated_at
        row :status
      end
    end
  end

  sidebar :sample_attributes2, only: :show, class: "mt-6" do
    attributes_table_for Tag.last do
      row :name
      row :created_at
      row :updated_at
      row :status
    end
  end

  sidebar :sample_attributes3, only: :show, class: "mt-6" do
    attributes_table do
      row :name
      row :created_at
      row :updated_at
      row :status
    end
  end
end
