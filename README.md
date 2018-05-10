# e3-ecmc

Currently, we need to run ```make patch``` because of undefined symbol of not-important variables in printf function. This is not the good solution, but the acceptable solution. In order to debug them properly, we might need the complete installation log with the community EPICS enviornment instead of EEE.




## ESS bitbucket account is need

One needs to have the ESS bitbucket accout. **make init** will ask the ESS user name and its password. In order to minimize that case, one can add the ssh key in ones account. After that, the following command should be executed in order to use the different url instead of the default one.


```
git config --global url."git@bitbucket.org:".insteadOf https://bitbucket.org/
```


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
