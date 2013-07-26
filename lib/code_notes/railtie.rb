require 'rails'
module CodeNotes
  class Railtie < Rails::Railtie
    railtie_name :code_notes

    rake_tasks do
      load "tasks/annotations.rake"
    end
  end
end
