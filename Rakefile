require ::File.expand_path('../environment', __FILE__)

require 'rake'

desc 'Start IRB with application environment loaded'
task "console" do
    exec "irb -r./environment"
end

namespace :generate do
  desc "Create an empty model in app/models, e.g., rake generate:model NAME=User"
  task :model do
    unless ENV.has_key?('NAME')
      raise "Must specificy model name, e.g., rake generate:model NAME=User"
    end

    model_name     = camel_case(ENV['NAME'])
    model_filename = ENV['NAME'] + '.rb'
    model_path = APP_ROOT.join('app', 'models', model_filename)

    if File.exist?(model_path)
      raise "ERROR: Model file '#{model_path}' already exists"
    end

    puts "Creating #{model_path}"
    File.open(model_path, 'w+') do |f|
      f.write(<<-EOF)
        class #{model_name} 
          # Remember to create a migration!
        end
      EOF
    end
  end
end

def camel_case(name)
  return name if name !~ /_/ && name =~ /[A-Z]+.*/
  name.split('_').map{|e| e.capitalize}.join
end
