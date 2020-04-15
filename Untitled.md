 

**Background**

I wanted to learn how to setup Cortex from a Container point of view to able to collect Prometheus metrics.

**What is Cortex**

The Cortex project was started by [Tom Wilkie and Julius Volz in June 2016](https://promcon.io/2016-berlin/talks/multitenant-scale-out-prometheus/), [joining the CNCF Sandbox in Sept 2018](https://www.cncf.io/blog/2018/12/18/cortex-a-multi-tenant-horizontally-scalable-prometheus-as-a-service/). Cortex lets users to query metrics from many Prometheus servers in a single place, without any gaps in the graphs due to server failure. Cortex also allows users to store Prometheus metrics for long term capacity planning and performance analysis.

Copy&Paste => [https://grafana.com/oss/cortex](https://grafana.com/oss/cortex/)

**Workplace container source**

https://github.com/geircode/learning-cortex 

**Getting started**

We begin the Cortex journey with going to the homepage https://cortexmetrics.io/ and jump directly into [Getting Started with Chunks Storage](https://cortexmetrics.io/docs/getting-started/getting-started-chunks-storage/).

**Starting the workplace container**

From within this Container we will do all Cortex related stuff.

\1. Start CMD/Powershell in Windows

\2. Get the source code

  git  clone https://github.com/geircode/learning-cortex  cd learning-cortex  

\3. Run the script “docker-compose.build.all.bat“ or run “[docker-compose.build.all.sh](http://docker-compose.build.all.sh)“ if you are on Linux.

This will start container with the name “**learning_cortex-1**“:

![img](images/clip_image001.png)

**Attach Visual Studio Code to the running container**

\1. Start Visual Studio Code the root folder of the repository

  git  clone https://github.com/geircode/learning-cortex  cd learning-cortex  code .  

\2. Install the proposed extensions

\3. Attach to the already running workplace container

![img](images/clip_image002.png)

Find the container with the name “**learning_cortex-1**“ and click it. This will install Visual Studio Code server into the container and attach the Visual Studio Code client to this server.

\4. Open /app folder

![img](images/clip_image003.png)

\5. Install workplace extension recommendations, and reload

![img](images/clip_image004.png)

Congrats! You are now running a Visual Studio Code instance within a container.

**Start the Cortex Container from within the workplace container**

\1. Start a terminal in Visual Studio Code

![img](images/clip_image005.png)

This will be the same as doing:

  docker  exec -it learning_cortex-1 /bin/bash  

![img](images/clip_image006.png)

\2. Run the “**docker-compose.up.sh**“ script

\####

**How to build the docker-compose file for Cortex**

This build is dased on the docs here => https://cortexmetrics.io/docs/getting-started/getting-started-blocks-storage/, and the docker images provided directly from the [**cortexproject**](https://hub.docker.com/u/cortexproject)..

\####

**Resources**

- https://cortexmetrics.io/
- https://github.com/cortexproject/cortex
- https://www.cncf.io/blog/2018/12/18/cortex-a-multi-tenant-horizontally-scalable-prometheus-as-a-service/
- https://www.weave.works/oss/cortex/
- https://grafana.com/oss/cortex/

 

 