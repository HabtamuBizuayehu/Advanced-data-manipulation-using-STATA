

//*************************************************************************************************************************************************
** GBD data preparation for all top 5 cancers based on the 2020 Globalcan estimate 
//*************************************************************************************************************************************************
//--------------------------------------------------------------------------------------------------------------------------------------------------
*** the downloaded data from GBD is 2010-2019 for all forms, Breast, Lung, colorectal, Cervical, Stomach cancers
*As the data were in the form of death rate, death #, Incidence rate and Incidence # per each cancer types, creating a separate dataset is required  
//--------------------------------------------------------------------------------------------------------------------------------------------------
// The example data used in this analysis is based on publicly available global date; most of the source website has been included 


**declare the working directory in Stata, you can use the cd command followed by the file path of the directory 
// add "Your_path"

cd "Your_path\GBD articles and Related\Data\5 cancers"


//--------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------
import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\All death.csv"

* drop the upeer and lower confidence interval
drop upper lower

save "All cancer death and number.dta", replace

 ** Death Rate variable 
** creating variables by separate age group estimates by rate thus they become individual variable

save "All cancer death rate.dta", replace

ta metric_id metric_name

keep if metric_id==3
ta metric_id metric_name

* rename the values i.e incidence or death as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Deaths rates are per 100,000 population

rename val allcadr
label var allcadr"All cancer death rate"

*sort variable 
gsort location_name year

save "All cancer death rate.dta", replace
clear


 ** Death number variable 
** creating variables by separate age group estimates by rate thus they become individual variable

use "All cancer death and number.dta"

save "number of All cancer death.dta", replace

ta metric_id metric_name

keep if metric_id==1
ta metric_id metric_name

* rename the values i.e incidence or death as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Deaths rates are per 100,000 population

rename val nallcad
label var nallcad"number of all cancer death"

*sort variable 
gsort location_name year

save "number of All cancer death.dta", replace
clear


//--------------------------------------------------------------------------------------------------
import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\All rate.csv"

* drop the upeer and lower confidence interval
drop upper lower

save "All cancer Incidence and number.dta", replace

 ** Incidence Rate variable 
** creating variables by separate age group estimates by rate thus they become individual variable

save "All cancer Incidence rate.dta", replace

ta metric_id metric_name

keep if metric_id==3
ta metric_id metric_name

* rename the values i.e incidence or death as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Deaths rates are per 100,000 population

rename val allcai
label var allcai"All cancer Incidence rate"

*sort variable 
gsort location_name year

save "All cancer Incidence rate.dta", replace
clear


 ** Incidence number variable 
** creating variables by separate age group estimates by rate thus they become individual variable

use "All cancer Incidence and number.dta"

save "number of All cancer Incidence.dta", replace

ta metric_id metric_name

keep if metric_id==1
ta metric_id metric_name

* rename the values i.e incidence or Incidence as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Incidences rates are per 100,000 population

rename val nallcai
label var nallcai"number of all cancer Incidence"

*sort variable 
gsort location_name year

save "number of All cancer Incidence.dta", replace
clear

//--------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------
import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Breast death.csv"

* drop the upeer and lower confidence interval
drop upper lower

save "Breast cancer death and number.dta", replace

 ** Death Rate variable 
** creating variables by separate age group estimates by rate thus they become individual variable

save "Breast cancer death rate.dta", replace

ta metric_id metric_name

keep if metric_id==3
ta metric_id metric_name

* rename the values i.e incidence or death as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Deaths rates are per 100,000 population

rename val brcadr
label var brcadr"Breast cancer death rate"

*sort variable 
gsort location_name year

save "Breast cancer death rate.dta", replace
clear


 ** Death number variable 
** creating variables by separate age group estimates by rate thus they become individual variable

use "Breast cancer death and number.dta"

save "number of Breast cancer death.dta", replace

ta metric_id metric_name

keep if metric_id==1
ta metric_id metric_name

* rename the values i.e incidence or death as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Deaths rates are per 100,000 population

rename val nbrcad
label var nbrcad "number of Breast cancer death"

*sort variable 
gsort location_name year

save "number of Breast cancer death.dta", replace
clear


//--------------------------------------------------------------------------------------------------
import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Breast rate.csv"

* drop the upeer and lower confidence interval
drop upper lower

save "Breast cancer Incidence and number.dta", replace

 ** Incidence Rate variable 
** creating variables by separate age group estimates by rate thus they become individual variable

save "Breast cancer Incidence rate.dta", replace

ta metric_id metric_name

keep if metric_id==3
ta metric_id metric_name

* rename the values i.e incidence or Incidence as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Incidences rates are per 100,000 population

rename val brcai
label var brcai"Breast cancer Incidence rate"

*sort variable 
gsort location_name year

save "Breast cancer Incidence rate.dta", replace
clear


 ** Incidence number variable 
** creating variables by separate age group estimates by rate thus they become individual variable

use "Breast cancer Incidence and number.dta"

save "number of Breast cancer Incidence.dta", replace

ta metric_id metric_name

keep if metric_id==1
ta metric_id metric_name

* rename the values i.e incidence or Incidence as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Incidences rates are per 100,000 population

rename val nbrcai
label var nbrcai "number of Breast cancer Incidence"

*sort variable 
gsort location_name year

save "number of Breast cancer Incidence.dta", replace
clear

//--------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------
import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Lung death.csv"

* drop the upeer and lower confidence interval
drop upper lower

save "Lung cancer death and number.dta", replace

 ** Death Rate variable 
** creating variables by separate age group estimates by rate thus they become individual variable

save "Lung cancer death rate.dta", replace

ta metric_id metric_name

keep if metric_id==3
ta metric_id metric_name

* rename the values i.e incidence or death as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Deaths rates are per 100,000 population

rename val lncadr
label var lncadr"Lung cancer death rate"

*sort variable 
gsort location_name year

save "Lung cancer death rate.dta", replace
clear


 ** Death number variable 
** creating variables by separate age group estimates by rate thus they become individual variable

use "Lung cancer death and number.dta"

save "number of Lung cancer death.dta", replace

ta metric_id metric_name

keep if metric_id==1
ta metric_id metric_name

* rename the values i.e incidence or death as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Deaths rates are per 100,000 population

rename val nlncad
label var nlncad "number of Lung cancer death"

*sort variable 
gsort location_name year

save "number of Lung cancer death.dta", replace
clear


//--------------------------------------------------------------------------------------------------
import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Lung rate.csv"

* drop the upeer and lower confidence interval
drop upper lower

save "Lung cancer Incidence and number.dta", replace

 ** Incidence Rate variable 
** creating variables by separate age group estimates by rate thus they become individual variable

save "Lung cancer Incidence rate.dta", replace

ta metric_id metric_name

keep if metric_id==3
ta metric_id metric_name

* rename the values i.e incidence or Incidence as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Incidences rates are per 100,000 population

rename val lncai
label var lncai"Lung cancer Incidence rate"

*sort variable 
gsort location_name year

save "Lung cancer Incidence rate.dta", replace
clear


 ** Incidence number variable 
** creating variables by separate age group estimates by rate thus they become individual variable

use "Lung cancer Incidence and number.dta"

save "number of Lung cancer Incidence.dta", replace

ta metric_id metric_name

keep if metric_id==1
ta metric_id metric_name

* rename the values i.e incidence or Incidence as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Incidences rates are per 100,000 population

rename val nlncai
label var nlncai "number of Lung cancer Incidence"

*sort variable 
gsort location_name year

save "number of Lung cancer Incidence.dta", replace
clear


//--------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------
import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Colorectum death.csv"

* drop the upeer and lower confidence interval
drop upper lower

save "Colorectum cancer death and number.dta", replace

 ** Death Rate variable 
** creating variables by separate age group estimates by rate thus they become individual variable

save "Colorectum cancer death rate.dta", replace

ta metric_id metric_name

keep if metric_id==3
ta metric_id metric_name

* rename the values i.e incidence or death as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Deaths rates are per 100,000 population

rename val crcadr
label var crcadr"Colorectum cancer death rate"

*sort variable 
gsort location_name year

save "Colorectum cancer death rate.dta", replace
clear


 ** Death number variable 
** creating variables by separate age group estimates by rate thus they become individual variable

use "Colorectum cancer death and number.dta"

save "number of Colorectum cancer death.dta", replace

ta metric_id metric_name

keep if metric_id==1
ta metric_id metric_name

* rename the values i.e incidence or death as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Deaths rates are per 100,000 population

rename val ncrcad
label var ncrcad "number of Colorectum cancer death"

*sort variable 
gsort location_name year

save "number of Colorectum cancer death.dta", replace
clear

//--------------------------------------------------------------------------------------------------
import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Colorectum rate.csv"

* drop the upeer and lower confidence interval
drop upper lower

save "Colorectum cancer Incidence and number.dta", replace

 ** Incidence Rate variable 
** creating variables by separate age group estimates by rate thus they become individual variable

save "Colorectum cancer Incidence rate.dta", replace

ta metric_id metric_name

keep if metric_id==3
ta metric_id metric_name

* rename the values i.e incidence or Incidence as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Incidences rates are per 100,000 population

rename val crcai
label var crcai"Colorectum cancer Incidence rate"

*sort variable 
gsort location_name year

save "Colorectum cancer Incidence rate.dta", replace
clear


 ** Incidence number variable 
** creating variables by separate age group estimates by rate thus they become individual variable

use "Colorectum cancer Incidence and number.dta"

save "number of Colorectum cancer Incidence.dta", replace

ta metric_id metric_name

keep if metric_id==1
ta metric_id metric_name

* rename the values i.e incidence or Incidence as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Incidences rates are per 100,000 population

rename val ncrcai
label var ncrcai "number of Colorectum cancer Incidence"

*sort variable 
gsort location_name year

save "number of Colorectum cancer Incidence.dta", replace
clear



//--------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------
import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Cervical death.csv"

* drop the upeer and lower confidence interval
drop upper lower

save "Cervical cancer death and number.dta", replace

 ** Death Rate variable 
** creating variables by separate age group estimates by rate thus they become individual variable

save "Cervical cancer death rate.dta", replace

ta metric_id metric_name

keep if metric_id==3
ta metric_id metric_name

* rename the values i.e incidence or death as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Deaths rates are per 100,000 population

rename val ccadr
label var ccadr"Cervical cancer death rate"

*sort variable 
gsort location_name year

save "Cervical cancer death rate.dta", replace
clear


 ** Death number variable 
** creating variables by separate age group estimates by rate thus they become individual variable

use "Cervical cancer death and number.dta"

save "number of Cervical cancer death.dta", replace

ta metric_id metric_name

keep if metric_id==1
ta metric_id metric_name

* rename the values i.e incidence or death as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Deaths rates are per 100,000 population

rename val nccad
label var nccad "number of Cervical cancer death"

*sort variable 
gsort location_name year

save "number of Cervical cancer death.dta", replace
clear

//--------------------------------------------------------------------------------------------------
import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Cervical rate.csv"

* drop the upeer and lower confidence interval
drop upper lower

save "Cervical cancer Incidence and number.dta", replace

 ** Incidence Rate variable 
** creating variables by separate age group estimates by rate thus they become individual variable

save "Cervical cancer Incidence rate.dta", replace

ta metric_id metric_name

keep if metric_id==3
ta metric_id metric_name

