\name{mn_state_palettes}
\alias{mn_state_palettes}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{mn_state_palettes: Defines palettes for Minnesota's branded colors
%%  ~~function to do ... ~~
}
\description{
This list groups the State of Minnesota's branded colors by their pallettes, based on documentation at https://mn.gov/portal/brand/style-guide/colors/. The list includes the colors and their HEX codes, and their pallette.
}
\usage{
mn_state_palettes
}
%- maybe also 'usage' for other objects documented here.
\arguments{
This lists takes no arguments, but you can select columns, rows, and cells from the list.
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
While list takes no arguments, the palette names are: primary brand, accent, extended accent, nuetral accent, and safety.
}
\examples{
# All of the colors
mn_state_palettes

# First item of the list
mn_state_palettes[1]

# Primary brand colors
mn_state_palettes$`primary brand`

## The list is currently defined as
mn_state_palettes <- list(
  `primary brand`  = mn_state_cols("blue", "green", "white", "black"),

  `accent`  = mn_state_cols("accent teal","accent green","accent orange","accent purple"),

  `extended accent`   = mn_state_cols("blue gray", "cream", "sky blue", "gold"),

  `nuetral accent` = mn_state_cols("dark gray", "medium gray", "light gray"),

  `safety`  = mn_state_cols("red", "orange")
)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.

