# 附录A.3 Helm的镜像

## Helm的安装包

Helm安装包可以从Azure中国镜像下载。例如

- Linux <http://mirror.azure.cn/kubernetes/helm/helm-v2.14.1-linux-arm64.tar.gz>
- Windows <http://mirror.azure.cn/kubernetes/helm/helm-v2.14.0-windows-amd64.zip>

## Helm Hub镜像

在<https://hub.helm.sh>上，可以搜索Helm Chart，并浏览对应的文档。在国内可以访问<https://developer.aliyun.com/hub#/>。

| 名称 | 地址 |
| ------------- | ------------- |
| 阿里云镜像 | helm repo add aliyun https://kubernetes.oss-cn-hangzhou.aliyuncs.com/charts |
| 阿里云App Hub镜像 | helm repo add apphub https://apphub.aliyuncs.com/ |
| Azure中国镜像 | helm repo add azure http://mirror.azure.cn/kubernetes/charts |
