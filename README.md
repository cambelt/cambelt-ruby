Cambelt - Image Placeholders
============================

Cambelt is a service that allows you to generate free image placeholders, simply and easily. If you would like to learn more about the service itself, have a look at http://cambelt.co for more information.

### Quickstart

<img src="https://cambelt.herokuapp.com/852x160/Cambelt+Quickstart?color=234653,eeeeee&font=Haymaker" />

To install Cambelt on your machine you can type:

    gem install cambelt
    
or use

    gem 'cambelt'
    
in your Gemfile.

Cambelt detects if you are running Ruby on Rails, and if so adds a _placeholder_image_tag()_ method to ActionView, allowing you to do:

    <%= placeholder_image_tag %>

in your views and get a nice placeholder back! For your convenience this is also aliased to a simple call of:

    <%= placeholder %>
    
### Configuring Cambelt

This gem currently only interfaces with the basic free Cambelt service, which gives a limited number of configuration options that you can set as defaults. When you make a call to _placeholder_image_tag()_, Cambelt checks for these defaults to create the image, but allows you to pass in a hash of values to override any of them.

To configure Cambelt in Rails, you can run the following generator to create a Cambelt initializer file:

    $ rails g cambelt:install
    
Then you can edit this file to customise your default settings. If you are not using Rails, then the command to configure Cambelt is the same as in the initializer, and is presented below:

    