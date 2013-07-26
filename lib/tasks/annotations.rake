# Extracted from https://github.com/rails/rails/blob/7d7c9f4d6b/railties/lib/rails/tasks/annotations.rake
require 'code_notes/source_annotation_extractor'

desc "Enumerate all annotations (use notes:optimize, :fixme, :todo for focus)"
task :notes do
  CodeNotes::SourceAnnotationExtractor.enumerate "OPTIMIZE|FIXME|TODO", tag: true
end

namespace :notes do
  ["OPTIMIZE", "FIXME", "TODO"].each do |annotation|
    # desc "Enumerate all #{annotation} annotations"
    task annotation.downcase.intern do
      CodeNotes::SourceAnnotationExtractor.enumerate annotation
    end
  end

  desc "Enumerate a custom annotation, specify with ANNOTATION=CUSTOM"
  task :custom do
    CodeNotes::SourceAnnotationExtractor.enumerate ENV['ANNOTATION']
  end
end