* rename the values i.e incidence or Incidence as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Incidences rates are per 100,000 population

rename val ccai
label var ccai"Cervical cancer Incidence rate"

*sort variable 
gsort location_name year

save "Cervical cancer Incidence rate.dta", replace
clear


 ** Incidence number variable 
** creating variables by separate age group estimates by rate thus they become individual variable

use "Cervical cancer Incidence and number.dta"

save "number of Cervical cancer Incidence.dta", replace

ta metric_id metric_name

keep if metric_id==1
ta metric_id metric_name

* rename the values i.e incidence or Incidence as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Incidences rates are per 100,000 population

rename val nccai
label var nccai "number of Cervical cancer Incidence"

*sort variable 
gsort location_name year

save "number of Cervical cancer Incidence.dta", replace
clear


//--------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------
import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Stomach Death.csv"

* drop the upeer and lower confidence interval
drop upper lower

save "Stomach cancer death and number.dta", replace

 ** Death Rate variable 
** creating variables by separate age group estimates by rate thus they become individual variable

save "Stomach cancer death rate.dta", replace

ta metric_id metric_name

keep if metric_id==3
ta metric_id metric_name

* rename the values i.e incidence or death as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Deaths rates are per 100,000 population

rename val stocadr
label var stocadr"Stomach cancer death rate"

*sort variable 
gsort location_name year

save "Stomach cancer death rate.dta", replace
clear


 ** Death number variable 
** creating variables by separate age group estimates by rate thus they become individual variable

use "Stomach cancer death and number.dta"

save "number of Stomach cancer death.dta", replace

ta metric_id metric_name

keep if metric_id==1
ta metric_id metric_name

* rename the values i.e incidence or death as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Deaths rates are per 100,000 population

rename val nstocad
label var nstocad "number of Stomach cancer death"

*sort variable 
gsort location_name year

save "number of Stomach cancer death.dta", replace
clear

//--------------------------------------------------------------------------------------------------
import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Stomach rate.csv"

* drop the upeer and lower confidence interval
drop upper lower

save "Stomach cancer Incidence and number.dta", replace

 ** Incidence Rate variable 
** creating variables by separate age group estimates by rate thus they become individual variable

save "Stomach cancer Incidence rate.dta", replace

ta metric_id metric_name

keep if metric_id==3
ta metric_id metric_name

* rename the values i.e incidence or Incidence as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Incidences rates are per 100,000 population

rename val stocai
label var stocai"Stomach cancer Incidence rate"

*sort variable 
gsort location_name year

save "Stomach cancer Incidence rate.dta", replace
clear


 ** Incidence number variable 
** creating variables by separate age group estimates by rate thus they become individual variable

use "Stomach cancer Incidence and number.dta"

save "number of Stomach cancer Incidence.dta", replace

ta metric_id metric_name

keep if metric_id==1
ta metric_id metric_name

* rename the values i.e incidence or Incidence as a new variable for not replacing during merging time
* NB: the dath rate is per incidence, prevalence and Incidences rates are per 100,000 population

rename val nstocai
label var nstocai "number of Stomach cancer Incidence"

*sort variable 
gsort location_name year

save "number of Stomach cancer Incidence.dta", replace
clear


//*************************************************************************************************************************************************
** Merge all 5 cancers from GBD data
//*************************************************************************************************************************************************
//--------------------------------------------------------------------------------------------------------------------------------------------------
*** merging cancer Incidence and Death data from GBD data 
//--------------------------------------------------------------------------------------------------------------------------------------------------

*NB as all cancer types have a separte name for their death rate, death #, Incidence rate and Incidence # we can merge all together 
* we only need to merge the dataset created for death rate, death #, Incidence rate and Incidence # per each cancer types, all are sorted previousely and did not need to meerge again
* open "All cancer death rate" and rename "Merge all 5 cancers from GBD data"

* merge all cancer types together
use "All cancer death rate.dta"

save "Merge all 5 cancers from GBD data", replace

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\All cancer Incidence rate.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\number of All cancer death.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\number of All cancer Incidence.dta"
*sort variable 
gsort location_name year
drop _merge


* merge all cancer types together with Breast cancer
merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Breast cancer death rate.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Breast cancer Incidence rate.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\number of Breast cancer death.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\number of Breast cancer Incidence.dta"
*sort variable 
gsort location_name year
drop _merge


* merge all cancer types together with Lung cancer
merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Lung cancer death rate.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Lung cancer Incidence rate.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\number of Lung cancer death.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\number of Lung cancer Incidence.dta"
*sort variable 
gsort location_name year
drop _merge


* merge all cancer types together with Cervical cancer
merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Cervical cancer death rate.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Cervical cancer Incidence rate.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\number of Cervical cancer death.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\number of Cervical cancer Incidence.dta"
*sort variable 
gsort location_name year
drop _merge


* merge all cancer types together with Colorectum  cancer
merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Colorectum cancer death rate.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Colorectum cancer Incidence rate.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\number of Colorectum cancer death.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\number of Colorectum cancer Incidence.dta"
*sort variable 
gsort location_name year
drop _merge


* merge all cancer types together with Stomach cancer
merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Stomach cancer death rate.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Stomach cancer Incidence rate.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\number of Stomach cancer death.dta"
*sort variable 
gsort location_name year
drop _merge

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\number of Stomach cancer Incidence.dta"
*sort variable 
gsort location_name year
drop _merge



* drop not necessary variables 
drop measure_id measure_name cause_id cause_name metric_id metric_name
gsort location_name year

save "Merge all 5 cancers from GBD data.dta", replace
clear




//===============================================================================================
** data preparation for Global Health observatory
//===============================================================================================

* prepare the excel for importing e.g. delete anything writtern above the needed variables 

**declare the working directory in Stata, you can use the cd command followed by the file path of the directory 

cd "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors"


**//////////////////////////////////////////////////////////////////////////////////////////////////////////
* prepare the excel for importing e.g. delete anything writtern above the needed variables 
import excel "Age-standardized estimates of current tobacco use, tobacco smoking and cigarette smoking (Tobacco control Monitor).xlsx", sheet("Sheet1") firstrow


save "Smoking & tobacco use data_all.dta", replace

* keep only important variable lists 
keep Indicator ParentLocation Locationtype Location Period Dim1 FactValueNumeric

* we did need male so drop it
ta Dim1
sort Dim1
keep in 1/4592 // manually selecting the list of variables with interest for keeping 
ta Dim1

save "Smoking & tobacco use data_all.dta", replace


**//////////////////////////////////////////////////////////////////////////////////////////////////////////
** diaggregate the data by tobco use and smoking 

*drop "Estimate of current tobacco use prevalence (%) (age-standardized rate)" to use the smoking data 

save "Smoking data_all.dta", replace

ta Indicator
sort Indicator
keep in 1/2296 // manually selecting the list of variables with interest for keeping 
ta Indicator

save "Smoking data_all.dta", replace


* prpare the data for sex i.e. female. maale and both
save "Smoking data_both sex.dta", replace

ta Dim1

sort Dim1
keep in 1/1148 // manually selecting the list of variables with interest for keeping 
ta Dim1

generate sexboth=Dim1
label var sexboth"both sexes"

rename FactValueNumeric smkbs
label var smkbs"smoking both sexes"

gsort Location Period
ta Dim1

save "Smoking data_both sex.dta", replace
clear


* prpare the data for sex i.e. female and both
use "Smoking data_all.dta"

save "Smoking data_female.dta", replace

ta Dim1
sort Dim1

drop in 1/1148 // manually selecting the list of variables that were kept in the previous procedure
 
generate sexf=Dim1
label var sexf"female sex"

rename FactValueNumeric smkf
label var smkf"smoking female"

gsort Location Period
ta sexf

gsort Location Period
save "Smoking data_female.dta", replace
clear


*** Merging the variables in one data set

use "Smoking data_both sex.dta"

save "Smoking Merge by sex type in column.dta", replace

merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Smoking data_female.dta"

drop _merge

gsort Location Period
save "Smoking Merge by sex type in column.dta", replace
clear

**//////////////////////////////////////////////////////////////////////////////////////////////////////////
use "Smoking & tobacco use data_all.dta"

** diaggregate the data by tobco use and smoking 

*drop "Estimate of current smoking prevalence (%) (age-standardized rate)" to use the Tobaco data 

save "Tobaco data_all.dta", replace

ta Indicator
sort Indicator
keep in 1/2296 // manually selecting the list of variables with interest for keeping 
ta Indicator

save "Tobaco data_all.dta", replace


* prpare the data for sex i.e. female. maale and both
save "Tobaco data_both sex.dta", replace

ta Dim1

sort Dim1
keep in 1/1148 // manually selecting the list of variables with interest for keeping 
ta Dim1

generate sexboth=Dim1
label var sexboth"both sexes"

rename FactValueNumeric tbubs
label var tbubs"Tobaco both sexes"

gsort Location Period
ta Dim1

save "Tobaco data_both sex.dta", replace
clear


* prpare the data for sex i.e. female and both
use "Tobaco data_all.dta"

save "Tobaco data_female.dta", replace

ta Dim1
sort Dim1

drop in 1/1148 // manually selecting the list of variables that were kept in the previous procedure
 
generate sexf=Dim1
label var sexf"female sex"

rename FactValueNumeric tbuf
label var tbuf"Tobaco female"

gsort Location Period
ta sexf

gsort Location Period
save "Tobaco data_female.dta", replace
clear


*** Merging the variables in one data set

use "Tobaco data_both sex.dta"

save "Tobaco Merge by sex type in column.dta", replace

merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Tobaco data_female.dta"

drop _merge

gsort Location Period
save "Tobaco Merge by sex type in column.dta", replace
clear


**//////////////////////////////////////////////////////////////////////////////////////////////////////////

* prepare the excel for importing e.g. delete anything writtern above the needed variables 

import excel "Age-standardized estimates of current tobacco use, tobacco smoking and cigarette smoking (Tobacco control Monitor).xlsx", sheet("Sheet1") firstrow

* keep only important variable lists 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\alcohol data_all.dta", replace


* prpare the data for sex i.e. female. maale and both
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\alcohol data_both sex.dta", replace

ta Dim1

sort Dim1
keep in 1/2816 // manually selecting the list of variables with interest for keeping 

generate sexboth=Dim1
label var sexboth"both sexes"

rename FactValueNumeric alcbs
label var alcbs"alcohol both sexes"

gsort Location Period
ta Dim1

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\alcohol data_both sex.dta", replace
clear


* prpare the data for sex i.e. female. male and both
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\alcohol data_all.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\alcohol data_female.dta", replace
ta Dim1
sort Dim1

drop in 1/2816 // manually selecting the list of variables that were kept in the previous procedure
 
generate sexf=Dim1
label var sexf"female sex"

rename FactValueNumeric alcf
label var alcf"alcohol female"

gsort Location Period
ta Dim1


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\alcohol data_female.dta", replace
clear


*** Merging the variables in one data set


use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\alcohol data_both sex.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\alcohol Merge by sex type in column.dta", replace


merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\alcohol data_female.dta"
drop _merge
gsort Location Period

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\alcohol Merge by sex type in column.dta", replace
clear



**//////////////////////////////////////////////////////////////////////////////////////////////////////////

* prepare the excel for importing e.g. delete anything writtern above the needed variables 

