# Maintainer: Andre Smit <freevryheid@gmail.com>
pkgname=uint-fortran
pkgver=0.3.0
pkgrel=1
pkgdesc="Unsigned integer in fortran"
arch=("x86_64")
url="https://github.com/ShinobuAmasaki/uint-fortran"
license=("MIT")
provides=("uint-fortran")
makedepends=(meson gcc-fortran)

build() {
  meson setup release --buildtype=release --prefix=/usr
  meson compile -C release
}
check() {
  meson test -C release --print-errorlogs
}

package() {
  meson install -C release
}

