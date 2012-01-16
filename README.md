Cambelt - Image Placeholders
============================

Cambelt is a service that allows you to generate free image placeholders, simply and easily. If you would like to learn more about the service itself, have a look at http://cambelt.co for more information.

### Quickstart

To install Cambelt on your machine you can type:

    gem install cambelt
    
or use

    gem 'cambelt'
    
in your Gemfile.

Cambelt detects if you are running Ruby on Rails, and if so adds a _placeholder_image_tag_ method to ActionView, allowing you to do:
    <%= placeholder_image_tag %>
in your views and get a nice placeholder back!