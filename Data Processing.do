* Dropping Missing Variables
drop if vot == .
(0 observations deleted)

drop if age == .
(0 observations deleted)

drop if dhisp == .
(0 observations deleted)

drop if hufaminc == .
(0 observations deleted)

drop if educ ==.
(0 observations deleted)

* Limiting Data to only look at Population with Hispanic origins
drop if dhisp == 0
(225,101 observations deleted)

*Observing Correlation Between Data Before Futhering Analysis
correlate hufaminc vot age dhisp educ 

         | hufaminc      vot      age    dhisp.  educ 
---------+-----------------------------------------------
 hufaminc |   1.0000
      vot |   0.1751   1.0000
      age |  -0.0673   0.2377   1.0000
    dhisp |      .        .        .        .
     educ |  -0.2735  -0.0638   0.3490      .   1.0000
-----------+---------

