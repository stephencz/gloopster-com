---
layout: course-lesson
course_id: "html"
content_type: "lesson"
lesson_index: 2
title: "Introduction"
description: "Explains what HTML is"
permalink: "/courses/html/intro"
new_section: "Fundamentals"
---

## What is HTML?

HTML isn't a programming language. <span class="highlight-text">HTML is a markup language</span>.

<span class="highlight-text">Markup languages are languages used to describe the structure of text.</span>
Most text consists of different parts. 
For example, a news article might contain headings, subheadings, paragraphs, lists, images, and tables.
Markup languages provide standards for describing each of these parts of text.


<span class="highlight-text">Hyper Text Markup Language</span>, or HTML, is a markup language.
Specifically, <span class="highlight-text">HTML is the language used to describe the structure of text to a web browser.</span>
HTML is written in a text editor and the result is viewed in a Web Browser.

Every single website and web page uses HTML to describe its structure.
Accordingly, learning HTML is essential for every web developer.

## Gathering Materials

Before you can start learning HTML, you have to gather the necessary tools.
Specifically, you will need a text editor and a modern web browser.

### Text Editors

There are hundreds of free text editors available online. 
They range from extremely simple to overly complex.
<span class="highlight-text">I recommend [Visual Studio Code](https://code.visualstudio.com/).</span>
It's free and has a large ecosystem of extensions which makes it suitable for general web development and programming.

Some alternatives to Visual Studio Code are:

* NotePad++ (Free)
* Sublime Text ($$)
* UltraEdit ($$$ Not Worth It)
* Vim (Free, Terminal Based, but Complex)
* Emacs (Free, but Complex)

### Web Browsers

A web browser is required for web development.
Heavily outdated browsers might not support HTML's latest features.
Therefore, it is important to have a recent web browser.
<span class="highlight-text">I recommend one that comes with built in Developer Tools such as [Google Chrome](https://www.google.com/chrome/) or [FireFox](https://www.mozilla.org/).</span>

## HTML Files

### Creating HTML Files
Once you have a text editor, you need to know how to create an HTML file. 
The exact steps to create an HTML file will depend on the text editor you are using.
Generally, you create a new file and save it with the `.html` extension.

The exact steps to create an HTML file in Visual Studio Code are as follows.

1. Click the menu: `File >> New Text File`.
2. Save the file with the extension `.html`.

Try creating an HTML file and paste the following HTML code into it:

```html
<!DOCTYPE html>
<html>
  <head>
    <title>A Basic HTML Document</title>
    <meta name="description" content="An example of a basic HTML document.">
  </head>
  <body>
    <h1>Hello, World!</h1>
    <p>
      HTML is a markup language used to describe the
      structure of text to a web browser.
    </p>
  </body>
</html>
```

You will see this exact code several times throughout the upcoming lessons. 
Don't worry about understanding it yet.

### Opening HTML in a Web Browser

Once you have an HTML file, you can open it in your web browser.
How you do this will depend on your web browser, however there several things you can try:

* Drag the HTML file onto the address bar.
* Double click the HTML file and open it in your default browser.
* Use the browser shortcut <kbd>ctrl</kbd> + <kbd>o</kbd> (Windows and Linux) or <kbd>command</kbd> + <kbd>o</kbd> (Mac).
* Type `file://` followed by the path to your HTML file into your address bar.
* Google it. Programming is all about problem solving, so if none of these tips work for your browser try googling a solution.

## Things to Remember

* HTML is a markup language.
* Markup languages are used to describe the structure of text/documents.
* HTML stands for HyperText Markup Language.
* HTML is a markup language used to describe the structure of text to web browsers.
* HTML is essential if you are interested in web development.
* HTML is displayed in a web browser.