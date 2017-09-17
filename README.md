# android-build-environment

Docker repository for android build environment Edit

[![Build Status][travis-image]][travis-url]
[![Join the chat at https://gitter.im/blankapp/ui][gitter-image]][gitter-url]

[travis-image]: https://travis-ci.org/lijy91/android-build-environment.svg?branch=master
[travis-url]: https://travis-ci.org/lijy91/android-build-environment
[gitter-image]: https://img.shields.io/gitter/room/blankapp/ui.svg
[gitter-url]: https://gitter.im/blankapp/ui?utm_source=share-link&utm_medium=link&utm_campaign=share-link

Table of Contents
=================

* [How to use this image](#how-to-use-this-image)
    * [Running in your computer](#running-in-your-computer)
    * [Running in <a href="https://travis-ci.org">Travis CI</a>](#running-in-travis-ci)
* [How to build](#how-to-build)
    * [Prerequisites](#prerequisites)
    * [To build the container image:](#to-build-the-container-image)
* [Discussion](#discussion)
* [License](#license)

Created by [gh-md-toc](https://github.com/ekalinin/github-markdown-toc)

## How to use this image

### Running in your computer

Pull this image to your computer

```bash
$ docker pull lijy91/android-build-environment
```

To build an android app

```bash
$ cd /path/to/your/android/source/root
$ docker run -i -v $PWD:/project -t lijy91/android-build-environment /bin/bash /project/gradlew clean
```

### Running in [Travis CI](https://travis-ci.org)

```bash
Coming soon.
```

## How to build

### Prerequisites

Before starting make sure you have:

- Installed [Docker](https://docker.com)

### To build the container image:

```bash
$ docker build -t lijy91/android-build-environment .
```

## Discussion

If you have any suggestions or questions about this project, you can discuss it by [Gitter](https://gitter.im/blankapp/ui) or my private wechat.

![](http://blankapp.org/assets/images/wechat_qrcode.png)

## License

```
MIT License

Copyright (c) 2017 JianyingLi <lijy91@foxmail.com>

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```