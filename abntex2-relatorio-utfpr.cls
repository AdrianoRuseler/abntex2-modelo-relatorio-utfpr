%%
%% Customiza��es do abnTeX2 (http://www.abntex.net.br/) para o INEP-UFSC
%%
%% This work may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%   http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%%
%% This work has the LPPL maintenance status `maintained'.
%% 
%% The Current Maintainer of this work is Adriano Ruseler, ruseler@inep.ufsc.br
%%
%% Further information about abnTeX2 are available on http://www.abntex.net.br/
%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{abntex2-relatorio-utfpr}[2016/05/03 v2.0 Modelo baseado em abnTeX2]

\RequirePackage{ifthen}

%
% Op��es de diagrama��o de sum�rios
% sumario=tradicional    : Sum�rio tradicional do LaTeX/Memoir
% sumario=abnt-6027-2012 : Sum�rio conforme recomenda��o da ABNT NBR 6027:2012
% sumario=UFSC : Sum�rio customizado

%\newboolean{ABNTEXsumario-tradicional}     %true=titles of chapter/appendix in uppercase
%\newboolean{ABNTEXsumario-abnt-6027-2012} 
\newboolean{ABNTEXsumario-UFSC} 

%\setboolean{ABNTEXsumario-tradicional}{false}
%\setboolean{ABNTEXsumario-abnt-6027-2012}{true}
\setboolean{ABNTEXsumario-UFSC}{false}

\DeclareOption{sumario=tradicional}{%
	%	\setboolean{ABNTEXsumario-tradicional}{true}%
	%	\setboolean{ABNTEXsumario-abnt-6027-2012}{false}
	\setboolean{ABNTEXsumario-UFSC}{false}}

\DeclareOption{sumario=abnt-6027-2012}{%
	%	\setboolean{ABNTEXsumario-abnt-6027-2012}{true}
	%	\setboolean{ABNTEXsumario-tradicional}{false}
	\setboolean{ABNTEXsumario-UFSC}{false}}

\DeclareOption{sumario=UFSC}{%
	%	\setboolean{ABNTEXsumario-abnt-6027-2012}{false}
	%	\setboolean{ABNTEXsumario-tradicional}{false}
	\setboolean{ABNTEXsumario-UFSC}{true}}
%
% Repassa todos os parametros a classe abntex2, 
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{abntex2}%
}
\ProcessOptions\relax
\LoadClass{abntex2}


% sumario=abnt-6027-2012 : Sum�rio conforme recomenda��o da ABNT NBR 6027:2012, que
%    soh pode ser usado com memoir v3.6k ou superior
%   \settocpreprocessor \changes{v3.6k}{2012/09/18}{Added}
\ifdefined\settocpreprocessor
\else
\setboolean{ABNTEXsumario-tradicional}{true}
\setboolean{ABNTEXsumario-abnt-6027-2012}{false}
\setboolean{ABNTEXsumario-UFSC}{false}
\fi


\RequirePackage{lmodern}			% Usa a fonte Latin Modern			
\RequirePackage[T1]{fontenc}		% Selecao de codigos de fonte.
\RequirePackage[utf8]{inputenc}		% Codificacao do documento (convers�o autom�tica dos acentos)
\RequirePackage{color}				% Controle das cores
\RequirePackage{graphicx}			% Inclus�o de gr�ficos
\RequirePackage{microtype} 			% para melhorias de justifica��o

\RequirePackage{caption}
\RequirePackage{layouts}
% Fonte 'Times New Roman'
\RequirePackage{mathptmx}
\RequirePackage{hyperref}
% N�mero da �ltima p�gina
\RequirePackage{lastpage}
\RequirePackage{pdfpages}
\RequirePackage{fancyvrb}
\RequirePackage{rotating}
\RequirePackage{amsmath}		
\RequirePackage{amssymb}
\RequirePackage{mathrsfs}
\RequirePackage{pdflscape}
\RequirePackage{epstopdf}
\RequirePackage{multirow}
\RequirePackage{listings}
\RequirePackage{url} % Para incluir links
\RequirePackage{nomencl} % Pacote necess�rio para a lista de siglas.
\RequirePackage{mathcomp}
\RequirePackage{booktabs} % Para Tabelas
\RequirePackage{subfig}  % permite ter subfiguras
\RequirePackage{float}
\RequirePackage{siunitx} % A comprehensive (SI) units package
\RequirePackage{datetime}
\RequirePackage{rotating} % gives you the possibility to rotate any object of an arbitrary angle. 
\RequirePackage{pdflscape} % Rota��o de p�ginas no documento pdf.

% ---
% Pacotes adicionais, usados apenas no �mbito do Modelo Can�nico do abnteX2
% ---
\RequirePackage{lipsum}				% para gera��o de dummy text
% ---

\RequirePackage{tablefootnote}
\RequirePackage{longtable}
\RequirePackage{tocloft}

% --- 
% CONFIGURA��ES DE PACOTES
% --- 
\sisetup{detect-all}
\sisetup{scientific-notation = fixed, fixed-exponent = 0, round-mode = places,round-precision = 2,output-decimal-marker = {,} }
\DeclareSIUnit \VA {VA} %apparent power

% Defini��o de cores
\definecolor{mygreen}{rgb}{0,0.6,0}
\definecolor{mygray}{rgb}{0.5,0.5,0.5}
\definecolor{mymauve}{rgb}{0.58,0,0.82}

\definecolor{figcolor}{rgb}{0,0,0}  % black
\definecolor{tabcolor}{rgb}{0,0,0}  % black
\definecolor{eqncolor}{rgb}{0,0,0}  % black
\definecolor{seccolor}{rgb}{0,0,0}  % black
\definecolor{abscolor}{rgb}{0,0,0}  % black
\definecolor{linkcolor}{rgb}{0,0,0}  % black
\definecolor{citecolor}{rgb}{0,0,0}  % black
\definecolor{titlecolor}{rgb}{0,0,0}  % black
\definecolor{biocolor}{rgb}{0,0,0}  % black
\lstset{ %
	aboveskip=3mm,
	belowskip=3mm,
	backgroundcolor=\color{white},   % choose the background color; you must add \usepackage{color} or \usepackage{xcolor}
	basicstyle={\small\ttfamily},        % the size of the fonts that are used for the code
	breakatwhitespace=true,         % sets if automatic breaks should only happen at whitespace
	breaklines=true,                 % sets automatic line breaking
	captionpos=t,                    % sets the caption-position to bottom
	commentstyle=\color{mygreen},    % comment style
	columns=flexible,
	deletekeywords={...},            % if you want to delete keywords from the given language
	escapeinside={\%*}{*)},          % if you want to add LaTeX within your code
	extendedchars=true,              % lets you use non-ASCII characters; for 8-bits encodings only, does not work with UTF-8
	frame=tb,                        % adds a frame around the code
	keepspaces=true,                 % keeps spaces in text, useful for keeping indentation of code (possibly needs columns=flexible)
	keywordstyle=\color{blue},       % keyword style
	language=Matlab,                 % the language of the code
	morekeywords={*,...},            % if you want to add more keywords to the set
	numbers=none,                    % where to put the line-numbers; possible values are (none, left, right)
	numbersep=5pt,                   % how far the line-numbers are from the code
	numberstyle=\tiny\color{mygray}, % the style that is used for the line-numbers
	rulecolor=\color{black},         % if not set, the frame-color may be changed on line-breaks within not-black text (e.g. comments (green here))
	showspaces=false,                % show spaces everywhere adding particular underscores; it overrides 'showstringspaces'
	showstringspaces=false,          % underline spaces within strings only
	showtabs=false,                  % show tabs within strings adding particular underscores
	stepnumber=2,                    % the step between two line-numbers. If it's 1, each line will be numbered
	stringstyle=\color{mymauve},     % string literal style
	tabsize=3,                       % sets default tabsize to 3 spaces
	texcl=true,						 % Permite o uso de acentua��o no c�digo
	title=\lstname                   % show the filename of files included with \lstinputlisting; also try caption instead of title
}

%By default, listings does not support multi-byte encoding for source code. The extendedchar option only works for 8-bits encodings such as latin1.
%
%To handle UTF-8, you should tell listings how to interpret the special characters by defining them like so
\lstset{literate=	
	{�}{{\'a}}1 {�}{{\'e}}1 {�}{{\'i}}1 {�}{{\'o}}1 {�}{{\'u}}1
	{�}{{\'A}}1 {�}{{\'E}}1 {�}{{\'I}}1 {�}{{\'O}}1 {�}{{\'U}}1
	{�}{{\`a}}1 {�}{{\`e}}1 {�}{{\`i}}1 {�}{{\`o}}1 {�}{{\`u}}1
	{�}{{\`A}}1 {�}{{\'E}}1 {�}{{\`I}}1 {�}{{\`O}}1 {�}{{\`U}}1
	{�}{{\"a}}1 {�}{{\"e}}1 {�}{{\"i}}1 {�}{{\"o}}1 {�}{{\"u}}1
	{�}{{\"A}}1 {�}{{\"E}}1 {�}{{\"I}}1 {�}{{\"O}}1 {�}{{\"U}}1
	{�}{{\^a}}1 {�}{{\^e}}1 {�}{{\^i}}1 {�}{{\^o}}1 {�}{{\^u}}1
	{�}{{\^A}}1 {�}{{\^E}}1 {�}{{\^I}}1 {�}{{\^O}}1 {�}{{\^U}}1	 
	{�}{{\oe}}1 {�}{{\OE}}1 {�}{{\ae}}1 {�}{{\AE}}1 {�}{{\ss}}1
	{u}{{\H{u}}}1 {U}{{\H{U}}}1 {o}{{\H{o}}}1 {O}{{\H{O}}}1
	{�}{{\c c}}1 {�}{{\c C}}1 {�}{{\o}}1 {�}{{\r a}}1 {�}{{\r A}}1
	{�}{{\EUR}}1 {�}{{\pounds}}1 {�}{{\~a}}1 {�}{{\~o}}1 {�}{{\~A}}1 {�}{{\~O}}1	
}

% --- 
% 
% --- 
\RequirePackage{amsthm}
% ---
\newtheorem{axioma}{Axioma}[chapter]
\newtheorem{postulado}{Postulado}[chapter]
\newtheorem{teorema}{Teorema}[chapter]
\newtheorem{conjectura}{Conjectura}[chapter]
\newtheorem{corolario}{Coral\'ario}[teorema]
\newtheorem{lema}[teorema]{Lema}
\newtheorem{proposicao}{Proposi\c{c}\~ao}[teorema]


\theoremstyle{definition} % Commonly used in definitions, conditions, problems and examples.
\newtheorem{definicao}{Defini\c{c}\~ao}[section]
\newtheorem{exemplo}{Exemplo}[section]
\newtheorem{exercicio}{Exerc\'icio}[section]
\newtheorem{condicao}{Condi\c{c}\~ao}[section]

\theoremstyle{remark}
\newtheorem*{observacao}{Observa\c{c}\~ao}


% \def\<type>autorefname{<new name>}
\renewcommand{\tableautorefname}{Tabela}
\renewcommand{\figureautorefname}{Figura}
\renewcommand{\chapterautorefname}{Cap\'itulo}
\renewcommand{\equationautorefname}{Equa\c{c}\~ao}



% Fontes dos t�tulos e se��es 


% Tamanho da fonte padr�o do 'ABNTEX'

% http://tug.org/fonts/
% The three default family font variables and the \familydefault variable should not be confused with their respective switch:
%   http://www.forkosh.com/pstex/latexcommands.htm
% variable	value	activated by

%\encodingdefault	OT1	\normalfont, \textnormal{}
%\familydefault	\rmdefault	\normalfont, \textnormal{}
%\rmdefault	cmr	\rmfamily, \textrm{}
%\ttdefault	cmtt	\ttfamily, \texttt{}
%\sfdefault	cmss	\sffamily, \textsf{}
%\seriesdefault	m	\normalfont, \textnormal{}
%\mddefault	m	\mdseries, \textmd{}
%\bfdefault	bx	\bfseries, \textbf{}
%\shapedefault	n	\normalfont, \textnormal{}
%\updefault	n	\upshape, \textup{}
%\itdefault	it	\itshape, \textit{}
%\scdefault	sc	\scshape, \textsc{}
%\sldefault	sl	\slshape, \textsl{} 

\renewcommand{\familydefault}{cmr} % Fonte padr�o utilizada no texto
\renewcommand{\rmdefault}{cmr} % Selects a roman (i.e., serifed) font family
% \renewcommand{\sfdefault}{cmss} % Selects a sans serif font family
% \renewcommand{\ttdefault}{cmtt} % Selects a monospaced (�typewriter�) font family


\renewcommand{\ABNTEXpartfont}{\usefont{T1}{cmr}{bx}{n}} % Apendices, anexos...
%\renewcommand{\ABNTEXpartfontsize}{\fontsize{15pt}{18pt}}
\renewcommand{\ABNTEXchapterfont}{\usefont{T1}{cmr}{bx}{n}}
%\renewcommand{\ABNTEXchapterfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsectionfont}{\usefont{T1}{cmr}{m}{n}}
%\renewcommand{\ABNTEXsectionfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsubsectionfont}{\usefont{T1}{cmr}{b}{n}}
%\renewcommand{\ABNTEXsubsectionfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsubsubsectionfont}{\usefont{T1}{cmr}{m}{n}}
%\renewcommand{\ABNTEXsubsubsectionfontsize}{\fontsize{10.5pt}{12pt}}
\renewcommand{\ABNTEXsubsubsubsectionfont}{\usefont{T1}{cmr}{m}{it}}
%\renewcommand{\ABNTEXsubsubsubsectionfontsize}{\fontsize{10.5pt}{12pt}}


\captionsetup[table]{
 %  name=Tabela,
 %  listformat=empty,
 %  justification=justified,
 %  labelsep=colon,
%   position=above,
%   skip=\onelineskip,
 %  width=\linewidth,
   labelfont={normalsize},
   textfont={small},
   font={normalsize}
}

\captionsetup[figure]{
    %  name=Tabela,
	%  listformat=empty,
	%  justification=justified,
	%  labelsep=colon,
	%   position=above,
	%   skip=\onelineskip,
	%  width=\linewidth,
	labelfont={normalsize},
	textfont={small},
	font={normalsize}
}


% Comandos auxiliares
\newcommand{\showfont}{%
	(encoding: \f@encoding{},
	family: \f@family{},
	series: \f@series{},
	shape: \f@shape{},
	size: \f@size{},
	baseline: \f@baselineskip{})
	%tfsize: \tf@size{},
	%sfsize: \sf@size{},
	%sssize: \ssf@size{}
}

% Comandos auxiliares
\newcommand{\justshowfont}{%
	(\f@encoding{},
	\f@family{},
	\f@series{},
	\f@shape{},
	\f@size{},
	\f@baselineskip{})
	%tfsize: \tf@size{},
	%sfsize: \sf@size{},
	%sssize: \ssf@size{}
}


% ---
% Numeracao continua das figuras

%Numera��o dos floats por cap�tulo
\counterwithin{figure}{chapter} 
\counterwithin{table}{chapter}



% Macros for Cross-reference
\newcommand{\figref}[1]{Figura~\ref{#1}}   % Cross-reference of figures
\newcommand{\tabref}[1]{Tabela~\ref{#1}}    % Cross-reference of tables
\newcommand{\eqnref}[1]{\eqref{#1}}      % Cross-reference of equations
\newcommand{\secref}[1]{Se��o~\ref{#1}}  % Cross-reference of equations
\newcommand{\defref}[1]{Defini��o~\ref{#1}} % 

\definecolor{figcolor}{rgb}{0,0,0}  % black
\definecolor{tabcolor}{rgb}{0,0,0}  % black
\definecolor{eqncolor}{rgb}{0,0,0}  % black
\definecolor{seccolor}{rgb}{0,0,0}  % black
\definecolor{abscolor}{rgb}{0,0,0}  % black
\definecolor{linkcolor}{rgb}{0,0,0}  % black
\definecolor{citecolor}{rgb}{0,0,0}  % black
\definecolor{titlecolor}{rgb}{0,0,0}  % black
\definecolor{biocolor}{rgb}{0,0,0}  % black

% Comandos de dados - Universidade
\providecommand{\imprimiruniversidade}{}
\newcommand{\universidade}[1]{\renewcommand{\imprimiruniversidade}{#1}}
% Comandos de dados - Centro
\providecommand{\imprimircentro}{}
\newcommand{\centro}[1]{\renewcommand{\imprimircentro}{#1}}

% Comandos de dados - Departamento
\providecommand{\imprimirdepartamento}{}
\newcommand{\departamento}[1]{\renewcommand{\imprimirdepartamento}{#1}}

% Comandos de dados - Disciplina
\providecommand{\imprimirdisciplina}{}
\newcommand{\disciplina}[1]{\renewcommand{\imprimirdisciplina}{#1}}

% Comandos de dados - Disciplina
\providecommand{\imprimirprofessor}{}
\newcommand{\professor}[1]{\renewcommand{\imprimirprofessor}{#1}}

% Comandos de dados - Programa
\providecommand{\imprimirprograma}{}
\newcommand{\programa}[1]{\renewcommand{\imprimirprograma}{#1}}

% Comandos de dados - Laboratorio
\providecommand{\imprimirlaboratorio}{}
\newcommand{\laboratorio}[1]{\renewcommand{\imprimirlaboratorio}{#1}}

	

% ------------------------------------------------------------------------
% ------------------------------------------------------------------------
% Sum�rio
% ------------------------------------------------------------------------
% ------------------------------------------------------------------------

% Comando que simula a finalizacao de uma parte no bookmark e
% adiciona espaco de \part no sumario
\renewcommand{\phantompart}{%
	\bookmarksetup{startatroot}%
	\phantomsection%
	\ifthenelse{\boolean{ABNTEXsumario-UFSC}}{%
		\addtocontents{toc}{\vspace{\cftbeforechapterskip}}}{%
		\addtocontents{toc}{\vspace{\cftbeforepartskip}}}%
}
% -----
	
\renewcommand{\chapnumfont}{\chaptitlefont}
\renewcommand{\parttitlefont}{\ABNTEXpartfont\ABNTEXpartfontsize}
\renewcommand{\partnumfont}{\ABNTEXpartfont\ABNTEXpartfontsize}
\renewcommand{\partnamefont}{\ABNTEXpartfont\ABNTEXpartfontsize}



% No caso de Sumario (TOC) UFSC
%
\ifthenelse{\boolean{ABNTEXsumario-UFSC}}{%		
		
	\cftsetindents{part}{0em}{\cftlastnumwidth}
	\cftsetindents{chapter}{0em}{\cftlastnumwidth}
	\cftsetindents{section}{0em}{\cftlastnumwidth}
	\cftsetindents{subsection}{0em}{\cftlastnumwidth}
	\cftsetindents{subsubsection}{0em}{\cftlastnumwidth}
	\cftsetindents{paragraph}{0em}{\cftlastnumwidth}
	\cftsetindents{subparagraph}{0em}{\cftlastnumwidth}
	%
	\renewcommand{\tocprintchapter}{%
		\addtocontents{toc}{\cftsetindents{chapter}{0em}{\cftlastnumwidth}}}
	%
	\renewcommand{\tocinnonumchapter}{%
		\addtocontents{toc}{\cftsetindents{chapter}{\cftlastnumwidth}{2em}}%
		\cftinserthook{toc}{A}}
	%
	\renewcommand{\tocprintchapternonum}{%
		\addtocontents{toc}{\cftsetindents{chapter}{\cftlastnumwidth}{2em}}}
	%
	\renewcommand{\tocpartapendices}{%
		\addtocontents{toc}{\cftsetindents{part}{\cftlastnumwidth}{2em}}
		\cftinserthook{toc}{A}}
	%
	\renewcommand{\tocpartanexos}{%
		\addtocontents{toc}{\cftsetindents{part}{\cftlastnumwidth}{2em}}
		\cftinserthook{toc}{A}}
	%
	\setlength{\cftbeforechapterskip}{1em}
		
	%
	% Fontes das entradas do sumario
	%
	\renewcommand*{\l@chapter}[2]{%
		\l@chapapp{\uppercase{#1}}{#2}{\cftchaptername}}
		
	\renewcommand*{\l@section}[2]{%
		\l@chapapp{\ABNTEXsectionfont\uppercase{#1}}{#2}{\cftsectionname}} 
			
	\renewcommand{\cftpartfont}{\ABNTEXpartfont}
	\renewcommand{\cftpartpagefont}{\cftpartfont}
	%
	%\renewcommand{\cftchapterfont}{\ABNTEXchapterfont}
	\renewcommand{\cftchapterpagefont}{\cftchapterfont}
	%
	\renewcommand{\cftsectionfont}{\ABNTEXsectionfont}
	\renewcommand{\cftsectionpagefont}{\cftsectionfont}
	%
	\renewcommand{\cftsubsectionfont}{\ABNTEXsubsectionfont}
	\renewcommand{\cftsubsectionpagefont}{\cftsubsectionfont}
	%
	\renewcommand{\cftsubsubsectionfont}{\ABNTEXsubsubsectionfont}
	\renewcommand{\cftsubsubsectionpagefont}{\cftsubsubsectionfont}
		
	%
	\renewcommand{\cftparagraphfont}{\ABNTEXsubsubsubsectionfont}
	\renewcommand{\cftparagraphpagefont}{\cftparagraphfont}
		
	%
	% Ajusta entrada Referencias
	%
	\renewcommand{\bibsection}{%
		\chapter*{\bibname}
		\bibmark
		\ifnobibintoc\else
		\phantomsection
		\addcontentsline{toc}{chapter}{\uppercase{\bibname}}
		\fi
		\prebibhook
	}  
}{}





% ------------------------------------------------------------------------
% ------------------------------------------------------------------------
% Estilo de cap�tulos
% ------------------------------------------------------------------------
% ------------------------------------------------------------------------




% % Custom settings
\makeatletter
\newcommand\thickhrulefill{\leavevmode \leaders \hrule height 1ex \hfill \kern \z@}
\setlength\midchapskip{10pt}
\makechapterstyle{VZ14}{
	%	\thispagestyle{empty}
\setlength\beforechapskip{50pt}
\setlength\midchapskip{20pt}
\setlength\afterchapskip{20pt}
	\renewcommand\chapternamenum{}
	\renewcommand\printchaptername{}
	\renewcommand\chapnamefont{\Huge\scshape}
	\renewcommand\printchapternum{%
		\chapnamefont\null\thickhrulefill\quad
		\@chapapp\space\thechapter\quad\thickhrulefill}
	\renewcommand\printchapternonum{%
		\par\thickhrulefill\par\vskip\midchapskip
		\hrule\vskip\midchapskip
	}
	\renewcommand\chaptitlefont{\huge\scshape\centering}
	\renewcommand\afterchapternum{%
		\par\nobreak\vskip\midchapskip\hrule\vskip\midchapskip}
	\renewcommand\afterchaptertitle{%
		\par\vskip\midchapskip\hrule\nobreak\vskip\afterchapskip}
}

\makeatother

% Veja outros estilos em:
% http://www.tex.ac.uk/tex-archive/info/MemoirChapStyles/MemoirChapStyles.pdf




\renewenvironment{resumo}[1][\resumoname]{%
   \PRIVATEbookmarkthis{#1}
 %  \renewcommand{\abstractnamefont}{\chaptitlefont}
 %  \renewcommand{\abstractname}{\ABNTEXchapterupperifneeded{#1}}
  \pretextualchapter{#1}
  }{\PRIVATEclearpageifneeded}
% ------------------------------------------------------------------------
% ------------------------------------------------------------------------
% Configura layout
% ------------------------------------------------------------------------
% ------------------------------------------------------------------------

% -----
% Declaracoes de cabecalhos 
% -----
% Cabecalho padrao
\makepagestyle{abntheadings}
\makeevenhead{abntheadings}{\ABNTEXfontereduzida\thepage}{}{\ABNTEXfontereduzida\textit\leftmark}
\makeoddhead{abntheadings}{\ABNTEXfontereduzida\textit\rightmark}{}{\ABNTEXfontereduzida\thepage}
\makeheadrule{abntheadings}{\textwidth}{\normalrulethickness}

% Cabecalho do inicio do capitulo
\makepagestyle{abntchapfirst}
\makeoddhead{abntchapfirst}{}{}{\ABNTEXfontereduzida\thepage}
% ---

% ------------------------------------------------------------------------
%% criar um novo estilo incluindo logos da UFSC e do INEP
% ------------------------------------------------------------------------
\makepagestyle{abntheadingsLogo} %  
\makeevenhead{abntheadingsLogo}{\ABNTEXfontereduzida\thepage}{\ABNTEXfontereduzida\textit\leftmark}{\includegraphics[width=20pt]{Logos/inep.pdf}}
\makeoddhead{abntheadingsLogo}{\includegraphics[width=15pt]{Logos/ufsc.pdf}}{\ABNTEXfontereduzida\textit\rightmark}{\ABNTEXfontereduzida\thepage}
\makeheadrule{abntheadingsLogo}{\textwidth}{\normalrulethickness}

\makeevenfoot{abntheadingsLogo}{}{}{\ABNTEXfontereduzida\textsc \imprimirautor}
\makeoddfoot{abntheadingsLogo}{\ABNTEXfontereduzida\textsc \imprimirautor}{}{}

% ---
% Configura layout para elementos textuais
\renewcommand{\textual}{%
	\ifthenelse{\equal{\ABNTEXisarticle}{true}}{%
		\pagestyle{plain}%
		}{%else  
		\pagestyle{abntheadings}% Estilo original do Abntex2
		% \aliaspagestyle{chapter}{abntchapfirst}% customizing chapter pagestyle
		\aliaspagestyle{chapter}{empty} % Remove a numera��o das p�ginas no in�cio dos cap�tulos.
	}  
	\nouppercaseheads%
	\bookmarksetup{startatroot}% 
}
	
	
	
% ---
% Configura layout para elementos textuais
\newcommand{\textualINEPUFSC}{%
	\ifthenelse{\equal{\ABNTEXisarticle}{true}}{%
		\pagestyle{plain}%
		}{%else  
		%   \pagestyle{abntheadings}% Estilo original do Abntex2
		\pagestyle{abntheadingsLogo}%
		% \aliaspagestyle{chapter}{abntchapfirst}% customizing chapter pagestyle
		\aliaspagestyle{chapter}{empty} % Remove a numera��o das p�ginas no in�cio dos cap�tulos.
	}  
	\nouppercaseheads%
	\bookmarksetup{startatroot}% 
}


% ------------------------------------------------------------------------
% ------------------------------------------------------------------------
% Comandos e ambientes de editoracao APENDICES e ANEXOS
% ------------------------------------------------------------------------
% ------------------------------------------------------------------------


% ---
% Imprime uma pagina de divisao no estilo parte
\renewcommand{\partpage}{%
  \cleardoublepage
 %\phantomsection
 % \addcontentsline{toc}{part}{\appendixtocname}%
  \appendixpage*
}

	
% ------------------------------------------------------------------------
% ------------------------------------------------------------------------
% IMPRESSOES PADROES DE CAPA E FOLHA DE ROSTO
% ------------------------------------------------------------------------
% ------------------------------------------------------------------------

\newcommand*\varhrulefill[1][0.4pt]{\leavevmode\leaders\hrule height#1\hfill\kern0pt}

% ---
% Impress�o da Capa
\newcommand{\imprimircapaUFSC}{%
	\begin{capa}%
		\center
		\includegraphics[width=0.5\textwidth]{Logos/UTFPR.eps}~\\[1cm]


		\textsc{\LARGE \imprimiruniversidade}\\[0.8cm] % Name of your university/college
		\textsc{\Large \imprimirdepartamento}\\[0.4cm] % Major heading such as course name
		\textsc{\large \imprimirdisciplina}\\[0.8cm] % Minor heading such as course title

		\vfill
		\noindent\varhrulefill[0.4mm] \\[0.4cm]
		\ABNTEXchapterfont\bfseries\Large\MakeUppercase{\imprimirtitulo} \\[0.2cm]
		\noindent\varhrulefill[0.4mm] 
		\vfill

		\ABNTEXchapterfont\large\imprimirautor
		
		\vfill
		
		\large\imprimirlocal
		
		\large\imprimirdata
		
		\vspace*{1cm}
	\end{capa}
}
% ---

% folha de rosto 

\makeatletter

\renewcommand{\folhaderostocontent}{
\begin{center}
{\ABNTEXchapterfont\large \MakeUppercase{\imprimiruniversidade}\\ \MakeUppercase{\imprimirdepartamento}\\ \MakeUppercase{\imprimirdisciplina}\\}

    \vspace*{1cm}

{\ABNTEXchapterfont\large\imprimirautor}

\vspace*{\fill}\vspace*{\fill}

\begin{center}
\ABNTEXchapterfont\bfseries\Large\imprimirtitulo
\end{center}

\vspace*{\fill}

\abntex@ifnotempty{\imprimirpreambulo}{%
  \hspace{.45\textwidth}
  \begin{minipage}{.5\textwidth}
  \SingleSpacing
  \imprimirpreambulo
 \SingleSpacing
  \textbf{\imprimirprofessor}
  \end{minipage}%
  \vspace*{\fill}
}%

%{\large\imprimirorientadorRotulo~\imprimirdisciplina\par}


\abntex@ifnotempty{\imprimircoorientador}{%
  {\large\imprimircoorientadorRotulo~\imprimircoorientador}%
}%

\vspace*{\fill}

{\abntex@ifnotempty{\imprimirinstituicao}{\imprimirinstituicao\vspace*{\fill}}}

{\large\imprimirlocal}

\par

{\large\imprimirdata}
\vspace*{1cm}
\end{center}
}
\makeatother





