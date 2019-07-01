# SQL Server 2019 本地部署大数据群集
## 编写目的
- 当前SQL Server 2019大数据群集部署在一定程度上需要依赖 Google Kubernetes安装源以及Docker镜像源
- 数据平台纯本地私有云环境部署需求依然旺盛

## 环境说明
- 镜像传输环境

| ID | 项目 | 类型 | 描述 |
| --- | --- | --- | --- |
| 1 | Azure 全球 | 虚拟机 | 临时服务器 |
| 2 | Azure 中国 | 容器注册表 | 私有镜像源 |

- 涉及资源

| ID | 项目 | 类型 | 明细 | 版本 | 备注 |
| --- | --- | --- | --- | --- | --- |
| 1 | Google | Kubernetes | kube-apiserver:v1.15.0<br/>kube-scheduler:v1.15.0<br/>kube-controller-manager:v1.15.0<br/>kube-proxy:v1.15.0<br/>etcd:3.3.10<br/>coredns:1.3.1<br/>pause:3.1 | 1.15.0 | kubeadm config images list |
| 2 | CoreOS | Flannel | flannel:v0.11.0-s390x<br/>flannel:v0.11.0-ppc64le<br/>flannel:v0.11.0-arm64<br/>flannel:v0.11.0-arm<br/>flannel:v0.11.0-amd64 | 0.11.0 | kube-flannel.yml |
| 3 | Microsoft | SQL Server 2019 BDC | mssql-security-knox:ctp3.0<br/>mssql-mlservices-pythonserver:ctp3.0<br/>mssql-mlservices-rserver:ctp3.0<br/>mssql-server-data:ctp3.0<br/>mssql-java:ctp3.0<br/>mssql-hadoop:ctp3.0<br/>mssql-portal:ctp3.0<br/>mssql-service-proxy:ctp3.0<br/>mssql-app-service-proxy:ctp3.0<br/>mssql-monitor-telegraf:ctp3.0<br/>mssql-monitor-kibana:ctp3.0<br/>mssql-monitor-influxdb:ctp3.0<br/>mssql-monitor-grafana:ctp3.0<br/>mssql-monitor-fluentbit:ctp3.0<br/>mssql-monitor-elasticsearch:ctp3.0<br/>mssql-monitor-collectd:ctp3.0<br/>mssql-server-controller:ctp3.0<br/>mssql-controller:ctp3.0<br/>mssql-ssis-app-runtime:ctp3.0<br/>mssql-mlserver-py-runtime:ctp3.0<br/>mssql-mlserver-r-runtime:ctp3.0<br/>mssql-appdeploy-init:ctp3.0| CTP 3.0 | [Perform an offline deployment of a SQL Server big data cluster](https://docs.microsoft.com/en-us/sql/big-data-cluster/deploy-offline?view=sqlallproducts-allversions) |

- Kubernetes 配置环境

| ID | 节点名称 | 节点版本 | IP | 掩码 | 网关 |
| --- | --- | --- | --- | --- | --- |
| 1 | K8SM01 | CentOS 7 | 192.168.0.1 | 24 | 192.168.0.253 |
| 2 | K8SN01 | CentOS 7 | 192.168.0.11 | 24 | 192.168.0.253 |
| 3 | K8SN02 | CentOS 7 | 192.168.0.12 | 24 | 192.168.0.253 |
| 4 | K8SN03 | CentOS 7 | 192.168.0.13 | 24 | 192.168.0.253 |

## 操作步骤
### 创建海外虚拟机
### 创建中国区容器注册
### 获取镜像到中国区
### 准备本地Kubernetes & Docker CE离线安装包
### 准备本地Kubernetes节点服务器
### 创建本地Kubernetes群集
### 验证本地Kubernetes群集
### 创建本地SQL Server 2019 Big Data Cluster
### 验证SQL Server 2019 Big Data Cluster