import excel "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Mean HDL cholesterol (age-standardized estimate).xlsx", sheet("Sheet1") firstrow

* keep only important variable lists 
keep Indicator ParentLocation Locationtype Location Period Dim1 FactValueNumeric
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\HDL data_all.dta"


* prpare the data for sex i.e. female. maale and both
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\HDL data_both sex.dta"
ta Dim1

sort Dim1
keep in 1/2674 // manually selecting the list of variables with interest for keeping 

generate sexboth=Dim1
label var sexboth"both sexes"

rename FactValueNumeric hdlbs
label var hdlbs"mean HDL both sexes"

gsort Location Period
ta Dim1

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\HDL data_both sex.dta", replace
clear


* prpare the data for sex i.e. female. male and both
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\HDL data_all.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\HDL data_female.dta"
ta Dim1
sort Dim1

drop in 1/2674 // manually selecting the list of variables that were kept in the previous procedure
 
generate sexf=Dim1
label var sexf"female sex"

rename FactValueNumeric hdlf
label var hdlf"mean HDL female"

gsort Location Period
ta Dim1


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\HDL data_female.dta", replace
clear


*** Merging the variables in one data set

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\HDL data_both sex.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\HDL Merge by sex type in column.dta"

merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\HDL data_female.dta"
drop _merge
gsort Location Period

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\HDL Merge by sex type in column.dta", replace
clear


**//////////////////////////////////////////////////////////////////////////////////////////////////////////

* prepare the excel for importing e.g. delete anything writtern above the needed variables 

import excel "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Prevalence of overweight among adults, BMI = 25 (age-standardized estimate) (%) (2).xlsx", sheet("Sheet1") firstrow

* keep only important variable lists 
keep Indicator ParentLocation Locationtype Location Period Dim1 FactValueNumeric
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 25_overweight data_all.dta"


* prpare the data for sex i.e. female. maale and both
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 25_overweight data_both sex.dta"
ta Dim1

sort Dim1
keep in 1/2340 // manually selecting the list of variables with interest for keeping 

generate sexboth=Dim1
label var sexboth"both sexes"

rename FactValueNumeric owgtbs
label var owgtbs"BMI above 25_overweight both sexes"

gsort Location Period
ta Dim1

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 25_overweight data_both sex.dta", replace
clear


* prpare the data for sex i.e. female. male and both
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 25_overweight data_all.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 25_overweight data_female.dta"
ta Dim1
sort Dim1

drop in 1/2340 // manually selecting the list of variables that were kept in the previous procedure
 
generate sexf=Dim1
label var sexf"female sex"

rename FactValueNumeric wgtf
label var wgtf"BMI above 25_overweight female"

gsort Location Period
ta Dim1

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 25_overweight data_female.dta", replace
clear

*** Merging the variables in one data set


use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 25_overweight data_both sex.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 25_overweight Merge by sex type in column.dta"

merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 25_overweight data_female.dta"
drop _merge
gsort Location Period

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 25_overweight Merge by sex type in column.dta", replace
clear


**//////////////////////////////////////////////////////////////////////////////////////////////////////////
* prepare the excel for importing e.g. delete anything writtern above the needed variables 

import excel "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Prevalence of obesity among adults, BMI = 30 (age-standardized estimate) (%).xlsx", sheet("Sheet1") firstrow

* keep only important variable lists 
keep Indicator ParentLocation Locationtype Location Period Dim1 FactValueNumeric
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 30_obese data_all.dta"


* prpare the data for sex i.e. female. maale and both
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 30_obes data_both sex.dta"
ta Dim1

sort Dim1
keep in 1/2340 // manually selecting the list of variables with interest for keeping 

generate sexboth=Dim1
label var sexboth"both sexes"

rename FactValueNumeric obesebs
label var obesebs"BMI above 30_obese both sexes"

gsort Location Period
ta Dim1

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 30_obes data_both sex.dta", replace
clear


* prpare the data for sex i.e. female. male and both
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 30_obese data_all.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 30_obese data_female.dta"
ta Dim1
sort Dim1

drop in 1/2340 // manually selecting the list of variables that were kept in the previous procedure
 
generate sexf=Dim1
label var sexf"female sex"

rename FactValueNumeric obesef
label var obesef"BMI above 30_obese female"

gsort Location Period
ta Dim1

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 30_obese data_female.dta", replace
clear


*** Merging the variables in one data set


use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 30_obes data_both sex.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 30_obese Merge by sex type in column.dta"


merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 30_obese data_female.dta"
drop _merge

gsort Location Period

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 30_obese Merge by sex type in column.dta", replace
clear



**//////////////////////////////////////////////////////////////////////////////////////////////////////////

* prepare the excel for importing e.g. delete anything writtern above the needed variables 

import excel "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI mean.xlsx", sheet("Sheet1") firstrow

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\mean MBI data_all.dta", replace

* keep only important variable lists 
keep Indicator ParentLocation Locationtype Location Period Dim1 FactValueNumeric

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\mean MBI data_all.dta", replace


* prpare the data for sex i.e. female and both
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Mean BMI data_both sex.dta", replace
ta Dim1

sort Dim1
keep in 1/2340 // manually selecting the list of variables with interest for keeping 

generate sexboth=Dim1
label var sexboth"both sexes"

rename FactValueNumeric mbmibs
label var mbmibs"Mean BMI both sexes"

gsort Location Period
ta Dim1

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Mean BMI data_both sex.dta", replace
clear


* prpare the data for sex i.e. female. male and both
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\mean MBI data_all.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Mean BMI data_female.dta", replace
ta Dim1
sort Dim1

drop in 1/2340 // manually selecting the list of variables that were kept in the previous procedure
 
generate sexf=Dim1
label var sexf"female sex"

rename FactValueNumeric mbmif
label var mbmif"Mean BMI female"

gsort Location Period
ta Dim1


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Mean BMI data_female.dta", replace
clear


*** Merging the variables in one data set

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Mean BMI data_both sex.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Mean BMI Merge by sex type in column.dta", replace
merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Mean BMI data_female.dta"
drop _merge

gsort Location Period

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Mean BMI Merge by sex type in column.dta", replace
clear


**//////////////////////////////////////////////////////////////////////////////////////////////////////////

* prepare the excel for importing e.g. delete anything writtern above the needed variables 

import excel "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Excercise for all age.xlsx", sheet("Sheet1") firstrow

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\excercise data_all.dta", replace
* keep only important variable lists 
keep Indicator ParentLocation Locationtype Location Period Dim1 FactValueNumeric
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\excercise data_all.dta", replace

* prpare the data for sex i.e. female and both
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\excercise data_both sex.dta", replace
ta Dim1

sort Dim1
keep in 1/194 // manually selecting the list of variables with interest for keeping 

generate sexboth=Dim1
label var sexboth"both sexes"

rename FactValueNumeric excbs
label var excbs"excercise both sexes"

gsort Location Period
ta Dim1

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\excercise data_both sex.dta", replace
clear

* prpare the data for sex i.e. female. male and both
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\excercise data_all.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\excercise data_female.dta", replace
ta Dim1
sort Dim1

drop in 1/194 // manually selecting the list of variables that were kept in the previous procedure
 
generate sexf=Dim1
label var sexf"female sex"

rename FactValueNumeric excf
label var excf"excercise female"

gsort Location Period
ta Dim1

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\excercise data_female.dta", replace
clear


*** Merging the variables in one data set


use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\excercise data_both sex.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\excercise Merge by sex type in column.dta", replace
merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\excercise data_female.dta"
drop _merge

gsort Location Period

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\excercise Merge by sex type in column.dta", replace
clear


**//////////////////////////////////////////////////////////////////////////////////////////////////////////

* prepare the excel for importing e.g. delete anything writtern above the needed variables 

import excel "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\UHC Service Coverage Index (SDG 3.8.1).xlsx", sheet("Sheet1") firstrow

* keep only important variable lists 
keep Indicator ParentLocation Locationtype Location Period FactValueNumeric
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\UHC data_all.dta"


rename FactValueNumeric uhc
label var uhc"UHC index"

gsort Location Period

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\UHC data_all.dta", replace
clear



//*************************************************************************************************************************************************
** Merge all factors 
//*************************************************************************************************************************************************

*each datasets were sorted previously and not needed to sort agian
* merge using Location Period
 *use alcohol data and merge them with other data sets

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\alcohol Merge by sex type in column.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\All factors merged.dta", replace

merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 25_overweight Merge by sex type in column.dta"
drop _merge
gsort Location Period

merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\BMI above 30_obese Merge by sex type in column.dta"
drop _merge
gsort Location Period

merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Mean BMI Merge by sex type in column.dta"
drop _merge
gsort Location Period

merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\HDL Merge by sex type in column.dta"
drop _merge
gsort Location Period

merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Smoking Merge by sex type in column.dta"
drop _merge
gsort Location Period

merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Tobaco Merge by sex type in column.dta"
drop _merge
gsort Location Period

merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\excercise Merge by sex type in column.dta"
drop _merge
gsort Location Period

merge m:m Location Period using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\UHC data_all.dta"
drop _merge
gsort Location Period

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\All factors merged.dta", replace
clear


//*************************************************************************************************************************************************
** Merge all factors from GHO with GBD data
//*************************************************************************************************************************************************

//--------------------------------------------------------------------------------------------------------------------------------------------------
*** merging cancer Incidence rate,  Incidence #, Death rate and Death # data from GBD with indpendent variable in GHO data 
//--------------------------------------------------------------------------------------------------------------------------------------------------


cd "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors"

** As the previous data spans 200-2020 lets keep only for the time period with 2010-2020

use "All factors merged.dta"

save "All factors merged 2010-2020.dta", replace

// Know lets prepare variable and merge the the GBD data and correct countries names 

// rename some variables that are common for both and used for merging i.e. location_name year

gen location_name=Location
gen year=Period

** dystring year
destring year, replace

ta Period
drop if (year==2000 | year==2005 | year==2005 | year==2006 | year==2007 | year==2008 | year==2009)
ta year

gsort location_name year

save "All factors merged 2010-2020.dta", replace
clear


*** merging cancer Incidence rate,  Incidence #, Death rate and Death # data from GBD with indpendent variable in GHO data 
//--------------------------------------------------------------------------------------------------------------------------------------------------

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Merge all 5 cancers from GBD data.dta"


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Merge all GBD & GHO data_(for only correcting the country names).dta"


merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\All factors merged 2010-2020.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Merge all GBD & GHO data_(for only correcting the country names).dta", replace


// let correct some countries name to merge them in the main data
** continue identifying and corrections
* steps to correct the country name 
*1 open both datasets i.e. merge and GBD data then put the the "data editor" window and searh the name of the country "Cntl + F"
*2 search the country name on both GBD abd GHO data "data editor" window and then correct with of them

// names should be corrected in GHO data for correctly matching are the following 

sort _merge year location_name
order _merge year location_name, last 
*while using the merge data opne a new stata datasets for GHO and find as the above instructions 
* eg.  use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\All factors merged 2010-2020.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Merge all GBD & GHO data_(for only correcting the country names).dta", replace
clear


* When identifying is completed close it and correct the coutries name in GHO data_all
* also limit the study period 2010-2019

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\All factors merged 2010-2020.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Name corrected as per GBD country name _All factors merged 2010-2019.dta", replace

