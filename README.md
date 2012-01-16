Cambelt - Image Placeholders
============================

<img src="https://cambelt.herokuapp.com/852x120/Cambelt+Placeholders?color=234653,eeeeee&font=Questrial&font_size=30" />

Cambelt is a service that allows you to generate free image placeholders, simply and easily. If you would like to learn more about the service itself, have a look at http://cambelt.co for more information.


## Quickstart

To install Cambelt on your machine you can type:

    gem install cambelt
    
or use

    gem 'cambelt'
    
in your Gemfile.

Cambelt detects if you are running Ruby on Rails, and if so adds a _placeholder_image_tag()_ method to ActionView, allowing you to do:

    <%= placeholder_image_tag %>

in your views and get a nice placeholder back! For your convenience this is also aliased to a simple call of:

    <%= placeholder %>
    
## Configuring Cambelt

This gem currently only interfaces with the basic free Cambelt service, which gives a limited number of configuration options that you can set as defaults. When you make a call to _placeholder_image_tag()_, Cambelt checks for these defaults to create the image, but allows you to pass in a hash of values to override any of them.

To configure Cambelt in Rails, you can run the following generator to create a Cambelt initializer file:

    $ rails g cambelt:install
    
Then you can edit this file to customise your default settings. If you are not using Rails, then the command to configure Cambelt is the same as in the initializer, and is presented below:

    Cambelt.configure do |config|
        width = 640
        height = 360
        font = "Questrial"
        font_size = 48
        text = "Sample Text"
        bg_color = "#cccccc"
        fg_color = "#333333"
    end
    
These are the default settings that are provided, so if you are happy with those you don't actually need to call _Cambelt.configure()_ at all. Each of these methods is overridable on any given call to _placeholder_image_tag()_, and to do this you supply a hash as the first parameter:

    placeholder_image_tag(:text => "I love Cambelt!")
    
Finally, you can supply a second hash to the method which contains html attributes that your want your image tag to have, so:

    placeholder_image_tag({:text => "I love Cambelt!"}, {:class => "cambelt_is_classy"})
    
will give you the following:

    <img src="http://cambelt.co/640x360/I+love+Cambelt!?font=Questrial&font_size=48&color=cccccc,333333" class="cambelt_is_classy" />
    
Simple, isn't it?
      