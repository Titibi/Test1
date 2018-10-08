---
title       : Shiny App to estimate vehicle mileage
subtitle    : 
author      : Devang Sharma
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- .class id#


## Slide 1

This application was created as part of Coursera Course "Developing Data Products"

The application demonstrates development of interactive R code and their deployment on a server for web access.

---

## Slide 2

The application allows users to input three values and then generates an estimate of mileage using Rpart and Linear Model.

![plot of chunk unnamed-chunk-1](figure/unnamed-chunk-1-1.png)

---

## Slide 3

Behind the scenes, the application uses "mtcars" data set to do the initial machine learning.

The models then estimate Mileage based on the values of number of cylinder, displacement, Horsepower and Weight.

