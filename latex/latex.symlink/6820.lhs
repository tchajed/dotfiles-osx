\documentclass{article}

%include lhs2TeX.fmt

\usepackage{amsmath, amssymb}
\usepackage{url}
\usepackage{tabularx}
\usepackage{inconsolata}
\usepackage[T1]{fontenc}
\usepackage[pdftex]{graphicx, color}

\usepackage{comment}
% makes \begin{conceal}...\end{conceal} a comment;
% intended for hiding code that should be compiled
\excludecomment{conceal}

\newcommand{\prob}[1]{\noindent\textbf{#1} \nopagebreak}

%-- Commands for header
\renewcommand{\title}[1]{\textbf{#1}\\}
\renewcommand{\line}{\begin{tabularx}{\textwidth}{X>{\raggedleft}X}\hline\\\end{tabularx}\\[-0.5cm]}
\newcommand{\leftright}[2]{\begin{tabularx}{\textwidth}{X>{\raggedleft}X}#1%
& #2\\\end{tabularx}\\[-0.5cm]}

\newlength{\oldparindent}
\newenvironment{code}
{\tt\setlength{\oldparindent}{\parindent}
\setlength{\parindent}{0pt}}
{\setlength{\parindent}{\oldparindent}}

\newsavebox{\spaceb}
\newsavebox{\tabb}
\savebox{\spaceb}[1ex]{~}
\savebox{\tabb}[4ex]{~}
\newcommand{\hsspace}{\usebox{\spaceb}}
\newcommand{\hstab}{\usebox{\tabb}}

\begin{document}

\title{6.820 PS<+ PS NUM +> Problem <+ NUM +>}
\line
\leftright{\today}{Tej Chajed}

\begin{conceal}
\begin{code}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
-- {-# OPTIONS_GHC -fno-warn-missing-signatures #-}

-- {-# ANN module "HLint: ignore Redundant bracket" #-}
main :: IO ()
main = return ()

\end{code}
\end{conceal}

\end{document}
