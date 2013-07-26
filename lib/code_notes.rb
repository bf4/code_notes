require "code_notes/version"

module CodeNotes
  @lib_root = File.expand_path('..', __FILE__)
  require 'code_notes/source_annotation_extractor'
  if defined?(Rails)
    require 'code_notes/railtie'
  else
    if defined?(Rake::Task) and not Rake::Task.task_defined?('notes')
      load File.join(@lib_root, 'tasks', 'annotations.rake')
    end
  end
end
