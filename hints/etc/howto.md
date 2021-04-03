# How-to use this repository, in a nutshell

- [About][#about] the author

## My first markdown hello world in HTML

Here is a sample on how to generate HTML from a markdown file (either extension '.md' or '.markdown'); you can use markdown module in Python, as follow in the next example.

```
import sys
import os.path
sys.path.append("/tmp/markdownpolaroid/markdown/markdown")
import markdown
...
mdfile = "your_markdown_file.md"
is_ok = os.path.isfile(mdfile)
assert is_ok, "File should exist"
html_string = markdown.markdown(open(mdfile, "r", encoding="ISO-8859-1").read())
print(html_string)
```

That's it!
Now you might wonder: what if I do some changes in the markdown at `/tmp/markdownpolaroid/markdown/markdown` and I want to make another try?
Then simply reload the 'markdown' module, as follow:
```
import importlib; importlib.reload(markdown); import markdown
```

## Markdown samples

Consider the following text

```
I get 10 times more traffic from [Google](http://google.com/ "Google")
than from [Yahoo](http://search.yahoo.com/ "Yahoo Search") or
[MSN](http://search.msn.com/ "Microsoft Network Search").
```

I get 10 times more traffic from [Google](http://google.com/ "Google")
than from [Yahoo](http://search.yahoo.com/ "Yahoo Search") or
[MSN](http://search.msn.com/ "Microsoft Network Search").


```
  [google]: http://google.com/        "Google"
  [yahoo]:  http://search.yahoo.com/  "Yahoo Search"
  [msn]:    http://search.msn.com/    "Microsoft Network Search"
```

---

I get 10 times more traffic from [Google][] than from
[Yahoo][] or [MSN][].

  [google]: http://google.com/        "Google"
  [yahoo]:  http://search.yahoo.com/  "Yahoo Search"
  [msn]:    http://search.msn.com/    "Microsoft Network Search"

## Images (and flags)

This gets nicely explained at the [Daringfireball (syntax)](https://daringfireball.net/projects/markdown/syntax#img "IMAGES").

- ![Alt text][id]
- This was obtained from [Google region-flags][123], a fork from *Behdad* original [work](https://github.com/behdad/region-flags/ "Behdad region-flags");
- the following fork ([region-flags](https://github.com/serrasqueiro/region-flags "Region Flags (fork)")), `git@github.com:serrasqueiro/region-flags.git` is 
straight forward (since it was **not** copied from https://github.com/google/).

[id]: https://github.com/google/region-flags/blob/gh-pages/png/PT.png?raw=true "Portuguese flag"
[id2]: https://raw.githubusercontent.com/serrasqueiro/region-flags/master/png/PT.png "Portuguese flag png"
[123]: https://github.com/google/region-flags/blob/gh-pages/svg/PT.svg "Google region-flags, a fork from Behdad"

## <a name="about"></a>About the author

`markdownpolaroid` started in (c) 2021, by Henrique Moreira; check me out [here](./consider_me.html).

