! This program tests the addition operator for uint8 + uint16. 
program check
   use :: iso_fortran_env
   use :: unsigned_m
   implicit none

   character(32) :: ustr, str

   integer :: count
   type(uint16) :: ub, uans
   type(uint8) :: ua
   integer(int32) :: a, b, ix,i, ans
   real :: x
   integer :: n = 10000000

   logical :: isPassed = .true.

   ustr = ''
   str = '' 

   count = 0
   do i = 1, n
      call random_number(x)
      ix = int(x*UINT8_LIMIT)
      a = ix
      ua = ix 

      call random_number(x)
      ix = int(x*UINT16_LIMIT)
      b = ix
      ub = ix

      ans = a + b
      uans = ua+ub
      
      
      if (ans >UINT16_LIMIT .or. ans < 0) cycle

      write(ustr, *) uans
      write(str,*) ans
      
      if (trim(adjustl(str)) /= trim(adjustl(ustr))) then 
         write (*, *) a, b, ans, uans
         isPassed = .false.
      end if
      count = count + 1
   end do

   if (isPassed) print *, "[Test]  uint8 + uint16: Passed, ", count, " cases."

   
end program check