replace location_name="CÃ´te d'Ivoire" if location_name=="Côte d’Ivoire" 
replace location_name="Sudan" if location_name=="Sudan (until 2011)" 
replace location_name="North Macedonia" if location_name=="The former Yugoslav Republic of Macedonia" 
replace location_name="Turkey" if location_name=="Türkiye" 
replace location_name="United Kingdom" if location_name=="United Kingdom of Great Britain and Northern Ireland" 
replace location_name="American Samoa" if location_name=="Samoa" 

ta Period
drop if (year==2020)
ta year

** available countries or territories in World bank data but not in GBD daata

//*GBD missed countries #
//*GBD missed territories  #


//GHO missed countries or territories #9  missed  but NB it is available in GBD #9 
*Bermuda
*Greenland
*Guam
*Northern Mariana Islands
*Palestine
*Puerto Rico
*Taiwan (Province of China)
*Tokelau
*United States Virgin Islands

gsort location_name year

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Name corrected as per GBD country name _All factors merged 2010-2019.dta", replace
clear


*** merging cancer Incidence rate,  Incidence #, Death rate and Death # data from GBD with indpendent variable in GHO data 2010-2019
//--------------------------------------------------------------------------------------------------------------------------------------------------

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Merge all 5 cancers from GBD data.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Merging all GBD & GHO data (2010-2019).dta", replace


merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Name corrected as per GBD country name _All factors merged 2010-2019.dta"


ta year
duplicates report Location Period
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Merging all GBD & GHO data (2010-2019).dta", replace
clear 



//*************************************************************************************************************************************************//*************************************************************************************************************************************************
** Preparing the world bank data 
//*//*************************************************************************************************************************************************
//************************************************************************************************************************************************


* Download the variables

*e.g https://databank.worldbank.org/source/world-development-indicators# 
*https://databank.worldbank.org/reports.aspx?dsid=16&series=SH.XPD.KHEX.GD.ZS# 
* Watch youtube at 
*https://www.youtube.com/watch?v=s7OnlolA3As&t=499s

*Import the variables
import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Cost\Data.csv"

// import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Cost\Data.csv", asfloat numeric cols(14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29) clear 
// import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Cost\Data.csv", varnames(1) 


*(29 vars, 14,902 obs)


	*Clean the data
	
	drop v5 v6 v7 v8 v9 v10 v11 v12 v13

* Rename the variables

rename v1 country 
rename v2 Country_CODE
rename v3 Series_Name
rename v4 Series_Code

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
clear

// Appending by Year

//====year in 2006
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2006.dta", replace

rename v14 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2006
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2006.dta", replace
clear

//====year in 2007

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2007.dta", replace

rename v15 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2007
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2007.dta", replace
clear


//====year in 2008

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2008.dta", replace

rename v16 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2008
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2008.dta", replace
clear


//====year in 2009

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2009.dta", replace

rename v17 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2009
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2009.dta", replace
clear


//====year in 2010

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2010.dta", replace

rename v18 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2010
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2010.dta", replace
clear


//====year in 2011

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2011.dta", replace

rename v19 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2011
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2011.dta", replace
clear


//====year in 2012

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2012.dta", replace

rename v20 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2012
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2012.dta", replace
clear

//====year in 2013

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2013.dta", replace

rename v21 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2013
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2013.dta", replace
clear


//====year in 2014

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2014.dta", replace

rename v22 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2014
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2014.dta", replace
clear

//====year in 2015

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2015.dta", replace

rename v23 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2015
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2015.dta", replace
clear

//====year in 2016

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2016.dta", replace

rename v24 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2016
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2016.dta", replace
clear

//====year in 2017

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2017.dta", replace

rename v25 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2017
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2017.dta", replace
clear

//====year in 2018

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2018.dta", replace

rename v26 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2018
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2018.dta", replace
clear


//====year in 2019

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2019.dta", replace

rename v27 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2019
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2019.dta", replace
clear

//====year in 2020

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2020.dta", replace

rename v28 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2020
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2020.dta", replace
clear

//====year in 2021

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Stata for cost and Bca.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2021.dta", replace

rename v29 yrm
label var yrm"year measure"

keep country Country_CODE Series_Name Series_Code yrm

gen yr=2021
label var yr"year"

sort Country_CODE

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2021.dta", replace
clear



 //=========================================================================


// data appending 
//===============
//====year 2006-2021

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2006.dta"
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Appended by year 2006-2021.dta", replace


append using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2007.dta"
append using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2008.dta"
append using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2009.dta"
append using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2010.dta"
append using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2011.dta"
append using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2012.dta"
append using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2013.dta"
append using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2014.dta"
append using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2015.dta"
append using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2016.dta"
append using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2017.dta"
append using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2018.dta"
append using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2019.dta"
append using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2020.dta"
append using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\year 2021.dta"



sort Country_CODE

drop if missing(country)

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Appended by year 2006-2021.dta", replace


 //=========================================================================
 *Preparing each indpendet factors to merge them
 //=========================================================================

*** Age dependency ratio (% of working-age population)
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Age dependency ratio (% of working-age population).dta"

// manually selecting the list of variables with Age dependency ratio (% of working-age population)

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with Age dependency ratio (% of working-age population)

generate adr=yrm
label var adr"Age dependency ratio (% of working-age population)"

sort country

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Age dependency ratio (% of working-age population).dta", replace
clear 


 *** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
 use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Appended by year 2006-2021.dta"
 save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables with Age dependency ratio (% of working-age population)

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


 *Capital health expenditure (% of GDP) data
 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Capital health expenditure (% of GDP).dta"

// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate che=yrm
label var che"Capital health expenditure (% of GDP)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Capital health expenditure (% of GDP).dta", replace
clear 


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables with Age dependency ratio (% of working-age population)

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Cause of death, by communicable diseases and maternal, prenatal and nutrition conditions (% of total)"

// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate dmn=yrm
label var dmn"Cause of death, by communicable diseases and maternal, prenatal and nutrition conditions (% of total)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Cause of death, by communicable diseases and maternal, prenatal and nutrition conditions (% of total).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Current health expenditure (% of GDP).dta"

// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate chep=yrm
label var chep"Current health expenditure (% of GDP)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Current health expenditure (% of GDP).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Current health expenditure per capita (current US$).dta"

// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate cheus=yrm
label var cheus"Current health expenditure per capita (current US$)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Current health expenditure per capita (current US$).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace



// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate cheppp=yrm
label var cheppp"Current health expenditure per capita, PPP (current international $)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Current health expenditure per capita, PPP (current international $).dta"
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

 ** Dlelete other additional variables that were not needed for analysis e.g  Demand for family planning satisfied by any methods (% of married women with demand for family planning)
      sort Series_Name
        drop in 1/4256 
 ** Dlelete other additional variables that were not needed for analysis e.g  Demand for family planning satisfied by modern methods (% of married women with demand for family planning)
 
sort Series_Name
        drop in 1/4256 
		
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate dghe=yrm
label var dghe"Domestic general government health expenditure (% of GDP)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic general government health expenditure (% of GDP).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic general government health expenditure (% of current health expenditure).dta"

// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate dghep=yrm
label var dghep"Domestic general government health expenditure (% of current health expenditure)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic general government health expenditure (% of current health expenditure).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic general government health expenditure (% of general government expenditure).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate dgghe=yrm
label var dgghe"Domestic general government health expenditure (% of general government expenditure)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic general government health expenditure (% of general government expenditure).dta", replace
clear

*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   // drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic general government health expenditure per capita (current US$).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate dggheu=yrm
label var dggheu"Domestic general government health expenditure per capita (current US$)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic general government health expenditure per capita (current US$).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic general government health expenditure per capita, PPP (current international $).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate dggheppp=yrm
label var dggheppp"Domestic general government health expenditure per capita, PPP (current international $)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic general government health expenditure per capita, PPP (current international $).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic private health expenditure (% of current health expenditure).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate dphe=yrm
label var dphe"Domestic private health expenditure (% of current health expenditure)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic private health expenditure (% of current health expenditure).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic private health expenditure per capita (current US$).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate dpheu=yrm
label var dpheu"Domestic private health expenditure per capita (current US$)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic private health expenditure per capita (current US$).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic private health expenditure per capita, PPP  (current international $).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate dpheppp=yrm
label var dpheppp"Domestic private health expenditure per capita, PPP  (current international $)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic private health expenditure per capita, PPP  (current international $).dta", replace
clear



*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\External health expenditure (% of current health expenditure).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate ehe=yrm
label var ehe"External health expenditure (% of current health expenditure)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\External health expenditure (% of current health expenditure).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

* 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\External health expenditure channeled through government (% of external health expenditure).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate ehecg=yrm
label var ehecg"External health expenditure channeled through government (% of external health expenditure)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\External health expenditure channeled through government (% of external health expenditure).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\External health expenditure per capita (current US$).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate eheu=yrm
label var eheu"External health expenditure per capita (current US$)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\External health expenditure per capita (current US$).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\GNI per capita, Atlas method (current US$).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate gni=yrm
label var gni"GNI per capita, Atlas method (current US$)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\GNI per capita, Atlas method (current US$).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Human capital index (HCI), female (scale 0-1).dta"

// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate hcif=yrm
label var hcif"Human capital index (HCI), female (scale 0-1)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Human capital index (HCI), female (scale 0-1).dta", replace
clear



*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

* dropping not used variable i.e. Incidence of HIV, all (per 1,000 uninfected population)
  sort Series_Name
   drop in 1/4256 // manually selecting the variable not needed 
   
   * dropping not used variable i.e. Labor force, female (% of total labor force)
  sort Series_Name
   drop in 1/4256 // manually selecting the variable not needed 
   
      * dropping not used variable i.e. life expectancy at birth, female (years)
  sort Series_Name
   drop in 1/4256 // manually selecting the variable not needed 
   
   
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


*Literacy rate, adult female (% of females ages 15 and above) 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Literacy rate, adult female (% of females ages 15 and above).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate lrf=yrm
label var lrf"Literacy rate, adult female (% of females ages 15 and above)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Literacy rate, adult female (% of females ages 15 and above).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Maternal mortality ratio (modeled estimate, per 100,000 live births).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate mmr=yrm
label var mmr"HMaternal mortality ratio (modeled estimate, per 100,000 live births)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Maternal mortality ratio (modeled estimate, per 100,000 live births).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Maternal mortality ratio (national estimate, per 100,000 live births).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate mmrne=yrm
label var mmrne"Maternal mortality ratio (national estimate, per 100,000 live births)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Maternal mortality ratio (national estimate, per 100,000 live births).dta", replace
clear

