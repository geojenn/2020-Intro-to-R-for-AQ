R for Air Quality - Introduction
================
Jenny St. Clair, Environmental Data Specialist, MARAMA
April 7, 2020

R for Air Quality - Introduction <img src="marama_logo.png" align="right" height="139" />
=========================================================================================

<img src="marama_logo.png" width="30%" />

------------------------------------------------------------------------

Q & A
-----

-   Please submit questions in the question box.
-   We will answer as many questions as possible during this webinar. If we can't get to your question, we will respond via email.

------------------------------------------------------------------------

Overview
--------

-   About R
-   The bad vs. the good
-   Scripts (.R) and RMarkdown files (.Rmd)
-   Packages
-   Coding in R
    -   Functions
    -   Object names
    -   Importing data
    -   Calling columns in a dataframe with $
    -   Storing variables, temporary objects
    -   Data types
    -   Data structures
    -   Missing values - NA
    -   Logical operators
-   Best practices
    -   R Projects vs. working directories
    -   Debugging

Garrett Grolemund and Hadley Wickham's book, "R for Data Science" was instrumental in developing this webinar series. <https://r4ds.had.co.nz/>

------------------------------------------------------------------------

About R
-------

-   Statistical programming language
-   High-level
-   Versatile, robust
-   Packages
-   Useful for both data preparation and data analysis
-   Open source
    -   Meaning: source code is freely available to the public, the public can contribute
-   Free

------------------------------------------------------------------------

The bad
-------

-   R has a steep learning curve
-   If colleagues don't know R, this can hinder collaboration

The good
--------

-   R can handle larger files
-   Excel is a spreadsheet tool, errors hide
-   Reproducability, transparency
-   Advanced and versatile statistics
-   Customizable data visualizations

The different (but neutral)
---------------------------

-   R has less formal support, but virtually endless online user community forums

------------------------------------------------------------------------

Scripts (.R) and RMarkdown files (.Rmd)
---------------------------------------

-   

------------------------------------------------------------------------

Packages/Libraries
------------------

-   Contain numerous functions that help you complete specialized tasks
-   Anyone can make one
-   The reason R is so versatile and robust
-   Tidyverse
-   Openair
-   Many, many more

##### Installation:

``` r
# not run
install.packages("tidyverse")
```

##### Call a package or library:

``` r
library(tidyverse)
```

------------------------------------------------------------------------

Coding in R
-----------

-   Functions
-   Object names
-   Importing data
-   Calling columns in a dataframe with $
-   Storing variables, temporary objects
-   Data types
-   Data structures
-   Missing values - NA
-   Logical operators

------------------------------------------------------------------------

Functions
---------

R has many functions built in. These are referred to as Base R functions. When you call a function, it looks like this:

    function_name( arg1 = val1, arg2 = val2)

You can create a function, but that's beyond the scope of our training. You will see many examples of functions as we move forward.
