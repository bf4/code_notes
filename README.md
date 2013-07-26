
# CodeNotes

Extracting from Rails the rake notes, source annotation extaction task

* [SourceAnnotationExtractor::Annotation](https://github.com/rails/rails/blob/7d7c9f4d6b/railties/lib/rails/source_annotation_extractor.rb)
* [annotations.rake, rake notes](https://github.com/rails/rails/blob/7d7c9f4d6b/railties/lib/rails/tasks/annotations.rake)

By default, it looks for OPTIMIZE,FIXME,TODO

## Installation

Add this line to your application's Gemfile:

    gem 'code_notes'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install code_notes

## Usage

```bash
code_notes
```

```rake
rake notes
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