*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Mortality rate attributed to household and ambient air pollution, age-standardized, female (per 100,000 female population).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate maap=yrm
label var maap"Mortality rate attributed to household and ambient air pollution, age-standardized, female (per 100,000 female population)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Mortality rate attributed to household and ambient air pollution, age-standardized, female (per 100,000 female population).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Mortality rate attributed to unsafe water, unsafe sanitation and lack of hygiene, female (per 100,000 female population).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate mawsh=yrm
label var mawsh"Mortality rate attributed to unsafe water, unsafe sanitation and lack of hygiene, female (per 100,000 female population)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Mortality rate attributed to unsafe water, unsafe sanitation and lack of hygiene, female (per 100,000 female population).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Out-of-pocket expenditure (% of current health expenditure).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate ope=yrm
label var ope"Out-of-pocket expenditure (% of current health expenditure)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Out-of-pocket expenditure (% of current health expenditure).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Out-of-pocket expenditure per capita (current US$).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate opeu=yrm
label var opeu"Out-of-pocket expenditure per capita (current US$)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Out-of-pocket expenditure per capita (current US$).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Out-of-pocket expenditure per capita, PPP (current international $).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate opeppp=yrm
label var opeppp"Out-of-pocket expenditure per capita, PPP (current international $)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Out-of-pocket expenditure per capita, PPP (current international $).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\People using at least basic drinking water services (% of population).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate bdw=yrm
label var bdw"People using at least basic drinking water services (% of population)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\People using at least basic drinking water services (% of population).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\People using at least basic sanitation services (% of population).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate bss=yrm
label var bss"People using at least basic sanitation services (% of population)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\People using at least basic sanitation services (% of population).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\People using safely managed drinking water services (% of population).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate smw=yrm
label var smw"People using safely managed drinking water services (% of population)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\People using safely managed drinking water services (% of population).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\People using safely managed sanitation services (% of population).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate smss=yrm
label var smss"People using safely managed sanitation services (% of population)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\People using safely managed sanitation services (% of population).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\People with basic handwashing facilities including soap and water (% of population).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate bhf=yrm
label var bhf"People with basic handwashing facilities including soap and water (% of population)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\People with basic handwashing facilities including soap and water (% of population).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Physicians (per 1,000 people).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate ppd=yrm
label var ppd"Physicians (per 1,000 people)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Physicians (per 1,000 people).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

   ** droping other non elevant factor i.e. Population ages 65 and above, female
    sort Series_Name
   drop in 1/4256 
   
     ** droping other non elevant factor i.e. Population ages 65 and above, female (% of female population)
    sort Series_Name
   drop in 1/4256 
   
        ** droping other non elevant factor i.e. Poverty headcount ratio at national poverty line (% of population)
    sort Series_Name
   drop in 1/4256 
   
     ** droping other non elevant factor i.e. Prevalence of HIV, total (% of population ages 15-49)
    sort Series_Name
   drop in 1/4256 
   
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Prevalence of current tobacco use, females (% of female adults).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate smk=yrm
label var smk "Prevalence of current tobacco use, females (% of female adults)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Prevalence of current tobacco use, females (% of female adults).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Prevalence of overweight, female (% of female adults).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate wgt=yrm
label var wgt"Prevalence of overweight, female (% of female adults)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Prevalence of overweight, female (% of female adults).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace

 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Risk of catastrophic expenditure for surgical care (% of people at risk).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate cse=yrm
label var cse"Risk of catastrophic expenditure for surgical care (% of people at risk)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Risk of catastrophic expenditure for surgical care (% of people at risk).dta", replace
clear



*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

   * drop non relevant variable i.e. Risk of impoverishing expenditure for surgical care (% of people at risk)
   sort Series_Name
   drop in 1/4256
      
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Rural population (% of total population).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate rpp=yrm
label var rpp"Rural population (% of total population)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Rural population (% of total population).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

      * drop un known variable
   sort Series_Name
 drop in 1/16
 
 * drop non relevant variable i.e. Share of women employed in the nonagricultural sector (% of total nonagricultural employment)
sort Series_Name
   drop in 1/4256 
 
 
  * drop non relevant variable i.e. Survival to age 65, female (% of cohort)
sort Series_Name
   drop in 1/4256 
      
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Total alcohol consumption per capita, female (liters of pure alcohol, projected estimates, female 15+ years of age).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate alc=yrm
label var alc"Total alcohol consumption per capita, female (liters of pure alcohol, projected estimates, female 15+ years of age)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Total alcohol consumption per capita, female (liters of pure alcohol, projected estimates, female 15+ years of age).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\UHC service coverage index.dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate uhc=yrm
label var uhc"UHC service coverage index"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\UHC service coverage index.dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
   drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Unemployment, female (% of female labor force).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate emp=yrm
label var emp"Unemployment, female (% of female labor force)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Unemployment, female (% of female labor force).dta", replace
clear


*** create one dataset (2006-2021) that used for preparing the data
 * drop those variables kept before and then keep new required viriables 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta"
 * drop those variables kept before i.e. Age dependency ratio (% of working-age population)
 
  sort Series_Name
     drop in 1/4256 // manually selecting the list of variables that were kept in the previous procedure
	 
	 * drop non relevant variable i.e. Unmet need for contraception (% of married women ages 15-49)
	   sort Series_Name
     drop in 1/4256 
	  
	  * drop non relevant variable i.e. Women who were first married by age 15 (% of women ages 20-24)
	   sort Series_Name
     drop in 1/4256 

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Data preparation 2006-2021.dta", replace


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Women's share of population ages 15+ living with HIV (%).dta"
// manually selecting the list of variables with interest for keeping 

sort Series_Name
keep in 1/4256 // manually selecting the list of variables with interest for keeping 

generate hivs=yrm
label var hivs"Women's share of population ages 15+ living with HIV (%)"

sort country
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Women's share of population ages 15+ living with HIV (%).dta", replace
clear


*** Merging the variables in one data set


* use "use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Out-of-pocket expenditure (% of current health expenditure).dta"" to creat the merging dataset
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Out-of-pocket expenditure (% of current health expenditure).dta"


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Merge year 2006-2021.dta", replace

sort country

merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Out-of-pocket expenditure per capita (current US$).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Out-of-pocket expenditure per capita, PPP (current international $).dta"

drop _merge

merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Age dependency ratio (% of working-age population).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Capital health expenditure (% of GDP).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Cause of death, by communicable diseases and maternal, prenatal and nutrition conditions (% of total).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Current health expenditure (% of GDP).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Current health expenditure per capita (current US$).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Current health expenditure per capita, PPP (current international $).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic general government health expenditure (% of current health expenditure).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic general government health expenditure (% of GDP).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic general government health expenditure (% of general government expenditure).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic general government health expenditure per capita (current US$).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic general government health expenditure per capita, PPP (current international $).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic private health expenditure (% of current health expenditure).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic private health expenditure per capita (current US$).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Domestic private health expenditure per capita, PPP  (current international $).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\External health expenditure (% of current health expenditure).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\External health expenditure channeled through government (% of external health expenditure).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\External health expenditure per capita (current US$).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\External health expenditure per capita, PPP (current international $).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\GNI per capita, Atlas method (current US$).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Human capital index (HCI), female (scale 0-1).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Literacy rate, adult female (% of females ages 15 and above).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Maternal mortality ratio (modeled estimate, per 100,000 live births).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Maternal mortality ratio (national estimate, per 100,000 live births).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Mortality rate attributed to household and ambient air pollution, age-standardized, female (per 100,000 female population).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Mortality rate attributed to unsafe water, unsafe sanitation and lack of hygiene, female (per 100,000 female population).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\People using at least basic drinking water services (% of population).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\People using at least basic sanitation services (% of population).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\People using safely managed drinking water services (% of population).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\People using safely managed sanitation services (% of population).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\People with basic handwashing facilities including soap and water (% of population).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Physicians (per 1,000 people).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Prevalence of current tobacco use, females (% of female adults).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Prevalence of overweight, female (% of female adults).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Risk of catastrophic expenditure for surgical care (% of people at risk).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Rural population (% of total population).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Total alcohol consumption per capita, female (liters of pure alcohol, projected estimates, female 15+ years of age).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\UHC service coverage index.dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Unemployment, female (% of female labor force).dta"
drop _merge
merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Independent variables\Women's share of population ages 15+ living with HIV (%).dta"
drop _merge


drop _merge
describe

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Merge year 2006-2021.dta", replace

clear 

// Identifying the countries and territories 

* Open the new stata window or use the balnk STATA window
import excel "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\2017 countries list.xlsx", sheet("Data") firstrow

label var emp"Unemployment, female (% of female labor force)"

rename CountryName country

drop C 
gen ctyl=1
label var ctyl"list of countries"
sort country


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\List of Countries.dta"

clear 

import excel "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\22 Territories.xlsx", sheet("Data") firstrow

rename CountryName country

gen tryl=2
label var tryl"list of territories"

sort country

merge 1:1 country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Territories list.dta"
//  19  (_merge==3)

replace tryl = 2 in 184
replace tryl = 2 in 213

drop if _merge==2
count // 217

sort country

drop _merge

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\List of Countries.dta", replace
clear


// merging the country codes

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Merge year 2006-2021.dta"

sort country

merge m:m country using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\List of Countries.dta"

sort _merge
replace ctyl=3 if _merge==1
ta ctyl

gen crs=.
replace crs=1 if (ctyl==1 & tryl==.)
replace crs=2 if (ctyl==1 & tryl==2)
replace crs=3 if (ctyl==3 & tryl==.)
label var crs"Country or region status"
label define crs 1"UN member countries" 2"Territories" 3"Aggregates"
label values crs crs

drop yrm _merge

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Merge year 2006-2021.dta", replace
clear




//*************************************************************************************************************************************************//*************************************************************************************************************************************************

** Merge all world bank with GBD data
//*************************************************************************************************************************************************

//--------------------------------------------------------------------------------------------------------------------------------------------------
*** merging cancer Incidence rate,  Incidence #, Death rate and Death # data from GBD with indpendent variable in world bank data 
//--------------------------------------------------------------------------------------------------------------------------------------------------


cd "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related"

** As the previous data spans 20006-2021 lets keep only for the time period with 2010-2019 and also correctng the countries names

use "Merge year 2006-2021.dta"

save "Merge year 2010-2019 (for country name correction only).dta", replace

// Know lets prepare variable and merge the the GBD data and correct countries names 

// rename some variables that are common for both and used for merging i.e. location_name year

gen location_name=country
gen year=yr 

** dystring year
destring year, replace

ta year
drop if (year==2006 | year==2007 | year==2008 | year==2009 | year==2020 | year==2021)
ta year

gsort location_name year

save "Merge year 2010-2019 (for country name correction only).dta", replace
clear


*** merging cancer Incidence rate,  Incidence #, Death rate and Death # data from GBD & world bank data with world bank data 
//--------------------------------------------------------------------------------------------------------------------------------------------------
cd "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers"


use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Merge all 5 cancers from GBD data.dta"

save "Merge world bank and GBD data_2010-2019 (for country name correction only).dta", replace


merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Merge year 2010-2019 (for country name correction only).dta"

save "Merge world bank and GBD data_2010-2019 (for country name correction only).dta", replace


*** merging cancer Incidence rate,  Incidence #, Death rate and Death # data from GBD & world bank data with world bank data 
//--------------------------------------------------------------------------------------------------------------------------------------------------

// let correct some countries name to merge them in the main data
** continue identifying and corrections
* steps to correct the country name 
*1 open both datasets i.e. merge and GBD data then put the the "data editor" window and searh the name of the country "Cntl + F"
*2 search the country name on both GBD abd GHO data "data editor" window and then correct with of them

// names should be corrected in GHO data for correctly matching are the following 

