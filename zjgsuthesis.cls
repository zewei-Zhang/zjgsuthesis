%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Zhejiang Gongshang University Undergraduate Thesis/Design Template.
% Author: Zewei Zhang
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{zjgsuthesis}[2022/04/26 For ZJGSU thesis.]

\LoadClass[a4paper, UTF8]{article}

\RequirePackage[left=25mm, right=25mm, top=35mm, bottom=25mm]{geometry}
\RequirePackage{amsmath,amssymb}
\RequirePackage{enumerate}
\RequirePackage{tabularx}
\RequirePackage{fontspec}
\RequirePackage{titletoc}
\RequirePackage{titlesec}
\RequirePackage{indentfirst}
\RequirePackage[CJKmath=true]{xeCJK}
\RequirePackage{fancyhdr}
\RequirePackage{fancybox}
\RequirePackage{graphicx}
\RequirePackage{caption}
\RequirePackage{chngcntr}
\RequirePackage{appendix}
\RequirePackage{array}
\RequirePackage{hyperref}


\CJKfamily{宋体}

%设置章节格式和目录中的显示
%\titleformat{command}[shape]{format}{label}{sep}{before}[after]
\titleformat{\section}
{\centering\CJKfamily{黑体}\fontsize{15pt}{22.5pt}\bfseries}
{第\arabic{section} 章}
{1em}
{}

\titleformat{\subsection}
{\CJKfamily{黑体}\fontsize{14pt}{21pt}\bfseries}
{\arabic{section}.\arabic{subsection}}
{1em}
{}

\titleformat{\subsubsection}
{\CJKfamily{黑体}\fontsize{12pt}{18pt}\bfseries}
{\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}
{1em}
{}

\titlecontents{section}
[0em] 										%左间距
{\fontsize{12pt}{15pt}}						%有序号节字体格式
{\thecontentslabel\hspace{1em}}				%序号，内容格式和距离
{\fontsize{12pt}{15pt}}						%无序号字体格式
{\titlerule*{.}\contentspage}  			    %中间线
[\vspace{0em}]							%section上下间距

\titlecontents{subsection}
[2em] 										
{\fontsize{12pt}{15pt}}						
{\thecontentslabel\hspace{1em}}				
{}											
{\titlerule*{.}\contentspage}  			    
[\vspace{0em}]							

\titlecontents{subsubsection}
[4em] 									
{\fontsize{12pt}{15pt}}						
{\thecontentslabel\hspace{1em}}				
{}											
{\titlerule*{.}\contentspage}  			   
[\vspace{0em}]							


%重定义部分命令
\renewcommand\contentsname{\CJKfamily{黑体}\fontsize{15pt}{18.75pt}目\hspace{2em}录}
\renewcommand\refname{\centering \CJKfamily{黑体}\fontsize{15pt}{22.5pt}\selectfont 参~考~文~献}
\renewcommand\arraystretch{1.25}

%设置图和表的标题
% https://mirror-hk.koddos.net/CTAN/macros/latex/contrib/caption/caption.pdf
\captionsetup[figure]{format=plain,name={图},labelsep=quad,font=small} 
\captionsetup[table]{format=plain,name={表},labelsep=quad,font=small} 


%图，表和行间式根据当前章进行编号
\counterwithin{figure}{section}
\counterwithin{table}{section}
\numberwithin{equation}{section}


%页眉与页脚设置
\fancyhead[L]{\begin{minipage}[c]{0.06\textwidth}
		\includegraphics[height=13mm]{zjgsu.png}
	\end{minipage}
}
\fancyhead[R]{\begin{minipage}[c]{0.2\textwidth}
		\fontsize{9pt}{11.25pt}\selectfont
		毕业论文：正文                           %可修改此处“正文”为“开题报告”，“文献综述”和“外文翻译”
	\end{minipage}
}
\fancyfoot[C]{\fontsize{9pt}{9pt}\selectfont -\thepage- }
\setlength{\voffset}{-10mm}
\setlength{\footskip}{5mm}
\setlength{\topmargin}{0mm}
\setlength{\headsep}{12mm}
\renewcommand{\headrulewidth}{0.2mm}
\setlength{\parindent}{24pt}
\pagestyle{fancy}


\title{\vspace{6cm}{\fontsize{36pt}{45pt}\selectfont\textbf{毕业论文（设计）正文}}}
\date{}


%文档初始化
\newcommand{\initdoc}{
	\newpage	
	\pagenumbering{Roman}	
	\setcounter{page}{1}
	\fontsize{12pt}{21pt}\selectfont
}


%设置标题
\newcommand{\newtitle}[1]{
	\maketitle
	\begin{center}
		\vspace{-2em}\CJKfamily{黑体}\fontsize{16pt}{20pt}\selectfont #1
	\end{center}
	\thispagestyle{empty}
}


%中文摘要
\newcommand{\zhaiyao}[2]{
	\clearpage
	~
	\vspace{-7mm}
	\section*{摘\hspace{2em}要}
	\addcontentsline{toc}{section}{摘\hspace{2em}要}
	
	#1
	
	\vspace{16.5pt}
	\noindent\textbf{关键词：}#2
}


%abstract
\newcommand{\newabstract}[3]{
	\clearpage
	~
	\vspace{-7mm}
	{
		\fontspec{Times New Roman}\fontsize{12pt}{21pt}\selectfont
		\begin{center}
			\fontsize{15pt}{18.75pt}\selectfont
			\textbf{#1}
		\end{center}	
		\section*{Abstract}
		\addcontentsline{toc}{section}{Abstract}
		
		\vspace{2mm}
		#2
		
		\vspace{16.5pt}
		\noindent\textbf{Key Words:}#3
	}
}


%生成目录
\newcommand{\directory}{
	\newpage
	~
	\vspace{-7mm}
	\begin{center}
		\tableofcontents
	\end{center}
}


%重置页码编号
\newcommand{\startdoc}{
	\newpage
	\pagenumbering{arabic}
	\setcounter{page}{1}
}


%设置参考文献格式
\newcommand{\setref}{
	\fontsize{10.5pt}{13.125pt}\selectfont
	\addtolength{\itemsep}{-0.5 em}
	\addcontentsline{toc}{section}{参~考~文~献}
}


%初始化附录环境
\newcommand{\initappandices}{
	\newcounter{counterA}
	\setcounter{counterA}{0}
	\renewcommand{\thetable}{\Alph{counterA}.\arabic{table}}
	\renewcommand{\thefigure}{\Alph{counterA}.\arabic{figure}}
	\renewcommand{\theequation}{\Alph{counterA}.\arabic{equation}}
}


%添加新的附录，参数为附录名
\newcommand{\newappendix}[1]{
	\clearpage
	~
	\vspace{-7mm}
	\stepcounter{counterA}
	\setcounter{table}{0}
	\setcounter{figure}{0}
	\setcounter{equation}{0}
	\section*{附录\Alph{counterA}~~#1}
	\addcontentsline{toc}{section}{附录\Alph{counterA}~~#1}
}


%添加致谢
\newcommand{\acknowledgment}{
	\clearpage
	~
	\vspace{-7mm}
	\section*{致\hspace{2em}谢}
	\addcontentsline{toc}{section}{致\hspace{2em}谢}
}



%自定义数学符号或运算符
\DeclareMathOperator\Supp{Supp}
\DeclareMathOperator\mean{mean}
\DeclareMathOperator\std{std}
\DeclareMathOperator\poly{poly}
\DeclareMathOperator\polylog{polylog}


