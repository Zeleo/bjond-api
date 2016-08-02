# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: bjond-api 0.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "bjond-api"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Blake Rego"]
  s.date = "2016-08-02"
  s.description = "Rails engine that provides communication between Bj\u{f6}nd Server Core and a client app."
  s.email = "blake.rego@bjondinc.com"
  s.executables = ["rails"]
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "Gemfile",
    "Manifest",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "app/assets/images/bjond-api/.keep",
    "app/assets/javascripts/bjond-api/.keep",
    "app/assets/javascripts/bjond_api.js",
    "app/assets/stylesheets/bjond-api/.keep",
    "app/assets/stylesheets/bjond_registrations.css",
    "app/assets/stylesheets/scaffold.css",
    "app/controllers/.keep",
    "app/controllers/bjond_registrations_controller.rb",
    "app/controllers/bjondservices_controller.rb",
    "app/helpers/.keep",
    "app/mailers/.keep",
    "app/models/.keep",
    "app/models/bjond_registration.rb",
    "app/models/bjond_service.rb",
    "app/views/.keep",
    "app/views/bjond_registrations/_form.html.erb",
    "app/views/bjond_registrations/edit.html.erb",
    "app/views/bjond_registrations/index.html.erb",
    "app/views/bjond_registrations/new.html.erb",
    "app/views/bjond_registrations/show.html.erb",
    "app/views/bjondservices/index.html.erb",
    "app/views/shared/_app_info.html.erb",
    "bin/rails",
    "bjond-api.gemspec",
    "bjond-integration-gem.gemspec",
    "bower.json",
    "config/routes.rb",
    "db/migrate/20160726195312_create_bjond_registrations.rb",
    "db/migrate/20160726222319_rename_encryption_key_column.rb",
    "db/migrate/20160726225852_add_encrypted_encryption_key_iv_to_bjond_registration.rb",
    "db/migrate/20160727144938_add_host_and_ip_to_bjond_registrations.rb",
    "db/migrate/20160727191615_create_bjond_services.rb",
    "db/migrate/20160727194217_add_registration_id_to_bjond_service.rb",
    "db/migrate/20160801184749_rename_registration_idin_bjond_service_to_bjond_registration_id.rb",
    "lib/bjond-api.rb",
    "lib/bjond-app-config.rb",
    "lib/bjond-app-definition.rb",
    "lib/bjond-app/engine.rb",
    "lib/bjond-consequence.rb",
    "lib/bjond-event.rb",
    "lib/bjond-field.rb",
    "lib/bjond-jwt.rb",
    "lib/generators/initializer_generator.rb",
    "lib/generators/templates/initializer.rb"
  ]
  s.homepage = "http://github.com/Bjond/bjond-integration-gem"
  s.licenses = ["GPL"]
  s.rubygems_version = "2.4.8"
  s.summary = "Interface that facilitates communication with Bj\u{f6}nd servers."

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 4.2.4", "~> 4.2"])
      s.add_development_dependency(%q<jeweler>, [">= 2.0.1", "~> 2.0"])
      s.add_runtime_dependency(%q<faraday>, ["~> 0.9.2"])
      s.add_runtime_dependency(%q<syruppay_jose>, ["~> 1.0"])
      s.add_runtime_dependency(%q<attr_encrypted>, [">= 3.0.3", "~> 3.0"])
    else
      s.add_dependency(%q<rails>, [">= 4.2.4", "~> 4.2"])
      s.add_dependency(%q<jeweler>, [">= 2.0.1", "~> 2.0"])
      s.add_dependency(%q<faraday>, ["~> 0.9.2"])
      s.add_dependency(%q<syruppay_jose>, ["~> 1.0"])
      s.add_dependency(%q<attr_encrypted>, [">= 3.0.3", "~> 3.0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 4.2.4", "~> 4.2"])
    s.add_dependency(%q<jeweler>, [">= 2.0.1", "~> 2.0"])
    s.add_dependency(%q<faraday>, ["~> 0.9.2"])
    s.add_dependency(%q<syruppay_jose>, ["~> 1.0"])
    s.add_dependency(%q<attr_encrypted>, [">= 3.0.3", "~> 3.0"])
  end
end

