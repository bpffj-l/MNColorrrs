\name{mn_state_colors}
\alias{mn_state_colors}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{mn_state_colors: Data set of Minnesota's branded colors
}
\description{
This data set is the State of Minnesota's branded colors, based on documentation at https://mn.gov/portal/brand/style-guide/colors/. The dataset include color names and their HEX codes.
}
\usage{
mn_state_colors
}
%- maybe also 'usage' for other objects documented here.
\arguments{
This data set takes no arguments, but you can select columns, rows, and cells from the data.
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
I followed Simon Jackson's great blog on writing custom ggplot2 color themes: https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2.
}
\author{
Ben Jaques-Leslie, Agency Policy Specialist, Minnesota Department of Human Services
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
# All of the colors
mn_state_colors

# First column of data set
mn_state_colors[1]

## The data set is currently defined as
mn_state_colors <- c(
  `green`      = "#78BE21",
  `blue`       = "#003865",
  `white` = "#FFFFFF",
  `black` = "#000000",
  `accent teal` = "#008EAA",
  `accent green` = "#0D5257",
  `accent orange`= "#8D3F2B",
  `accent purple` = "#5D295F",
  `blue gray` = "#A4BCC2",
  `cream` = "#F5E1A4",
  `sky blue` = "#9BCBEB",
  `gold` = "#FFC845",
  `dark gray` = "#53565A",
  `medium gray` = "#97999B",
  `light gray` = "#D9D9D6",
  `red` = "#A6192E",
  `orange` = "#E57200")
  }
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.


