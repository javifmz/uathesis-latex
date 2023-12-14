\def\fileversion{0.1}
\def\filedate{2019/04/14}
\def\fileauthor{Javi Fernández}
\def\fileurl{https://github.com/javifmz/uathesis-latex}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uathesis-es}[\filedate\space Version \fileversion\space by \fileauthor (\fileurl)]

% ----------------------------------------------
% Variables
% ----------------------------------------------

% Department (optional)
\newcommand{\department}[1]{\def\@department{#1}}

% School
\def\@school{\@latex@error{No se ha especificado ninguna facultad o escuela (\noexpand\school)}\@ehc}
\newcommand{\school}[1]{\def\@school{#1}}

% International
\newcommand{\international}[1]{\def\@international{}}

% Program
\def\@program{\@latex@error{No se ha especificado ningún programa de doctorado (\noexpand\program)}\@ehc}
\newcommand{\program}[1]{\def\@program{#1}}

% Supervisor
\def\@supervisor{\@latex@error{No se ha especificado ningún director (\noexpand\supervisor)}\@ehc}
\newcommand{\supervisor}[1]{\def\@supervisor{#1}}
\def\and{\par\vskip 0.5em}

% Funding (optional)
\newcommand{\funding}[1]{\def\@funding{#1}}

% ----------------------------------------------
% Inherit from book class
% ----------------------------------------------

\LoadClass[a4paper]{book}

% ----------------------------------------------
% Packages
% ----------------------------------------------

\usepackage{graphicx}
\usepackage[utf8]{inputenc} % Permitir acentos
\usepackage[spanish]{babel} % Títulos en castellano

% ----------------------------------------------
% Title page
% ----------------------------------------------

\def\maketitle{\begin{titlepage}
  \let\footnotesize\small
  \let\footnoterule\relax
  \let \footnote \thanks
  \begin{center}%
    \includegraphics[width=7cm]{img/logo-ua}\par
    \vskip 25\p@
    \expandafter\ifx\csname @department\endcsname\relax\else
        {\large \@department\par}
        \vskip 0.5em
    \fi
    {\large \@school\par}
    \vskip 40\p@
    {\huge {\bfseries \@title} \par}%
    \vskip 40\p@
    {\LARGE
     \lineskip .75em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vspace*{\fill}
    \textit{Tesis presentada para aspirar al grado de}\par
    \vskip 1em
    DOCTOR O DOCTORA POR LA UNIVERSIDAD DE ALICANTE\par
    \expandafter\ifx\csname @international\endcsname\relax\else
        \vskip 0.5em
        MENCIÓN DE DOCTOR O DOCTORA INTERNACIONAL\par
    \fi
    \vskip 0.5em
    \MakeUppercase{\@program} \par
    \vskip 2em%
    \textit{Dirigida por}\par
    \vskip 1em
    \@supervisor \par
    \expandafter\ifx\csname @funding\endcsname\relax\else
        \vskip 2em
        \@funding\par
    \fi
  \end{center}\par
  \@thanks
  \vfil\null
  \end{titlepage}%
  \setcounter{footnote}{0}%
  \global\let\thanks\relax
  \global\let\maketitle\relax
  \global\let\@thanks\@empty
  \global\let\@author\@empty
  \global\let\@title\@empty
  \global\let\@subtitle\@empty
  \global\let\title\relax
  \global\let\subtitle\relax
  \global\let\author\relax
  \global\let\date\relax
  \global\let\and\relax
  \setlength{\parskip}{0.5em} % Separación de párrafos
}


