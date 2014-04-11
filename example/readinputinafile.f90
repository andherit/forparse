program readinputinafile
use forparse
implicit none

   integer :: idummy
   integer, parameter :: nit = 10
   real*4 :: fdummy
   character*30 :: sdummy,fname

   if (parse_arg('filename',fname) /= PARSE_OK) stop 'problem reading filename'
   open(nit,file=fname)
   if (parse_arg('v_int',idummy,nit) /= PARSE_OK) stop 'problem reading v_int'
   if (parse_arg('v_real',fdummy,nit) /= PARSE_OK) stop 'problem reading v_real'
   if (parse_arg('v_string',sdummy,nit) /= PARSE_OK) stop 'problem reading v_string'
   close(nit)
   write(*,*) 'v_int = ',idummy
   write(*,*) 'v_real = ',fdummy
   write(*,'(1x,2a)') 'v_string = ',sdummy
end program readinputinafile
