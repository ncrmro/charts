# Squid Proxy Helm Chart

I wrote about this [here](https://ncrmro.com/posts/squid-proxy-as-a-helm-chart)

The easiest way to use this is to have the service be a node port. As it is it will not work behind a reverse proxy.

```shell
sudo http_proxy=http://IP_ADDRESS_OR_DOMAIN:31773 apt-get upgrade 
```
