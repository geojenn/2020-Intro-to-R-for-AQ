
R for Air Quality - Introduction <img src="marama_logo.png" align="right" height="70" />
========================================================================================

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

    ## Warning: package 'tidyverse' was built under R version 3.6.3

    ## -- Attaching packages --------------------------------------------------------------------------------------------------------------------------------- tidyverse 1.3.0 --

    ## v ggplot2 3.3.0     v purrr   0.3.3
    ## v tibble  2.1.3     v dplyr   0.8.3
    ## v tidyr   1.0.0     v stringr 1.4.0
    ## v readr   1.3.1     v forcats 0.4.0

    ## Warning: package 'ggplot2' was built under R version 3.6.3

    ## -- Conflicts ------------------------------------------------------------------------------------------------------------------------------------ tidyverse_conflicts() --
    ## x dplyr::filter() masks stats::filter()
    ## x dplyr::lag()    masks stats::lag()

------------------------------------------------------------------------

Coding in R
-----------

You can use R as a calculator

    400 * 3 + 55.889
    2 ^ 8

You can create new objects with &lt;- (which reads "gets")

    objectName <- value
    someText <- "Hello World"
    print(someText)

Tips: - Give objects short and meaningful names. - You can see objects you've created in the upper righthand side of your RStudio window-or the Environment - You can make a line into a comment by typing \# in front. This is how you can add plain text or non-executable code. - Tip: press alt + shift + k and see what happens

------------------------------------------------------------------------

Functions
---------

R has many functions built in. These are referred to as Base R functions. When you call a function, it looks like this:

    function_name( arg1 = val1, arg2 = val2 )

You can create a function, but that's beyond the scope of our training. You will see many examples of functions as we move forward.

------------------------------------------------------------------------

Object Names
------------

-   Must start with a letter
-   Can contain \_ and .
-   Descriptive
-   Some people use snake\_case, others prefer camelCase.
-   Best practice: be consistent with naming conventions.

Example:

    my_text <- "Hello World"

------------------------------------------------------------------------

Importing data
--------------

-   CSV's are the best file format
-   Other delimited files are fine too
-   excel workbook files can import but will complicate things

Syntax:

      oz_mar <- read_csv("march_ozone.csv")

Now we have a dataframe stored in the object oz\_mar.

-   Paths to these files is necessary if you are not already pointed to your working directory (more on this later!)
-   Many other arguments are available to specify things like whether there is a header, or if the delimiter is something other than a comma
    -   <https://readr.tidyverse.org/reference/read_delim.html>
    -   <http://rprogramming.net/read-csv-in-r/>

------------------------------------------------------------------------

Calling columns in a dataframe with $
-------------------------------------

Example:

    oz_mar$value

This would pick out the column titled "value" within the oz\_mar dataframe.

------------------------------------------------------------------------

Storing variables, temporary objects
------------------------------------

When you run functions in R, you have two options for handling the output: 1. Allow it to print to the console (it's not saved and you can't use it later)

    oz_mar$value * 0.9

1.  Store it in an object using &lt;- "gets"

    oz\_control &lt;- oz\_mar$value \* 0.9

------------------------------------------------------------------------

Data types
----------

-   Character "Hello World"
-   Numeric (real or decimal) 3.14159
-   Integer 7
-   Logical TRUE

------------------------------------------------------------------------

Data structures
---------------

Atomic vector: the most basic data structure

    c(1, 4, 6, 2, 3)
    c("hello", "world", "its", "me", "jenny")

List: similar to a vector, but it can store different data types

    list(1, "hello", TRUE, 3.141)

Matrix: the simplest 2-dimensional data structure

    matrix(month.abb, nrow = 3, ncol = 4)

Data frame: similar to matrices, tightly couples collections of variables

Factors: a vector with ordered levels, xtremely helpful with categorical data

------------------------------------------------------------------------

Missing values - NA
-------------------

-   R knows what a missing value is (when it's represented with NA)
-   For automatic recognition of missing values, use NA
-   Sometimes NA will be the output when an operation doesn't make sense

------------------------------------------------------------------------

Logical operators
-----------------

You will need to use logical operators when sub-setting data and in if-statements when your scripts get more complex (we will not cover if-statements in this training) - "not" = ! - "and" for vectors &gt; length-1 = & - "and" for single, scalar objects = && - "or" for vectors &gt; length-1 = | - "or" for single, scalar objects = || - exclusive "or" = xor(x, y) - isNA() checks if an object is NA and returns TRUE or FALSE

------------------------------------------------------------------------

Best practices
--------------

-   R Projects vs. working directories
-   Debugging

------------------------------------------------------------------------
