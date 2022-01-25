\name{mn_state_cols}
\alias{mn_state_cols}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{mn_state_cols: Selects Minnesota's branded colors
%%  ~~function to do ... ~~
}
\description{
This function allows you to select the color form mn_state_cols by name.
}
\usage{
mn_state_cols(...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{...}{
Arguments for this functions are the names of the Minnesota state branded colors: green, blue, white, black, accent teal, accent green, accent orange, accent purple, blue gray, cream, sky blue, gold, dark gray, medium gray, light gray, red, and orange.
}
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
mn_state_cols()

# MN state green
mn_state_cols("green")

# MN state green and blue
mn_state_cols("green", "blue")

## The function is currently defined as
mn_state_cols <- function(...) {
  cols <- c(...)

  if (is.null(cols))
    return (mn_state_colors)

  mn_state_colors[cols]
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

