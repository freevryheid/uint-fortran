project(
  'uint-fortran',
  'fortran',
  version: '0.3.0',
  license: 'MIT',
  meson_version: '>=0.53',
  default_options: [
    'buildtype=debugoptimized',
    'default_library=both',
  ],
)
install = not (meson.is_subproject() and get_option('default_library') == 'static')

# General configuration information
lib_deps = []
subdir('config')

# Collect source of the project
srcs = []
subdir('src')

# MCTC library target
uint_fortran_lib = library(
  meson.project_name(),
  sources: srcs,
  version: meson.project_version(),
  dependencies: lib_deps,
  install: install,
)

# Export dependency for other projects and test suite
uint_fortran_inc = uint_fortran_lib.private_dir_include()
uint_fortran_dep = declare_dependency(
  link_with: uint_fortran_lib,
  include_directories: uint_fortran_inc,
  dependencies: lib_deps,
)

# Package the license files
uint_fortran_lic = files(
  'LICENSE',
)

if install
  # Distribute the license files in share/licenses/<name>
  install_data(
    uint_fortran_lic,
    install_dir: get_option('datadir')/'licenses'/meson.project_name()
  )

  module_id = meson.project_name() / fc_id + '-' + fc.version()
  meson.add_install_script(
    'config'/'install-mod.py',
    get_option('includedir') / module_id,
  )

  pkg = import('pkgconfig')
  pkg.generate(
    uint_fortran_lib,
    description: 'Unsigned integer in fortran',
    subdirs: ['', module_id],
  )
endif

# add the testsuite
if get_option('testing').auto() ? not meson.is_subproject() : get_option('testing').enabled()
  subdir('test')
endif
