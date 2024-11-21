project('uint-fortran', 'fortran')

src = files(
  'src/uint-io_m.F90',
  'src/uint-swap.f90',
  'src/uint64_m.f90',
  'src/intrinsic_functions_overload/dble_m.f90',
  'src/intrinsic_functions_overload/int_m.f90',
  'src/intrinsic_functions_overload/real_m.f90',
  'src/intrinsic_functions_overload/mod_m.f90',
  'src/uint32_m.f90',
  'src/types/uint64_t.f90',
  'src/types/uint32_t.f90',
  'src/types/uint8_t.f90',
  'src/types/uint16_t.f90',
  'src/intrinsic_operators_overload/the_four_arithmetic_operations/multiplication_m.f90',
  'src/intrinsic_operators_overload/the_four_arithmetic_operations/addition_m.f90',
  'src/intrinsic_operators_overload/the_four_arithmetic_operations/subtraction_m.f90',
  'src/intrinsic_operators_overload/the_four_arithmetic_operations/division_m.f90',
  'src/intrinsic_operators_overload/comparisons/less_than_m.f90',
  'src/intrinsic_operators_overload/comparisons/greater_than_m.f90',
  'src/intrinsic_operators_overload/comparisons/equivalence_m.f90',
  'src/intrinsic_operators_overload/power_m.f90',
  'src/assignment_m.F90',
  'src/uint16_m.f90',
  'src/unsigned_m.f90',
  'src/uint8_m.f90',
)

mod = library('uint-fortran', sources: src)

check_operator_plus_02 = executable('check-operator-plus_02', 'test/check-operator-plus_02.f90', link_with: mod)
check_operator_plus_11 = executable('check-operator-plus_11', 'test/check-operator-plus_11.f90', link_with: mod)
check_assign_negative_uint8 = executable('check-assign-negative_uint8', 'test/check-assign-negative_uint8.f90', link_with: mod)
check_operator_plus_04 = executable('check-operator-plus_04', 'test/check-operator-plus_04.f90', link_with: mod)
check_operator_plus_03 = executable('check-operator-plus_03', 'test/check-operator-plus_03.f90', link_with: mod)
check_operator_plus_09 = executable('check-operator-plus_09', 'test/check-operator-plus_09.f90', link_with: mod)
check_operator_plus_07 = executable('check-operator-plus_07', 'test/check-operator-plus_07.f90', link_with: mod)
check_operator_plus_08 = executable('check-operator-plus_08', 'test/check-operator-plus_08.f90', link_with: mod)
check_assign_negative_uint16 = executable('check-assign-negative_uint16', 'test/check-assign-negative_uint16.f90', link_with: mod)
check_operator_plus_06 = executable('check-operator-plus_06', 'test/check-operator-plus_06.f90', link_with: mod)
check_operator_plus_10 = executable('check-operator-plus_10', 'test/check-operator-plus_10.f90', link_with: mod)
check_assign_negative_uint32 = executable('check-assign-negative_uint32', 'test/check-assign-negative_uint32.f90', link_with: mod)
check_operator_plus_01 = executable('check-operator-plus_01', 'test/check-operator-plus_01.f90', link_with: mod)
check_operator_plus_12 = executable('check-operator-plus_12', 'test/check-operator-plus_12.f90', link_with: mod)
check_operator_plus_05 = executable('check-operator-plus_05', 'test/check-operator-plus_05.f90', link_with: mod)
check_operator_mul_01 = executable('check-operator-mul_01', 'test/check-operator-mul_01.f90', link_with: mod)

test('check-operator-plus_02', check_operator_plus_02)
test('check-operator-plus_11', check_operator_plus_11)
test('check-assign-negative_uint8', check_assign_negative_uint8)
test('check-operator-plus_04', check_operator_plus_04)
test('check-operator-plus_03', check_operator_plus_03)
test('check-operator-plus_09', check_operator_plus_09)
test('check-operator-plus_07', check_operator_plus_07)
test('check-operator-plus_08', check_operator_plus_08)
test('check-assign-negative_uint16', check_assign_negative_uint16)
test('check-operator-plus_06', check_operator_plus_06)
test('check-operator-plus_10', check_operator_plus_10)
test('check-assign-negative_uint32', check_assign_negative_uint32)










