# Doodle3D-Transform
Doodle3D Transform is a free and open-source web-app that makes designing in 3D easy and fun! Created with love by Casper, Peter, Jeroen, Simon, Arne, Donna, Nico and Rick, in 2015-2017. With the support of 1,626 Kickstarter backers.

In 2021 we updated Doodle3D Transform to work completely on the client-side. There is no server sided-code and/or user management anymore and no server sided storage of doodles.

As of 2021-05-26 Doodle3D Transform is distributed under the MIT License. This gives everyone the freedoms to use Doodle3D Transform in any context: commercial or non-commercial, public or private, open or closed source.

![Screenshot](screenshot.png)

## Run online
https://doodle3d.com



## Build & run locally


```bash
apt-get install -y --no-install-recommends autoconf automake g++ libpng-dev make libimagequant-dev

git clone git@github.com:Doodle3D/Doodle3D-Transform.git
cd Doodle3D-Transform
npm install    # Make sure you have installed NPM / NodeJS first
npm run start
# visit http://localhost:8080
```


## build distribution
```bash
npm install
npm dist
```

build & run docker images
```bash
git clone git@github.com:Doodle3D/Doodle3D-Transform.git
cd Doodle3D-Transform
sudo docker build -t dtt .
sudo docker run -d -p 8080:8080 dtt
```
# visit  http://localhost:8080/doodle

## Other important repositories
* The core features of Doodle3D Transform: https://github.com/doodle3d/Doodle3D-Core
* The GCODE slicer of Doodle3D Transform: https://github.com/doodle3d/Doodle3D-Slicer






## log debug
yarn add global pngquant-bin
yarn add imagemin-pngquant -D
yarn add @babel/preset-env @babel/core