sort _merge year location_name
order _merge year location_name, last 
*while using the merge data opne a new stata datasets for GHO and find as the above instructions 
* eg.  use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\All factors merged 2010-2020.dta"
save "Merge world bank and GBD data_2010-2019 (for country name correction only).dta", replace
clear


* When identifying is completed close it and correct the coutries name in world bank data
* also limit the study period 2010-2019

use "Name corrected as per GBD country name in world bank data_Merge year 2010-2019.dta"

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Name corrected as per GBD country name in world bank data_Merge year 2010-2019.dta", replace

replace location_name="Bahamas" if location_name=="Bahamas, The"
replace location_name="Bahamas, The" if location_name=="Bahamas" 
replace location_name="Bolivia (Plurinational State of)" if location_name=="Bolivia" 
replace location_name="Congo" if location_name=="Congo, Rep."
replace location_name="Democratic Republic of the Congo" if location_name=="Congo, Dem. Rep."
replace location_name="CÃ´te d'Ivoire" if location_name=="Cote d'Ivoire"
replace location_name="Egypt" if location_name=="Egypt, Arab Rep."
replace location_name="Gambia" if location_name=="Gambia, The" 
replace location_name="Iran (Islamic Republic of)" if location_name=="Iran, Islamic Rep."
replace location_name="Kyrgyzstan" if location_name=="Kyrgyz Republic"
replace location_name="Lao People's Democratic Republic" if location_name=="Lao PDR"
replace location_name="Micronesia (Federated States of)" if location_name=="Micronesia, Fed. Sts."
replace location_name="Republic of Moldova" if location_name=="Moldova"
replace location_name="Republic of Korea" if location_name=="Korea, Rep." 
replace location_name="Democratic People's Republic of Korea" if location_name=="Korea, Dem. People's Rep."
replace location_name="Slovakia" if location_name=="Slovak Republic"
replace location_name="Saint Kitts and Nevis" if location_name=="St. Kitts and Nevis"
replace location_name="Saint Lucia" if location_name=="St. Lucia"
replace location_name="Saint Vincent and the Grenadines" if location_name=="St. Vincent and the Grenadines" 
replace location_name="United Republic of Tanzania" if location_name=="Tanzania"
replace location_name="Turkey" if location_name=="Turkiye"
replace location_name="United States of America" if location_name=="United States" 
replace location_name="Venezuela (Bolivarian Republic of)" if location_name=="Venezuela, RB"
replace location_name="Viet Nam" if location_name=="Vietnam" 
replace location_name="United States Virgin Islands" if location_name=="Virgin Islands (U.S.)" 
replace location_name="Yemen" if location_name=="Yemen, Rep."


** available countries or territories in World bank data but not in GBD daata

//*GBD missed countries #3
*Isle of Man
*Kosovo
*West Bank and Gaza

//*GBD missed territories  #16
*Aruba
*British Virgin Islands
*Cayman Islands
*Channel Islands
*Curacao
*Faroe Islands
*French Polynesia
*Gibraltar
*Hong Kong SAR, China
*Liechtenstein
*Macao SAR, China
*New Caledonia
*Sint Maarten (Dutch part)
*St. Martin (French part)
*Turks and Caicos Islands

//**World bank missed countries or territories #5
*Cook Islands
*Niue
*Palestine
*Taiwan (Province of China)
*Tokelau

gsort location_name year

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Name corrected as per GBD country name in world bank data_Merge year 2010-2019.dta", replace
clear



*** merging cancer Incidence rate,  Incidence #, Death rate and Death # data from GBD & world bank data with world bank data 
//--------------------------------------------------------------------------------------------------------------------------------------------------
cd "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related"

** open GBD and GHO merged data 
use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\5 cancers\Merging all GBD & GHO data (2010-2019).dta"

save "Merging all GBD, GHO & world bank data (2010-2019).dta", replace

drop _merge
gsort location_name year

merge m:m location_name year using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Name corrected as per GBD country name in world bank data_Merge year 2010-2019.dta"

ta year
duplicates report Location Period
save "Merging all GBD, GHO & world bank data (2010-2019).dta", replace


* Preparing the data for analysis 
save "Merging all GBD, GHO & world bank data (2010-2019) MoD 1.dta", replace

misschk allcadr allcai nallcad nallcai brcai nbrcad nbrcai opeppp che yr, gen(miss) replace
* drop the missing factors for the outcomes 
ta year if allcadr !=.
drop if allcadr==. //(680 observations deleted)
ta year

//*************************************************************************************************************************************************//*************************************************************************************************************************************************//*************************************************************************************************************************************************
** imputations for missing data for all factors with GBD and World bank data
//*************************************************************************************************************************************************


// Last Observation Carried Forward (LOCF) and Next observation carried backward (NOCB) imputation method

// step by step imputation of using LOCF and NOCB method was used i.e. 3 steps 
// example if participant only responded in survey 1 and survey 7 the first two missing value (survey 2&3) was imputed by Survey 1 response and the last two (survey 5&6) by NOCB method
// and still we have missing value for survey 4 and this will be imputed by survey 1 response 
// in the above imputations all the combination of methods were used and some missed values could apear for some observations thus both LOCF and NOCB method was used


misschk allcadr nbrcai lncadr opeppp che cheppp dgghe dggheppp dpheu dpheppp eheppp wgtf obesef mbmif hdlf smkf tbuf alcf excf uhc emp rpp cse ppd lrf, gen(miss) replace

 // The LOCF and NOCB is not provided good results and the mean imputations will be used
  // generating mean rate per variable for all yearsper each country 
 
bysort location_name: egen uhcm = mean(uhc)
  gen uhcii=uhc
 replace uhcii=uhcm if uhcii==.
 label var uhcii"UHC index imputed"
 
 bysort location_name: egen alcbsm = mean(alcbs)
  gen alcbsii=alcbs
 replace alcbsii=alcbsm if alcbsii==.
 label var alcbsii "alcohol both sexes imputed"
 
 bysort location_name: egen alcfm = mean(alcf)
  gen alcfii=alcf
 replace alcfii=alcfm if alcfii==.
label var alcfii " alcohol female imputed"
 
bysort location_name: egen owgtbsm = mean(owgtbs)
  gen owgtbsii=owgtbs
 replace owgtbsii=owgtbsm if owgtbsii==.
label var owgtbsii " BMI above 25_overweight both sexes imputed"

bysort location_name: egen wgtfm = mean(wgtf)
  gen wgtfii=wgtf
 replace wgtfii=wgtfm if wgtfii==.
label var wgtfii " BMI above 25_overweight female imputed"

bysort location_name: egen obesebsm = mean(obesebs)
  gen obesebsii=obesebs
 replace obesebsii=obesebsm if obesebsii==.
label var obesebsii " BMI above 30_obese both sexes imputed"

bysort location_name: egen obesefm = mean(obesef)
  gen obesefii=obesef
 replace obesefii=obesefm if obesefii==.
label var obesefii " BMI above 30_obese female imputed"

bysort location_name: egen mbmibsm = mean(mbmibs)
  gen mbmibsii=mbmibs
 replace mbmibsii=mbmibsm if mbmibsii==.
label var mbmibsii " Mean BMI both sexes imputed"

bysort location_name: egen mbmifm = mean(mbmif)
  gen mbmifii=mbmif
 replace mbmifii=mbmifm if mbmifii==.
label var mbmifii " Mean BMI female imputed"


bysort location_name: egen hdlbsm = mean(hdlbs)
  gen hdlbsii=hdlbs
 replace hdlbsii=hdlbsm if hdlbsii==.
label var hdlbsii " mean HDL both sexes imputed"

bysort location_name: egen hdlfm = mean(hdlf)
  gen hdlfii=hdlf
 replace hdlfii=hdlfm if hdlfii==.
label var hdlfii " mean HDL female imputed"

bysort location_name: egen smkbsm = mean(smkbs)
  gen smkbsii=smkbs
 replace smkbsii=smkbsm if smkbsii==.
label var smkbsii " smoking both sexes imputed"

bysort location_name: egen smkfm = mean(smkf)
  gen smkfii=smkf
 replace smkfii=smkfm if smkfii==.
label var smkfii " smoking female imputed"

bysort location_name: egen excbsm = mean(excbs)
  gen excbsii=excbs
 replace excbsii=excbsm if excbsii==.
label var excbsii " excercise both sexes imputed"

bysort location_name: egen excfm = mean(excf)
  gen excfii=excf
 replace excfii=excfm if excfii==.
label var excfii " excercise female imputed"


bysort location_name: egen opem = mean(ope)
  gen opeii=ope
 replace opeii=opem if opeii==.
label var opeii "Out-of-pocket expenditure (% of current health expenditure) imputed"

bysort location_name: egen opeum = mean(opeu)
  gen opeuii=opeu
 replace opeuii=opeum if opeuii==.
label var opeuii "Out-of-pocket expenditure per capita (current US$) imputed"

bysort location_name: egen opepppm = mean(opeppp)
  gen opepppii=opeppp
 replace opepppii=opepppm if opepppii==.
label var opepppii " Out-of-pocket expenditure per capita, PPP (current international $) imputed"

bysort location_name: egen chem = mean(che)
  gen cheii= che
 replace cheii= chem if cheii==.
label var cheii " Capital health expenditure (% of GDP) imputed"

bysort location_name: egen chepm = mean(chep)
  gen chepii=chep
 replace chepii=chepm if chepii==.
label var chepii "Current health expenditure (% of GDP) imputed"

bysort location_name: egen cheusm = mean(cheus)
  gen cheusii=cheus
 replace cheusii=cheusm if cheusii==.
label var cheusii "Current health expenditure per capita (current US$) imputed"

bysort location_name: egen chepppm = mean(cheppp)
  gen chepppii=cheppp
 replace chepppii=chepppm if chepppii==.
label var chepppii " Current health expenditure per capita, PPP (current international $) imputed"


bysort location_name: egen dghepm = mean(dghep)
  gen dghepii=dghep
 replace dghepii=dghepm if dghepii==.
label var dghepii "Public health expenditure imputed"

label var dghep "Public health expenditure from domestic public sources for health"
label var dghe "Public health expenditure % share of GDP"


bysort location_name: egen dghem = mean(dghe)
  gen dgheii=dghe
 replace dgheii=dghem if dgheii==.
label var dgheii " Public health expenditure % share of GDP imputed"

bysort location_name: egen dgghem = mean(dgghe)
  gen dggheii=dgghe
 replace dggheii=dgghem if dggheii==.
label var dggheii " Domestic general government health expenditure (% of general government expendit imputed"

bysort location_name: egen dggheum = mean(dggheu)
  gen dggheuii=dggheu
 replace dggheuii=dggheum if dggheuii==.
label var dggheuii " Public expenditure on health from domestic sources per capita in US$ imputed"

bysort location_name: egen dgghepppm = mean(dggheppp)
  gen dgghepppii=dggheppp
 replace dgghepppii=dgghepppm if dgghepppii==.
label var dgghepppii "Public expenditure on health from domestic sources per capita in PPP imputed"

bysort location_name: egen dphem = mean(dphe)
  gen dpheii=dphe
 replace dpheii=dphem if dpheii==.
label var dpheii " Domestic private health expenditure (% of current health expenditure) imputed"

bysort location_name: egen dphepppm = mean(dpheppp)
  gen dphepppii=dpheppp
 replace dphepppii=dphepppm if dphepppii==.
label var dphepppii " Domestic private health expenditure per capita, PPP  (current international $) imputed"

