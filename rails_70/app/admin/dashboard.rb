# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end

      button class: "text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2 dark:bg-blue-600 dark:hover:bg-blue-700 focus:outline-none dark:focus:ring-blue-800 inline-flex items-center" do
        span svg_adjustments_vertical(class: "w-5 h-5 mr-2 text-white dark:text-white")
        span "My Button"
      end
    end

    div class: "py-6" do
      dropdown_menu "Administration", button: { class: "text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center inline-flex items-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800", "data-dropdown-placement": "bottom-start" } do
        item "Action", "/admin"
        item "Another Action", "/admin"
        item do
          hr class: "border-t h-0 my-2"
        end
        item "Something separate here", "/admin"
      end
    end

    div class: "px-5 py-2.5" do
      button class: "inline-flex items-center ps-5 pe-5 gap-2 py-2.5 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" do
        text_node "Messages"
        span class: "inline-flex items-center justify-center w-4 h-4 text-xs font-semibold text-blue-800 bg-blue-200 rounded-full" do
          2
        end
      end
      svg_icon = svg_adjustments_vertical(class: "w-5 h-5 mr-2 text-white dark:text-white")
      button svg_icon + "One", class: "inline-flex items-center px-5 py-2.5 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"

      svg_icon = svg_adjustments_vertical(class: "w-5 h-5 mr-2 text-white dark:text-white")
      button svg_icon + text_node("One A"), class: "inline-flex items-center px-5 py-2.5 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"

      # module Arbre
      #   module HTML
      #     class Path < Arbre::HTML::Tag
      #       builder_method :path
      #     end
      #   end
      # end
      class Arbre::HTML::Path < Arbre::HTML::Tag
        builder_method :path
      end

      svg class: "w-5 h-5 mr-2 text-black dark:text-white", "aria-hidden": "true", fill: "none", viewBox: "0 0 20 20" do
        path stroke: "currentColor", "stroke-linecap": "round", "stroke-linejoin": "round", "stroke-width": "2", d: "M4 12.25V1m0 11.25a2.25 2.25 0 0 0 0 4.5m0-4.5a2.25 2.25 0 0 1 0 4.5M4 19v-2.25m6-13.5V1m0 2.25a2.25 2.25 0 0 0 0 4.5m0-4.5a2.25 2.25 0 0 1 0 4.5M10 19V7.75m6 4.5V1m0 11.25a2.25 2.25 0 1 0 0 4.5 2.25 2.25 0 0 0 0-4.5ZM16 19v-2"
      end
      # <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 12.25V1m0 11.25a2.25 2.25 0 0 0 0 4.5m0-4.5a2.25 2.25 0 0 1 0 4.5M4 19v-2.25m6-13.5V1m0 2.25a2.25 2.25 0 0 0 0 4.5m0-4.5a2.25 2.25 0 0 1 0 4.5M10 19V7.75m6 4.5V1m0 11.25a2.25 2.25 0 1 0 0 4.5 2.25 2.25 0 0 0 0-4.5ZM16 19v-2"/>
    # </svg>

      svg_icon2 = svg_adjustments_vertical(class: "w-5 h-5 mr-2 text-white dark:text-white")
      button "Two" + svg_icon2, class: "inline-flex items-center px-5 py-2.5 text-sm font-medium text-center text-white bg-blue-700 rounded-lg hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
    end

    render "modal"

    button "data-tooltip-target" => "tooltip-default", class: "text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" do
      span "Default tooltip"
    end
    div id: "tooltip-default", role: "tooltip", class: "absolute z-10 invisible inline-block px-3 py-2 text-sm font-medium text-white transition-opacity duration-300 bg-gray-900 rounded-lg shadow-sm opacity-0 tooltip dark:bg-gray-700" do
      span "Tooltip content"
      div class: "tooltip-arrow", "data-popper-arrow" => ""
    end

    br
    br
    br
    # Here is an example of a simple dashboard with columns and panels.
    #

    columns do
      column "One" do
        span "Override"
      end
      column "Two"
    end

    columns class: "gap-4" do
      column class: "col-span-2" do
        panel "Recent Posts" do
          ul do
            li link_to("One", "#")
            li link_to("Two", "#")
            li link_to("Three", "#")
          end
        end
      end

      column do
        panel "Info" do
          para "Welcome to ActiveAdmin."
        end
      end
    end
  end # content
end
