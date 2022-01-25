\name{mn_state_pal}
\alias{mn_state_pal}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{mn_state_pal: Accesses and interpolates Minnesota's branded colors
%%  ~~function to do ... ~~
}
\description{
This function accesses and interpolates the State of Minnesota's branded colors by their pallettes, based on documentation at https://mn.gov/portal/brand/style-guide/colors/, to pass the values. This function gets a pallete by name from the list ("primary brand" by default), has a boolean condition determining whether to reverse the order or not, and additional arguments to pass on to colorRampPallete().
}
\usage{
mn_state_pal(palette = "primary brand", reverse = FALSE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{palette}{
The name of the palette of Minnesota branded colors. Default is primary brand.
}
  \item{reverse}{
Boolean condition to reverse order of colors or not. Default is false.
}
  \item{...}{
Other arguments to pass to the colorRampPallete() function.
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
# Returns the colorRampPallete() function with defaults
mn_state_pal()

# Interpolates the default palette to length 10
mn_state_pal()(10)

# Interpolates the "accent" palette to length 20
mn_state_pal(palette = "accent")(20)

## The list is currently defined as
mn_state_pal <- function(palette = "primary brand", reverse = FALSE, ...) {
  pal <- mn_state_palettes[[palette]]

  if (reverse) pal <- rev(pal)

  colorRampPalette(pal, ...)
}
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.


