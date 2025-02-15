Julia-Inspecting-Arrays
========================================================
author: 
date: 
autosize: true

First Slide
========================================================
\documentclass[Julia-Main.tex]{subfiles}
\begin{document}
	
%===================================================================================================================%
%\subsection*{Finding out about an array}

\begin{frame}[fragile]
\textbf{Finding out about an array}
	
	With our 2D array:
	
	%------------------------------------------------%
	\begin{framed}
		\begin{verbatim}
		julia> a2 = [1 2 3; 4 5 6; 7 8 9]
		3x3 Array{Int64,2}:
		1  2  3
		4  5  6
		7  8  9
		\end{verbatim}
	\end{framed}
	%------------------------------------------------%
\end{frame}
%===================================================================================================================%

\begin{frame}[fragile]
	we can find out more about it using the following functions:
	\begin{itemize}
		\item \texttt{ndims()}
		\item \texttt{size()}
		\item \texttt{length()}
		\item \texttt{countnz()}
	\end{itemize}
\end{frame}
%===================================================================================================================%

\begin{frame}[fragile] 
	\texttt{ndims()} returns the number of dimensions, ie 1 for a vector, 2 for a table, and so on:
	%------------------------------------------------%
	\begin{framed}
		\begin{verbatim}
		julia> ndims(a2)
		2
		\end{verbatim}
	\end{framed}
	%------------------------------------------------% 
	
	\texttt{size()} returns the row and column count of the array, in the form of a tuple:
	%------------------------------------------------%
	\begin{framed}
		\begin{verbatim}
		julia> size(a2)
		(3,3)
		\end{verbatim}
	\end{framed}
	%------------------------------------------------%
	
\end{frame}
%===================================================================================================================%

\begin{frame}[fragile]
	\texttt{length()} tells you how many elements the array contains:
	%------------------------------------------------%
	\begin{framed}
		\begin{verbatim}
		julia> length(a2)
		9
		\end{verbatim}
	\end{framed}
	%------------------------------------------------% 
	\texttt{countnz()} tells you how many non-zero elements there are:
	%------------------------------------------------%
	\begin{framed}
		\begin{verbatim}
		julia> countnz(a2)
		9
		\end{verbatim}
	\end{framed}
	%------------------------------------------------%
\end{frame}
%===================================================================================================================%

\begin{frame}[fragile]
\begin{itemize}
\item	There are two related functions for converting between row/column numbers and array index numbers, 
	\texttt{ind2sub()} and \texttt{sub2ind()}. 
\item Row 1, Column 1 is easy, of course - it's element 1, 
\item Row 3, Column 7 is harder to work out. 
	\texttt{ind2sub()} takes the total rows and columns, and a element index. 
\end{itemize}	
\end{frame}

%===================================================================================================================%

\begin{frame}[fragile]
	
	For example, \texttt{ind2sub(size(a2), 5)} returns the row and column for the fifth element, in the form of a tuple:
	%------------------------------------------------%
	\begin{framed}
		\begin{verbatim}
		julia> ind2sub(size(a2), 5)
		(2,2)
		\end{verbatim}
	\end{framed}
	%------------------------------------------------%
\end{frame}

%===================================================================================================================%

\begin{frame}[fragile]
	With a loop, you could look at the row/column numbers of every element in an array:
	%------------------------------------------------%
	\begin{framed}
		\begin{verbatim}
		julia> for i in 1:length(a2)
		println(ind2sub(size(a2), i), " ", a2[i])
		end
		(1,1)    1
		(2,1)    4
		(3,1)    7
		..........
		(1,3)    3
		(2,3)    6
		(3,3)    9
		\end{verbatim}
	\end{framed}
	%------------------------------------------------% 
\end{frame}

%===================================================================================================================%

\begin{frame}[fragile]
To go in the reverse direction, use \texttt{sub2ind()}.
%------------------------------------------------%
\begin{framed}
\begin{verbatim}
julia> a2[sub2ind((3,3), 2, 1)]
		
\end{verbatim}
\end{framed}
finds you the element at row 2, column 1, for an array with dimensions (3,3).
%------------------------------------------------%
\end{frame}
%===================================================================================================================%
\end{document}


