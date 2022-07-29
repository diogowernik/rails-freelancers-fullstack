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

    rails g devise:install
    rails g devise User
    rails db:migrate
