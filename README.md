cuba-sass
=========

A Cuba plugin to use Sass

Configure
---------

```
require "cuba/sass"

Cuba.plugin Cuba::Sass

Cuba.settings[:sass] = {
  style: :compact,
  template_location: "assets/stylesheets"
}
```

> Note that in order to use this plugin you need to have [Sass](https"//github.com/sass/sass) installed.
