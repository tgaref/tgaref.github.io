<!--
Add here global page variables to use throughout your
website.
The website_* must be defined for the RSS to work
-->
@def website_title = "Theodoulos Garefalakis"
@def website_descr = "Home page"
@def website_url   = "localhost:8000"

@def author = "Theodoulos Garefalakis"

@def mintoclevel = 2

@def ishome = false

@def isinfo = false
@def iscalendar = false
@def ismaterial = false
@def isassignments = false
@def isannouncements = false

@def div_content = "container"

<!--
Add here files or directories that should be ignored by Franklin, otherwise
these files might be copied and, if markdown, processed by Franklin which
you might not want. Indicate directories by ending the name with a `/`.
-->
@def ignore = ["node_modules/", "franklin", "franklin.pub"]

<!--
Add here global latex commands to use throughout your
pages. It can be math commands but does not need to be.
For instance:
* \newcommand{\phrase}{This is a long phrase to copy.}
-->
\newcommand{\an}[1]{\langle #1 \rangle}
\newcommand{\R}{\mathbb R}
\newcommand{\Z}{\mathbb Z}
\newcommand{\F}{\mathbb F}
\newcommand{\ff}[1]{{\mathbb F}_{#1}}
\newcommand{\scal}[1]{\langle #1 \rangle}
\newcommand{\wt}{\mathrm{wt}}
\newcommand{\box}[1]{
@@box
#1
@@}
\newcommand{\coursenav}{
~~~
  <div class="tabs is-toggle is-fullwidth course-tabs">
  <ul>
    <li class={{ if isinfo }} "active" {{ else }} "inactive" {{ end }}>
      <a href={{ fill info }}>
        <span>Πληροφοριες</span>	
      </a>
    </li>
    <li class={{ if isannouncements }} "active" {{ else }} "inactive" {{ end }}>
      <a href={{ fill announcements }}>
        <span>Ανακοινωσεις</span>
      </a>
    </li>
    <li class={{ if iscalendar }} "active" {{ else }} "inactive" {{ end }}>
      <a href={{ fill calendar }}>
        <span>Ημερολογιο</span>
      </a>
    </li>
    <li class={{ if isassignments }} "active" {{ else }} "inactive" {{ end }}>
      <a href={{ fill assignments }}>
        <span>Εργασιες</span>
      </a>
    </li>
    <li class={{ if ismaterial }} "active" {{ else }} "inactive" {{ end }}>
      <a href={{ fill material }}>
        <span>Διδακτικο Υλικο</span>
      </a>
    </li>
  </ul>
  </div>  
~~~
}
