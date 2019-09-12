% Intro Options
\ProvidesClass{TT-resume}[2019/09/09 CV class]
\NeedsTeXFormat{LaTeX2e}
\DeclareOption{print}{\def\@cv@print{}}
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}

% Package Imports
\usepackage[hmargin=1.5cm, vmargin=0.5cm]{geometry}
\usepackage[hidelinks]{hyperref}

% Publications
\usepackage{cite}
\renewcommand\refname{\vskip -1.5cm}

% Color definitions
\usepackage[usenames,dvipsnames]{xcolor} 
\definecolor{date}{HTML}{000000} 
\definecolor{primary}{HTML}{000000} 
\definecolor{headings}{HTML}{000000}
\definecolor{subheadings}{HTML}{0089C8}

% Set main fonts
\usepackage{fontspec}
\setmainfont[Color=primary, Path = fonts/lato/,BoldItalicFont=Lato-RegIta,BoldFont=Lato-Reg,ItalicFont=Lato-LigIta]{Lato-Lig}
\setsansfont[Scale=MatchLowercase,Mapping=tex-text, Path = fonts/raleway/]{Raleway-ExtraLight}


% Name command
\newcommand{\namesection}[3]{
\centering{
\color{headings}
\fontsize{40pt}{60pt}
\fontspec[Path = fonts/lato/]{Lato-Lig}\selectfont #1 
\fontspec[Path = fonts/lato/]{Lato-Hai}\selectfont #2
} \\[5pt]
\centering{
\color{subheadings}
\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{11pt}{14pt}\selectfont #3}
\noindent\makebox[\linewidth]{\color{primary}\rule{\paperwidth}{0.4pt}}
}

% Section separators 
\usepackage{titlesec}
\titlespacing{\section}{0pt}{0pt}{0pt} 
\titlespacing{\subsection}{0pt}{0pt}{0pt}
\newcommand{\sectionsep}{\vspace{8pt}}

% Headings command
\titleformat{\section}{\color{headings}
\scshape\fontspec[Path = fonts/lato/]{Lato-Reg}\fontsize{16pt}{16pt}\selectfont \raggedright\uppercase}{}{0em}{}

% Subeadings command
\titleformat{\subsection}{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{14pt}{14pt}\selectfont\bfseries\uppercase}{}{0em}{}

\newcommand{\runsubsection}[1]{
\color{subheadings}\fontspec[Path = fonts/lato/]{Lato-Bol}\fontsize{12pt}{14pt}\selectfont\bfseries\uppercase {#1} \normalfont}

% Descriptors command
\newcommand{\descript}[1]{
\color{primary}\raggedright\scshape\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{12pt}{14pt}\selectfont {#1 \\} \normalfont}

% Location command
\newcommand{\location}[1]{
\color{primary}\raggedright\fontspec[Path = fonts/raleway/]{Raleway-Medium}\fontsize{12pt}{12pt}\selectfont {#1\\} \normalfont}

% Bullet Lists with fewer gaps command
\newenvironment{tightemize}{
\vspace{-\topsep}\begin{itemize}\itemsep1pt \parskip0pt \parsep0pt}
{\end{itemize}\vspace{-\topsep}}

