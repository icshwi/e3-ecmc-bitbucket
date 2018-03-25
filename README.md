# e3-ecmc

Currently, we need to run ```make patch``` because of undefined symbol of not-important variables in printf function. This is not the good solution, but the acceptable solution. In order to debug them properly, we might need the complete installation log with the community EPICS enviornment instead of EEE.




```
make init
make patch
make build
make install
```



```
make init
make patch
make rebuild

```
