library(dplyr)
library(tidyr)
library(ggplot2)

download.file("https://efis.fma.csc.gov.on.ca/fir/fir.rda", "fir.rda")
load("fir.rda")

#select only weighted, phase-in taxable assessment
assessments <- fir%>%
  select(MUNID, as.numeric(MARSYEAR), LT1NAME, region, MUNTIER, "CVA.res" = slc.261.10.17,
         "CVA.res.multires" = slc.261.50.17,
         "CVA.res.farmland" = slc.261.110.17,
         "CVA.res.managedforest" = slc.261.140.17,
         "CVA.comm" = slc.261.210.17,
         "CVA.comm.new.const" = slc.261.215.17,
         "CVA.comm.park.lot" = slc.261.310.17,
         "CVA.comm.office.build" = slc.261.320.17,
         "CVA.comm.office.build.new.const" = slc.261.325.17,
         "CVA.comm.shop.centre" = slc.261.340.17,
         "CVA.comm.shop.centre.new.const" = slc.261.340.17,
         "CVA.ind" = slc.261.510.17,
         "CVA.ind.new.const" = slc.261.515.17,
         "CVA.ind.large" = slc.261.610.17,
         "CVA.ind.large.new" = slc.261.615.17,
         "CVA.oth.pipelines" = slc.261.710.17,
         "CVA.oth.other" = slc.261.810.17,
         "CVA.total" = slc.261.9199.17)