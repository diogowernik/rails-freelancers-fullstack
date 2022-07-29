## Install Rails with bootstrap and esbuild

    rails new freelancers -j esbuild --css bootstrap

## Jquery and jquery-ui

    Yarn add jquery

Create a file on `./javascript/src/` called `jquery.js`: # Language: javascript

with the following content:

```javascript
import jquery from "jquery";
window.jQuery = jquery;
window.$ = jquery;
```

Download manually the [jquery-ui](https://jqueryui.com/download/) library and put the js file it in the `javascripts/src/` folder. And the css file in the `./assets/stylesheets/` folder.

Add to the file `javascript/application.js` the following code:

```javascript
import "./src/jquery";
import "./src/jquery-ui";

$(function () {
  console.log("Hello from Jquery");
  // $( "#dialog" ).dialog(); // Dialog jquery-ui example here can add all the jquery-ui components
});
```

Add the images to the folder `./public/images/`:

On the file `.assets/stylesheets/application.bootstrap.scss` add the following code:

```
@import "jquery-ui";
```

## run the app

    bin/dev

## Create rails home page

    rails generate controller Pages home

## Create shared/navbar.html.erb

## Create devise and user

add the following code to the file `Gemfile`:

    gem 'devise'
    gem 'devise-bootstrapped'

    rails g devise:install
    rails g devise User
    rails db:migrate
    rails g devise:views:bootstrapped

add the following code to the file `app/views/layouts/application.html.erb`:

```html
<%= render "shared/navbar" %>
<div class="container"><%= yield %></div>
```

add to `config/environments/development.rb` the following code:

```ruby
    config.action_mailer.default_url_options = { host: 'localhost:3000' }
```

add to `config/initializers/devise.rb` the following code:

```ruby
    config.navigational_formats = ['*/*', :html, :turbo_stream]
```

rails 7 logout snipet:

```html
<%= link_to "Log out", destroy_user_session_path, data: { turbo_method: :delete
}, class: "dropdown-item" %>
```
