# HTML 5 forms for Rails

A collection of Polyfills for using HTML 5 forms with the Rails asset pipeline.

All credits, copyright etc. belong to the original authors of each polyfill library.

[HTML5-Cross-Browser-Polyfills](https://github.com/Modernizr/Modernizr/wiki/HTML5-Cross-Browser-Polyfills)

The following polyfill libraries are currently included:

* [HTML5Forms.js](https://github.com/zoltan-dulac/html5Forms.js)
* [H5F](https://github.com/ryanseddon/H5F)
* [HTML5-Form-Shim](https://github.com/dsheiko/HTML5-Form-Shim)
* [jQuery HTML5 form](http://www.matiasmancini.com.ar/jquery-plugin-ajax-form-validation-html5.html)

### Install

Simply add to Gemfile and bundle:

`gem 'html5forms-rails'`

If the polyfill library uses modernizr to detect HTML 5 feature availability:

`gem 'modernizr-rails'`

See [modernizr-rails](https://github.com/kristianmandrup/modernizr-rails)

## HTML5Forms.js

[HTML5Forms.js](https://github.com/zoltan-dulac/html5Forms.js) is a JavaScript polyfill that implements a subset of the HTML5
Forms module in all browsers.  The script will only add support for the
different parts of the module when there doesn't exist a native
implementation.  HTML5Forms supports the following HTML5 input types:

* range
* date
* datetime
* datetime-local
* week
* color

It also supports:

* form validation (via "required" and "pattern" attributes)
* the autofocus attribute (i.e. focusing on a particular form element onload)
* the placeholder attribute (i.e. descriptive text of what should be in a form
  field)
* the output tag (solves equations of form elements)
* CSS styling of form validation states (simulates :invalid and :valid in 
  unsupported browsers like IE9 and lower)
* CSS styling of form elements that are not included in the CSS3 UI 
  specification, but I think are useful for developers:
  
  - .wf2_isBlank, .wf2_notBlank – these classes are applied to form field when 
     a form element is blank/not blank repectively.
  - .wf2_lostFocus -this class is applied to a form element when a form field 
     loses focus.
  - .wf2_submitAttempted – this class is applied to a <form> tag when a form 
     submission is attempted.


More information about how this works is available at:

[cross-browser-html](http://www.useragentman.com/blog/2010/07/27/cross-browser-html5-forms-using-modernizr-webforms2-and-html5widgets/)
[cross-browser-html-old-browsers](http://www.useragentman.com/blog/2012/05/14/cross-browser-styling-of-html5-forms-even-in-older-browsers/)

Note that this package was originally released in 2010 as html5Widgets, 
and was renamed to a more accurate and descriptive name.  Also note that
the version of webforms2 that is included in this package does not 
include support for the depricated repetition module -- it will be 
put back in as a separate module at a later date.

## Configuration

You can choose to use either the minified js:

```text
//= require html5forms/html5Forms.min
```

Or the development version (easier to read/debug etc.). 

```text
//= require html5forms/dev/html5Forms
```

Note: *jscalendar*, *webforms2* and *modernizr* have been removed in order to keep the filecount down.

In your asset `application.css` manifest file, include the styles you need:

```css
*/
 * require html5forms/slider
 * ...
*/
```

## H5F

See [H5F](https://github.com/ryanseddon/H5F)

## Configuration

You can choose to use either the minified js:

```text
//= require h5f.min
```

Or the development version (easier to read/debug etc.). 

```text
//= require h5f
```

In your asset `application.css` manifest file, include the styles you need:

```css
*/
 * require h5f
*/
```

## jQuery HTML5 form

[jQuery HTML5 form](http://www.matiasmancini.com.ar/jquery-plugin-ajax-form-validation-html5.html)

```text
//= require jquery.html5form.min
```


## HTML5-Form-Shim

See [HTML5-Form-Shim](https://github.com/dsheiko/HTML5-Form-Shim)

## Configuration

In your `application.js` manifest:

```text
//= require jquery.html5form-shim
```

In your asset `application.css` manifest file:

```css
*/
 * require html5form-shim
* ...
*/
```

## Contributing to html5forms-rails
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2012 Kristian Mandrup. See LICENSE.txt for
further details.

