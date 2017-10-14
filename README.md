## EOS

EOS 多个版本的
[![](https://images.microbadger.com/badges/image/chenmins/eos.svg)](https://microbadger.com/images/chenmins/eos "Get your own image badge on microbadger.com")
[![](https://images.microbadger.com/badges/version/chenmins/eos.svg)](https://microbadger.com/images/chenmins/eos "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/license/chenmins/eos.svg)](https://microbadger.com/images/chenmins/eos "Get your own license badge on microbadger.com")

## 启动数据库
docker run -d --name mysql4eos -p 3306:3306 -e MYSQL_ROOT_PASSWORD=000000 -v /opt/docker/mysql:/var/lib/mysql chenmins/mysql:5.5
## 启动EOS7.6
docker run -d --name eos76 --link mysql4eos:db -v /opt/docker/eos76/apps_config:/opt/apps_config  -v /opt/docker/eos76/logs:/logs -p 80:8080 chenmins/eos:7.6