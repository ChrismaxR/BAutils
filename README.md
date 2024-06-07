# BAutils

An R package containing a collection of handy functions for Business Analysis.

A first stab at packaging bespoke or combined existing function I use often in my daily work as a Business Analyst.

# Current functionality

```         
dater()
```
  Simple function to quickly form a string with today's date (yyyymmdd). Helps with having a dynamic naming convention for output files of R scripts. 

```         
gg_theme_ba1()
```
  A bespoke ggplot2 theme to use to easily set up a - hopefully - clear and legible plot. 

```         
gtp3_parser()
```
  A function to do GPT-3 api requests to parse text into a structured table format of predefined question
you want to pose about the supplied text.

```         
gtp3_prompter()
```
  A second function to do GPT-3 api requests to parse text into a structured table format of predefined question
you want to pose about the supplied text.

