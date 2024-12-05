tests = [
  'check-operator-plus_02',
  'check-operator-plus_11',
  'check-assign-negative_uint8',
  'check-operator-plus_04',
  'check-operator-plus_03',
  'check-operator-plus_09',
  'check-operator-plus_07',
  'check-operator-plus_08',
  'check-assign-negative_uint16',
  'check-operator-plus_06',
  'check-operator-plus_10',
  'check-assign-negative_uint32',
]

# test_srcs = files()

foreach t : tests
  test_srcs = files('@0@.f90'.format(t))
  tester = executable(
    '@0@'.format(t),
    sources: test_srcs,
    dependencies: uint_fortran_dep,
  )
  test(t, tester, args: t)
endforeach

# tester = executable(
#   'tester',
#   sources: test_srcs,
#   dependencies: uint_fortran_dep,
# )

# test('all tests', tester)

# foreach t : tests
#   test(t, tester, args: t)
# endforeach