bysort location_name: egen ehem = mean(ehe)
  gen eheii=ehe
 replace eheii=ehem if eheii==.
label var eheii " External health expenditure (% of current health expenditure) imputed"

bysort location_name: egen ehepppm = mean(eheppp)
  gen ehepppii=eheppp
 replace ehepppii=ehepppm if ehepppii==.
label var ehepppii " External health expenditure per capita, PPP (current international $) imputed"

bysort location_name: egen csem = mean(cse)
  gen cseii=cse
 replace cseii=csem if cseii==.
label var cseii " Risk of catastrophic expenditure for surgical care (% of people at risk)  imputed"

bysort location_name: egen alcm = mean(alc)
  gen alcii=alc
 replace alcii=alcm if alcii==.
label var alcii " Total alcohol consumption per capita, female (liters of pure alcohol, projected imputed"

bysort location_name: egen empm = mean(emp)
  gen empii=emp
 replace empii=empm if empii==.
label var empii " Unemployment, female (% of female labor force) imputed"

bysort location_name: egen smkm = mean(smk)
  gen smkii=smk
 replace smkii=smkm if smkii==.
label var smkii " Prevalence of current tobacco use, females (% of female adults) imputed"

bysort location_name: egen ppdm = mean(ppd)
  gen ppdii=ppd
 replace ppdii=ppdm if ppdii==.
label var ppdii " Physicians (per 1,000 people) imputed"

bysort location_name: egen lrfm = mean(lrf)
  gen lrfii=lrf
 replace lrfii=lrfm if lrfii==.
label var lrfii " Literacy rate, adult female (% of females ages 15 and above) imputed"

bysort location_name: egen hcifm = mean(hcif)
  gen hcifii=hcif
 replace hcifii=hcifm if hcifii==.
label var hcifii " Human capital index (HCI), female (scale 0-1) imputed"

bysort location_name: egen gnim = mean(gni)
  gen gniii=gni
 replace gniii=gnim if gniii==.
label var gniii " GNI per capita, Atlas method (current US$) imputed"


misschk uhcii alcfii wgtfii obesefii hdlfii smkfii excfii opepppii chepppii dghepii dgheii dggheii dgghepppii dphepppii ehepppii cseii alcii empii smkii ppdii lrfii hcifii gniii, gen(miss) replace
mvpatterns uhcii alcfii wgtfii obesefii hdlfii smkfii excfii opepppii chepppii dghepii dgheii dggheii dgghepppii dphepppii ehepppii cseii alcii empii smkii ppdii lrfii hcifii gniii

//------------------------------------------------------------------------------------------------------------//------------------------------------------------------------------------------------------------------------
** Generate mortality to incidence ratio
//------------------------------------------------------------------------------------------------------------//------------------------------------------------------------------------------------------------------------
* MRI interpretation
*https://ncci.canceraustralia.gov.au/outcomes/mortality-incidence-ratio/mortality-incidence-ratio#:~:text=The%20mortality%2Dto%2Dincidence%20ratio%20(MIR)%20is%20calculated,cancer%20in%20the%20same%20year.

gen mirallca=(allcadr/allcai)*100
label var mirallca " MIR All cancer by rate"

gen nmirallca=(nallcad/nallcai)*100
label var nmirallca " MIR All cancer by #"

gen mirbrca=(brcadr/brcai)*100
label var mirbrca " Breast MIR by rate"

gen nmirbrca=(nbrcad/nbrcai)*100
label var nmirbrca" Breast MIR by #"

gen mirlnca=(lncadr/lncai)*100
label var mirlnca " Lung MIR by rate"

gen nmirlnca=(nlncad/nlncai)*100
label var nmirlnca" Lung MIR by #"

gen mircca=(ccadr/ccai)*100
label var mircca "Cervical MIR by rate"

gen nmircca=(nccad/nccai)*100
label var nmircca"Cervical MIR by #"

gen mirstoca=(stocadr/stocai)*100
label var mirstoca " Stomach MIR by rate"

gen nmirstoca=(nstocad/nstocai)*100
label var nmirstoca" Stomach MIR by #"

gen mircrca=(crcadr/crcai)*100
label var mircrca " Colorectal MIR by rate"

gen nmircrca=(ncrcad/ncrcai)*100
label var nmircrca" Colorectal MIR by #"


save "Merging all GBD, GHO & world bank data (2010-2019) MoD 1.dta", replace

//------------------------------------------------------------------------------------------------------------
* creating the data quality variable
//------------------------------------------------------------------------------------------------------------

*0-5 rating and 5 if good quality. the document for data quality is presnted below 
*https://www.thelancet.com/cms/10.1016/S0140-6736(20)30925-9/attachment/7709ecbd-5dbc-4da6-93b2-3fd0bedc16cc/mmc1.pdf
* check under 
* Table S7. Data quality rating from 0 to 5 stars, maximum percent well certified per 5-year interval and percent well certified across time series for 204 countries, 1980-2019. ………………………………..…..... 1493
* Table S9. Underlying indicators for percent well-certified for data source with maximum percent well certified in each 5-year time interval for 204 countries, 1980-2019
*Table S9. Underlying indicators for percent well-certified for data source with maximum percent well certified in each 5-year time interval for 204 countries, 1980-2019 ………………………..…………….….…. 1496

*https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(20)30925-9/fulltext#supplementaryMaterial


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data quality for Year 2010.dta"

keep if year==2010
drop mirallca mirbrca mirlnca mircca mircrca mirstoca allcadr brcadr lncadr ccadr crcadr stocadr uhcii alcbsii alcfii owgtbsii wgtfii obesebsii obesefii mbmibsii mbmifii hdlbsii hdlfii smkbsii smkfii excbsii excfii chepppii dgghepppii dphepppii ehepppii opepppii cseii alcii empii smkii ppdii lrfii allcai dggheuii sex_id sex_name age_id age_name nallcad nallcai brcai nbrcad nbrcai lncai nlncad nlncai ccai nccad nccai stocai nstocad nstocai crcai ncrcad ncrcai Indicator ParentLocation Locationtype Location Period Dim1 alcbs sexboth alcf sexf owgtbs wgtf obesebs obesef mbmibs mbmif hdlbs hdlf smkbs smkf tbubs tbuf excbs excf uhc measure_id measure_name cause_id cause_name metric_id metric_name country Country_CODE Series_Name Series_Code yr ope opeu opeppp che adr dmn chep cheus cheppp dgghe dggheu dggheppp dphe dpheu dpheppp dgheii dghe dghep dghepii ehe ehecg eheu eheppp gni hcif lrf mmr mmrne maap mawsh bdw bss smw smss bhf ppd smk wgt cse rpp alc emp hivs CountryCode ctyl tryl crs _merge uhcm alcbsm alcfm owgtbsm wgtfm obesebsm obesefm mbmibsm mbmifm hdlbsm hdlfm smkbsm smkfm excbsm excfm opem opeii opeum opeuii opepppm cheusm cheusii chepppm dghepm dghem dgghem dggheii dggheum dgghepppm dphem dpheii dphepppm ehem eheii ehepppm csem alcm empm smkm ppdm lrfm hcifm hcifii gnim gniii nmirallca nmirbrca nmirlnca nmircca nmirstoca nmircrca r misspattern missnumber mirallcaln allcadrln uhcln alcfln wgtfln obesefln mbmifln hdlfln smkfln excfln chepppln dgghepppln dphepppln ehepppln opepppln cseln empln ppdln lrfln chem cheii cheln chepm chepii chepln dggheln


* Fill manually all the values 
* rename year to avoid merging with other data sources 

rename year year2010
sort location_name
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data quality for Year 2010.dta", replace
clear

use "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Merging all GBD, GHO & world bank data (2010-2019) MoD 1.dta"

* We need to keep the merge variable for 3 datasets 
rename _merge  _merge_alldata
sort location_name

merge m:m location_name using "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data quality for Year 2010.dta"

ta year, m
duplicates report location_name year
order dataqual, after(location_name)
gsort location_name year

save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Merging all GBD, GHO & world bank data (2010-2019) MoD 1.dta", replace

* keep data quality >=3 based on DOI: 10.1097/CM9.0000000000001814 
*Global and regional trends in incidence and mortality of female breast cancer and associated factors at national level in 2000 to 2019




save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Merging all GBD, GHO & world bank data (2010-2019)_Data quality above 3.dta"

ta dataqual
keep if dataqual >=3
ta dataqual


save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Merging all GBD, GHO & world bank data (2010-2019)_Data quality above 3.dta", replace



//------------------------------------------------------------------------------------------------------------
** checking data accuracy and sample integrity using data cleaning methods 
*Identifying duplicate observations and outliers
//------------------------------------------------------------------------------------------------------------

** checking duplicate observations, i.e. duplicate for all variables or measures
duplicates report // there is no duplicates observation 

* checking outliers  

* checking outliers for continuous variables 
* for this analysis, both graphical plotting and listing of the possible extreme values (table) were used
* from the graphical options the "box plot" was used and saved as a PNG format
  * outliers were listed using their make (including the values)

* to get the list of extreme values, the 'extremes' syntax was used
* in addition to the list of extreme values identified by 'extremes' 
* the observations that were two times the IQR (interquartile range) above and below the upper and lower quartiles were checked by adding "iqr(2)”
 ssc install extremes // install the package 
 
 //**********************************************
