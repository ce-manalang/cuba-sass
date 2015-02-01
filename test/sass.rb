require_relative "helper"

require "cuba/sass"

test "doesn't override the settings if they alreay exist" do
  Cuba.settings[:sass] = {
    style: :compact,
    template_location: "assets/stylesheets"
  }

  Cuba.plugin Cuba::Sass

  assert_equal :compact, Cuba.settings[:sass][:style]
  assert_equal "assets/stylesheets", Cuba.settings[:sass][:template_location]
end

scope do
  setup do
    Cuba.plugin Cuba::Render

    Cuba.settings[:render][:views] = "./test/views"
    Cuba.settings[:render][:template_engine] = "erb"

    Cuba.settings[:sass] = {
      style: :compact,
      template_location: "./test/assets/stylesheets",
      css_location: "./test/public/stylesheets"
    }

    Cuba.plugin Cuba::Sass

    Cuba.define do
      on root do
        res.write view("home", title: "Sass", name: "World")
      end
    end
  end

  test "" do
    env = { "SCRIPT_NAME" => "/", "PATH_INFO" => "/stylesheets/application.css", "rack.session" => {} }

    code, headers, resp = Cuba.call(env)

    assert_response body, "html { overflow-y: scroll; }"
  end
end
