\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{Phenikaa-report}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\LoadClass[12pt,a4paper]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage{anyfontsize,amsmath,amssymb}

\RequirePackage{geometry,graphicx,indentfirst,setspace}
\RequirePackage{booktabs}
\RequirePackage[center]{caption}

\RequirePackage{fancyhdr,hyperref}
\RequirePackage[super,square,sort]{natbib}

% Change to '[english,vietnamese]' to use Vietnamese labels
\RequirePackage[ngerman]{babel}

% Custom commands
\newcommand{\Month}{
  \ifcase \the\month
  \or Januar
  \or Februar
  \or März
  \or April
  \or Mai
  \or Juni
  \or Juli
  \or August
  \or September
  \or Oktober
  \or November
  \or Dezember
  \fi
}

\newcommand{\@uniname}{Industrie- und Handelskammer}

\newcommand{\@deptname}{Abschlussprüfung zum Data Analyst (IHK)}
\newcommand{\deptname}[1]{\renewcommand{\@deptname}{#1}}

\newcommand{\@coursename}{Course name}
\newcommand{\coursename}[1]{\renewcommand{\@coursename}{#1}}

\newcommand{\@reporttype}{Assignment Report}
\newcommand{\reporttype}[1]{\renewcommand{\@reporttype}{#1}}

\renewcommand{\@title}{Report title}

\newcommand{\@advisor}{Advisor}
\newcommand{\advisor}[1]{\renewcommand{\@advisor}{#1}}

\newcommand{\@stuname}{STUDENT:\ H (xxxxxxx)}
\newcommand{\stuname}[1]{\renewcommand{\@stuname}{#1}}

\newcommand{\@reportplace}{Deutschland}
\newcommand{\reportplace}[1]{\renewcommand{\@reportplace}{#1}}

\newcommand{\@reporttime}{\Month \the\year}
\newcommand{\reporttime}[1]{\renewcommand{\@reporttime}{#1}}

% Configurations
%\graphicspath{{subdir1/}{subdir2/}{subdir3/}...{subdirn/}}

\geometry{
  paper=a4paper,
  left=3cm,
  right=2cm,
  vmargin=2cm,
  includeheadfoot=true,
  headheight=35.5pt
}

\onehalfspacing
\raggedbottom
\renewcommand{\arraystretch}{1.2}

% Set depth of numbering for sections and table of contents
\setcounter{secnumdepth}{3}
\setcounter{tocdepth}{3}

% Set depth of numbering for counters
\AtBeginDocument{\counterwithin{equation}{section}}
\AtBeginDocument{\counterwithin{table}{section}}
\AtBeginDocument{\counterwithin{figure}{section}}

\AtBeginDocument{\renewcommand*\bibname{Literaturverzeichnis}}

\hypersetup{
  colorlinks=true,
  linkcolor=black,
  citecolor=red,
  urlcolor=blue
}

\renewcommand{\headrulewidth}{0.3pt}
\renewcommand{\footrulewidth}{0pt}

\pagestyle{fancy}
\fancyhf{}

%\renewcommand{\subsectionmark}[1]{\markright{\thesubsection.\ #1}}

% The drawing units are interpreted as multiples of \unitlength
% unless a unit is given
%\setlength{\unitlength}{1pt}

\if@twoside
  \fancyhead[EL]{
    \bfseries
    Atca, Koua, Dietrich
  }
  \fancyhead[OR]{
    \bfseries
    Atca, Koua, Dietrich
  }
\else
  \fancyhead[R]{
    \bfseries
    Atca, Koua, Dietrich
  }
\fi

\fancyfoot[C]{\thepage}

% Custom pages and sections
\newcommand{\coverpage}{
  \pagestyle{empty}
  \newpage
  \thispagestyle{empty}
  
  \begin{center}
    % Header-Bereich
    \vspace*{0.5cm}
    {\Large\bfseries\MakeUppercase{\@uniname}}
    
    \vspace{0.3cm}
    {\large\MakeUppercase{\@deptname}}
    
    % Logo-Bereich
    \vspace{1.5cm}
    \includegraphics[width=6cm]{graphics/Logo_IHK.png}
    
    % Titel-Bereich
    \vspace{2cm}
    \begin{minipage}{0.85\textwidth}
      \centering
      {\Large\bfseries\@coursename}
      
      \vspace{0.6cm}
      \rule{0.5\textwidth}{1.5pt}
      
      \vspace{0.5cm}
      {\large\@reporttype}
      
      \vspace{0.8cm}
      {\LARGE\bfseries\@title}
    \end{minipage}
    
    % Prüfungskomitee-Bereich (ersetzt Autoren-Bereich)
    \vspace{2.5cm}
    \begin{flushleft}
      \begin{minipage}{0.8\textwidth}
        \textbf{Herr Alim Atca, MSc.} \hfill Autor \\
        \textbf{Herr Lewis Koua, MSc.} \hfill Autor \\
        \textbf{Herr Dominik Dietrich, MSc.} \hfill Autor \\
        \textbf{Frau Maddalena Zaffiro} \hfill Prüferin \\
      \end{minipage}
    \end{flushleft}
    
    % Datum-Bereich
    \vspace{2cm}
    {\large Abgabefrist: 10.02.2026}
    
    \vspace{1cm}
  \end{center}

  \cleardoublepage
  \pagestyle{fancy}
}