* transforming observations in ln format
* the outcome measure and predictors were transformed using a logarithmic function where appropriate.
*measured as a share of total health spending and centre log-ratio transformed, while GDP per capita was natural log transformed.40 {Kiross, 2020 #143}
* To estimate uncertainty, the underlying data was bootstrapped 1000 times, and all regressions were completed independently on each of the 1000 bootstrap samples.41,42 {Global Burden of Disease Health Financing Collaborator, 2017 #142}

order location_name year mirallca mirbrca mirlnca mircca mircrca mirstoca allcadr brcadr lncadr ccadr crcadr stocadr uhcii alcbsii alcfii owgtbsii wgtfii obesebsii obesefii mbmibsii mbmifii hdlbsii hdlfii smkbsii smkfii excbsii excfii chepii chepppii dgghepppii dphepppii ehepppii opepppii cseii alcii empii smkii ppdii lrfii, after(location_id)




* transforming observations in ln format
* the outcome measure and predictors were transformed using a logarithmic function where appropriate.
*measured as a share of total health spending and centre log-ratio transformed, while GDP per capita was natural log transformed.40 {Kiross, 2020 #143}
* To estimate uncertainty, the underlying data was bootstrapped 1000 times, and all regressions were completed independently on each of the 1000 bootstrap samples.41,42 {Global Burden of Disease Health Financing Collaborator, 2017 #142}

gen mirallcaln= ln(mirallca)
label var mirallcaln "All cancer MIR ln transformed"

gen allcadrln= ln(allcadr)
label var allcadrln "All cancer death ln transformed"

gen uhcln= ln(uhcii)
label var uhcln "UHC index ln transformed"

gen alcfln= ln(alcfii)
label var alcfln "Alcohol female ln transformed"

gen wgtfln= ln(wgtfii)
label var wgtfln " BMI above 25_overweight female ln transformed"

gen obesefln= ln(obesefii)
label var obesefln " BMI above 30_obese female ln transformed"

gen mbmifln= ln(mbmifii)
label var mbmifln " Mean BMI female ln transformed"

gen hdlfln= ln(hdlfii)
label var hdlfln " mean HDL female ln transformed"

gen smkfln= ln(smkfii)
label var smkfln " smoking female ln transformed"

gen excfln= ln(excfii)
label var excfln " excercise female ln transformed"

gen cheln= ln(cheii)
label var cheln " Capital health expenditure (% of GDP) ln transformed"

gen chepppln= ln(chepppii)
label var chepppln "Current health expenditure per capita, ln transformed"

gen dgghepppln= ln(dgghepppii)
label var dgghepppln " Public expenditure on health from domestic sources per capita,ppp ln transformed"

gen dphepppln= ln(dphepppii)
label var dphepppln " Domestic private health expenditure per capita, PPP, ln transformed"

gen ehepppln= ln(ehepppii)
label var ehepppln " External health expenditure per capita, PPP, ln transformed"

gen opepppln= ln(opepppii)
label var opepppln " Out-of-pocket expenditure per capita, PPP, ln transformed"

gen cseln= ln(cseii)
label var cseln " Risk of catastrophic expenditure for surgical care (% of people at risk), ln transformed"

gen empln= ln(empii)
label var empln " Unemployment, female (% of female labor force) ln transformed"

gen ppdln= ln(ppdii)
label var ppdln " Physicians (per 1,000 people) ln transformed"

gen lrfln= ln(lrfii)
label var lrfln " iteracy rate, adult female (% of females ages 15 and above) ln transformed"

gen chepln= ln(chepii)
label var chepln "Current health expenditure (% of GDP) ln transformed"

gen chepppln= ln(chepppii)
label var chepppln " Current health expenditure per capita, PPP ln transformed"

gen dggheln= ln(dggheii)
label var dggheln " Domestic general government health expenditure (% of GGE) ln transformed"


gen gniln= ln(gniii)
label var gniln " GNI per capita, Atlas method (current US$) imputed ln transformed"



// Outlier detection 
 //**********************************************

graph box opeppp, mark(1,mlabel(location_name)) 


* linear relationship or normal distribution     
 //**********************************************
 ** read this link https://campusguides.lib.utah.edu/c.php?g=160853&p=1054160 
 *https://www.princeton.edu/~otorres/Regression101.pdf
*https://www.youtube.com/watch?v=1Qcp1YtXmDA

// assess quickly for the correlation in graph for many variables
graph matrix lnmirallca lnopeppp uhcii, half
graph matrix mirallcaln uhcln alcfln obesefln hdlfln smkfln excfln chepppln dgghepppln dphepppln ehepppln opepppln cseln empln ppdln lrfln, half


// assess the correlation in graph for two variables

twoway (scatter lnopeppp lnmirallca) (lfit lnopeppp lnmirallca) (lowess lnopeppp lnmirallca) 


// normal distribution for each variable 

*kdensity will indicate the need to transforming the variable e.g ln for skewed distribution


kdensity lnmirallca, normal   
histogram lnmirallca, addlabel binrescale normal

kdensity mirallca, normal   
histogram mirallca, addlabel binrescale normal

kdensity mirbrca, normal   
histogram mirbrca, addlabel binrescale normal




* checking the residuals after regression e.g. using acprplot 

regress lnmirallca lnopeppp 

predict r, resid
scatter r lnopeppp 
acprplot lnopeppp, lowess lsopts(bwidth(1))



** correlation analysis
 //********************************************** //********************************************** //********************************************** //**********************************************
spearman allcai mirallca brcadr lncadr ccadr crcadr mirallca mirbrca mirlnca mircca mirstoca mircrca uhcii alcbsii alcfii owgtbsii wgtfii obesebsii obesefii mbmibsii mbmifii hdlbsii hdlfii smkbsii smkfii excbsii excfii chepii chepppii dgghepppii dphepppii ehepppii opepppii cseii alcii gniii empii smkii ppdii lrfii, star(0.05)

spearman allcai mirallca brcadr lncadr ccadr crcadr mirallca mirbrca mirlnca mircca mirstoca mircrca uhcii alcfii obesefii mbmifii hdlfii smkfii excfii chepii chepppii dgghepppii dphepppii ehepppii opepppii cseii gniii empii ppdii lrfii rpp, star(0.05)


spearman lnmirallca lnopeppp, star(0.05)
spearman mirallca opeppp, star(0.05)
spearman mirallcaln uhcln, star(0.05)
spearman mirallcaln chepppln uhcln obesefln alcfln lrfln, star(0.05)
spearman mirallca cheppp uhc obesef alcf lrf, star(0.05)
spearman allcadrln chepppln uhcln obesefln alcfln lrfln, star(0.05)
spearman allcadr cheppp uhc obesef alcf lrf, star(0.05)



pwcorr allcai brcadr lncadr ccadr crcadr mirallca mirbrca mirlnca mircca mirstoca mircrca uhcii alcbsii alcfii owgtbsii wgtfii obesebsii obesefii mbmibsii mbmifii hdlbsii hdlfii smkbsii smkfii excbsii excfii chepii chepppii dgghepppii dphepppii ehepppii opepppii cseii alcii empii smkii ppdii lrfii, star(0.05) sig

 mirallca chepii chepppii dgghepppii dphepppii ehepppii opepppii cseii alcii empii smkii ppdii lrfii, star(0.05) sig


 

graph matrix lnopeppp lnmirallca

scatter lnopeppp lnmirallca, lowess


gen ln_opeppp = ln(opeppp)
gen ln_rate_allage = ln(rate_allage)
gen ln_deathrate_allage = ln(deathrate_allage)

** outliers
** 
sort ln_opeppp
extremes ln_opeppp
extremes ln_opeppp, iqr(2)

graph box opeppp, mark(1,mlabel(location_name)) 
graph twoway scatter ln_opeppp ln_rate_allage


scatter lnopeppp lnmirallca, lowess
twoway (scatter ln_opeppp ln_rate_allage) (lfit ln_opeppp ln_rate_allage) (lowess ln_opeppp ln_rate_allage)


** Data preparation for world bank data
 //********************************************** //********************************************** //********************************************** //**********************************************
import delimited "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Global Health Expenditure Database (GHED)\Data_csv.csv", numericcols(5 6 7 8 9 10 11 12 13 14 15 16) clear
sort v3
 
save "C:\Users\c3271807\OneDrive - The University of Queensland\Desktop\GBD articles and Related\Data\Factors\Global Health Expenditure Database (GHED)\All imported GHED data.dta"
clear



* regression
 //********************************************** //********************************************** //********************************************** //**********************************************

regress ln_rate_allage ln_opeppp rpp wgt, eform(exp(Coef.))


gen mirallage=(deathrate_allage/rate_allage)*100


xtset location_id year

xtreg mirallage opeppp obesefm uhcii alcfii smkfii excfii, re


regress mirallcaln chepppln uhcln obesefln alcfln lrfln, re

regress mirallcaln chepppln uhcln obesefln alcfln lrfln

regress allcadrln chepppln uhcln obesefln alcfln lrfln
regress allcadrln gniln uhcln obesefln alcfln

regress mirallcaln gniln uhcln obesefln alcfln lrfln


xtset location_id year
xtreg mirallcaln chepppln, re


 * checking outliers for price
 * the graph for each variable was saved as a PNG format 
 graph box price, mark(1,mlabel(make)) name(price_boxplot) 
 gr_export "price_boxplot.png", width(800) height(600) replace
 
* analysing the list of extreme values 
sort price
extremes price
extremes price, iqr(2)


* Checking outliers for mpg
 * The graph for each variable was saved as a PNG format 
 graph box mpg, mark(1,mlabel(make)) name(mpg_boxplot) 
 gr_export "mpg_boxplot.png", width(800) height(600) replace
 
* analysing the list of extreme values 
sort mpg
extremes mpg
extremes mpg, iqr(2)


* Checking outliers for hdroom
 * The graph for each variable was saved as a PNG format 
 graph box hdroom, mark(1,mlabel(make)) name(hdroom_boxplot) 
 gr_export "hdroom_boxplot.png", width(800) height(600) replace
 
* analysing the list of extreme values 
sort hdroom
extremes hdroom
extremes hdroom, iqr(2)


* Checking outliers for turn
 * The graph for each variable was saved as a PNG format 
 graph box turn, mark(1,mlabel(make)) name(turn_boxplot) 
 gr_export "turn_boxplot.png", width(800) height(600) replace
 
* analysing the list of extreme values 
sort turn
extremes turn
extremes turn, iqr(2)


* Checking outliers for gratio
 * The graph for each variable was saved as a PNG format 
 graph box gratio, mark(1,mlabel(make)) name(gratio_boxplot) 
 gr_export "gratio_boxplot.png", width(800) height(600) replace
 
* analysing the list of extreme values 
sort gratio
extremes gratio
extremes gratio, iqr(2)


* Checking outliers for trunk
 * The graph for each variable was saved as a PNG format 
 graph box trunk, mark(1,mlabel(make)) name(trunk_boxplot) 
 gr_export "trunk_boxplot.png", width(800) height(600) replace
 
* analysing the list of extreme values 
sort trunk
extremes trunk
extremes trunk, iqr(2)


* Checking outliers for rseat
 * The graph for each variable was saved as a PNG format 
 graph box rseat, mark(1,mlabel(make)) name(rseat_boxplot) 
 gr_export "rseat_boxplot.png", width(800) height(600) replace
 
* analysing the list of extreme values 
sort rseat
extremes rseat
extremes rseat, iqr(2)

* Checking outliers for displ
 * The graph for each variable was saved as a PNG format 
 graph box displ, mark(1,mlabel(make)) name(displ_boxplot) 
 gr_export "displ_boxplot.png", width(800) height(600) replace
 
* analysing the list of extreme values 
sort displ
extremes displ
extremes displ, iqr(2)

* Checking outliers for order
 * The graph for each variable was saved as a PNG format 
 graph box order, mark(1,mlabel(make)) name(order_boxplot) 
 gr_export "order_boxplot.png", width(800) height(600) replace
 
* analysing the list of extreme values 
sort order
extremes order
extremes order, iqr(2)
 
 
* Checking outliers for length
 * The graph for each variable was saved as a PNG format 
 graph box length, mark(1,mlabel(make)) name(length_boxplot) 
 gr_export "length_boxplot.png", width(800) height(600) replace
 
* analysing the list of extreme values 
sort length
extremes length
extremes length, iqr(2)


* Checking outliers for wgt
 * The graph for each variable was saved as a PNG format 
 graph box wgt, mark(1,mlabel(make)) name(wgt_boxplot) 
 gr_export "wgt_boxplot.png", width(800) height(600) replace
 
* analysing the list of extreme values 
sort wgt
extremes wgt
extremes wgt, iqr(2)

*summary about outliers for continuous variables
** both the box plot and the extreme observation analysis showed the possible outliers in three variables: price, mpg and reseat 
* three variables have observations that are more than two times the IQR above the third quartile: price (8 observations), mpg (1 observation) and reseat(1 observation) also have the same result in a box plot
* individual observations with possible extreme value were identified


* checking data for categorical variables 
* checking the frequencies, labels and total observations for the variables; 'tab1' options give all these options
 
tab1 rep78 rep77 rep77g wgt3, m

* The total observation (including missing values) per each variable was the same as the overall observations, and the frequencies per each variable look reasonable






























