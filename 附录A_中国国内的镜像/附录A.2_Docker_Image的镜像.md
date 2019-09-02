# 附录A.2_Docker_Image的镜像

除了Docker Hub，Kubernetes安装过程中需要gcr.io、k8s.gcr.io和quay.io上的docker image.

## Docker Hub的Docker Image镜像

| 名称 | 官网docker pull yyy:zzz | 官网docker pull xxx/yyy:zzz |
| ------------- | ------------- | ------------- |
| 阿里云镜像 | docker pull registry.cn-hangzhou.aliyuncs.com/library/yyy:zzz | docker pull registry.cn-hangzhou.aliyuncs.com/xxx/yyy:zzz |
| 中科大镜像 | docker pull docker.mirrors.ustc.edu.cn/library/yyy:zzz | docker pull docker.mirrors.ustc.edu.cn/xxx/yyy:zzz |
| Azure中国镜像 | docker pull dockerhub.azk8s.cn/library/yyy:zzz | docker pull dockerhub.azk8s.cn/xxx/yyy:zzz |

## gcr.io和k8s.gcr.io的Docker Image镜像

```docker pull k8s.gcr.io/yyy:zzz```相当于```docker pull gcr.io/google-containers/yyy:zzz```

| 名称 | 官网docker pull gcr.io/google_containers/yyy:zzz |
| ------------- | ------------- |
| 阿里云镜像 | docker pull registry.cn-hangzhou.aliyuncs.com/google_containers/yyy:zzz |
| 中科大镜像 | docker pull gcr.mirrors.ustc.edu.cn/google_containers/yyy:zzz |
| Azure中国镜像 | docker pull gcr.azk8s.cn/google_containers/yyy:zzz |

## quay.io的Docker Image镜像

| 名称 | 官网docker pull quay.io/xxx/yyy:zzz |
| ------------- | ------------- |
| 中科大镜像 | docker pull quay.mirrors.ustc.edu.cn/xxx/yyy:zzz |
| Azure中国镜像 | docker pull quay.azk8s.cn/xxx/yyy:zzz |
