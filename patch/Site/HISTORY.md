# git_version_str_undefined_symbol.p0.patch (remove)

```
Loading /epics/modules/ecmc/4.2.0/R3.15.5/lib/linux-x86_64/libecmc.so library failed: /epics/modules/ecmc/4.2.0/R3.15.5/lib/linux-x86_64/libecmc.so: undefined symbol: git_version_str
```

Maybe temp. patch, but the variable only is used for printf. 


* created by Jeong Han Lee, han.lee@esss.se
* Sunday, March 25 01:40:16 CET 2018
* Implemented to handle the internal gitversion script
* removed by Jeong Han Lee
* Tuesday, May  8 14:51:12 CEST 2018

