program readthecmdline
use forparse
implicit none

   integer :: idummy
   real*4 :: fdummy
   character*30 :: sdummy

   if (parse_arg('v_int',idummy) /= PARSE_OK) stop 'problem reading v_int'
   if (parse_arg('v_real',fdummy) /= PARSE_OK) stop 'problem reading v_real'
   if (parse_arg('v_string',sdummy) /= PARSE_OK) stop 'problem reading v_string'
   write(*,*) 'v_int = ',idummy
   write(*,*) 'v_real = ',fdummy
   write(*,'(1x,2a)') 'v_string = ',sdummy
end program readthecmdline
