---
layout: default
description: julian jarjour's writing and photography.
---
<div class="epigraph">
I should not like to think that some demigod had come before me and picked out some of the best of the stars. I wish to know an entire heaven and an entire earth.
<footer><a class="epigraphcitation" target=_blank href="https://thoreau.library.ucsb.edu/writings_journals_pdfs/TMS20newTR.pdf">Henry David Thoreau, <em>Journal</em></a></footer>
</div>
This'll contain my photography, writing, hopefully music at some point, and other miscellaneous things. I'll be writing about lots of topics, from urban planning to botany to competition maths to music theory to book reviews and so on. I've just got to actually start writing all of that stuff. One day.

## Colophon
<span class="dc">I</span> began building this site on a whim in August 2023. Rarely do I follow through on my whims, and I'm no coder, but I sat down and did it. To my surprise, this has been a life-changing project. It's just a little website, but it brings me so much fulfillment.

On top of learning HTML, CSS, and Javascript from scratch, I've also been spending a lot of time researching topics that I want to write about, writing about those topics, and refining my delivery. I probably wouldn't be doing all of that without this site to incentivize me, so I feel that this project is responsible for stimulating my curiosity and expanding my knowledge of the world.
### Framework
This site is generated with [Jekyll](https://jekyllrb.com/){:target="_blank"} and hosted on [Github Pages](https://pages.github.com/){:target="_blank"}. Everything on my part was written in good 'ol HTML, CSS, and JavaScript, as well as some handy [Liquid](https://shopify.github.io/liquid/){:target="_blank"} syntax. As for my setup, I'm running [Arch Linux](https://archlinux.org/){:target="_blank"} and writing in [Neovim](https://neovim.io/){:target="_blank"}.
### Typography
Long ago, my brother [Toni](https://www.tonijarjour.com/){:target="_blank"} showed me [Butterick's Practical Typography](https://practicaltypography.com/){:target="blank"}: a fantastic resource for best practices in typography. I haven't been the same since, and naturally I've spent a ridiculous amount of time tweaking the type on this site. Despite the time sink, everything is pretty simple.
#### Line Length
The most important thing, to me, is keeping line length short. This keeps the page attractive and comfortable to read because your eyes don't have to move as much to reach the end of each line or the start of the next. A bit like physical books.

A problem that comes with short line length is the ragged right edge. I wanted to go all the way in emulating the typesetting of a book, but justified text on the web is just not as nuanced as justified text in print. I opted for left-aligned text with hyphenation to tame the right edge as much as possible.
#### Fonts
As for fonts, the body text uses [Libre Baskerville](https://www.impallari.com/revivals/baskerville/){:target="_blank"} by Impallari Type, and the smallcaps use [Noto Serif](https://fonts.google.com/noto/specimen/Noto+Serif){:target="_blank"} by Google. The dropcaps use [Cheshire Initials](https://www.dafont.com/cheshire-initials.font){:target="_blank"} by House of Lime. In the future, I might expand my selection of dropcap fonts to fit different types of articles like [Gwern](https://gwern.net/dropcap#drop-cap-implementation){:target="_blank"} does.

I was met with browser incompatibility issues when trying to select the smallcaps font variant for Noto Serif using CSS, so I ended up using [FontForge](https://fontforge.org/en-US/){:target="_blank"} to map the smallcaps characters onto the lowercase letters. I thank [Chris Krycho](https://v4.chriskrycho.com/2015/css-fallback-for-opentype-small-caps.html){:target="_blank"} for that idea.
#### Underlines
The most engineered aspect of this site's typography is underlining. Regular underlines don't clear [descenders](https://en.wikipedia.org/wiki/Descender){:target="_blank"} very well, so there's a wild CSS solution to remedy that:
```
a, u {
  text-decoration: none;
  background: linear-gradient($backgroundColor, $backgroundColor), linear-gradient($backgroundColor, $backgroundColor), linear-gradient(currentColor, currentColor);
  background-size: 0.05em 1px, 0.05em 1px, 1px 1px;
  background-repeat: no-repeat, no-repeat, repeat-x;
  text-shadow: 0.03em 0 $backgroundColor, -0.03em 0 $backgroundColor, 0 0.03em $backgroundColor, 0 -0.03em $backgroundColor, 0.06em 0 $backgroundColor, -0.06em 0 $backgroundColor, 0.09em 0 $backgroundColor, -0.09em 0 $backgroundColor, 0.12em 0 $backgroundColor, -0.12em 0 $backgroundColor, 0.15em 0 $backgroundColor, -0.15em 0 $backgroundColor;
  background-position: 0% 93%, 100% 93%, 0% 93%;
  }
}
```
Not sure where I found this solution, but it works wonders. Note that Jekyll uses [Sass](https://sass-lang.com/){:target="_blank"}, a CSS extension language that allows setting variables like `$backgroundColor` as seen above.
