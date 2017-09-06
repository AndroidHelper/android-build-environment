# android-build-environment

Docker repository for android build environment Edit

[![Build Status](https://api.travis-ci.org/lijy91/android-build-environment.svg?branch=master)](https://travis-ci.org/lijy91/android-build-environment)

## 如何使用

该镜像已经发布到 DaoCloud 的公共仓库中，直接使用 [daocloud.io/lijy91/android-build-environment](https://dashboard.daocloud.io/packages/dcbc375b-58a1-467b-9c88-73e476901c32) 镜像即可。

Dockerfile

```
FROM daocloud.io/lijy91/android-build-environment
```

## 已安装环境

- [x] Oracle Java JDK 7 (7u79)
- [x] Oracle Java JDK 8 (8u66)
- [x] Android SDK
- [ ] ~~Android NDK（安装NDK会造成构建时间过长和镜像过大问题）~~

## License

    Copyright (C) 2015 JianyingLi <lijy91@foxmail.com>

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.