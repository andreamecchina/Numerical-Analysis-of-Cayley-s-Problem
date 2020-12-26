program cayley
	implicit none
	
	integer   :: i,j,samp,count
	complex*8 :: old,new,start
	real*8    :: err,real_i,real_j
	
	open(unit=11,file='input.dat',status='old')
	read(11,*) err
	read(11,*) samp
	
	open (unit=12,file='output.dat',status='replace')

	do i=1,samp
		real_i=-2.+(i-1)*4./samp
	do j=1,samp
		real_j=-2.+(j-1)*4./samp
	
	old    = cmplx(real_i,real_j)
	start  = old
	new    = old-(old**3-1.)/(3*old**2)
	
	count = 0	
	do while (abs(old-new) > err)
		old   = new
		new   = old-(old**3-1.)/(3*old**2)
		count = count+1
	end do
	
	write(12,*) real(start),imag(start),&
				real(old),imag(old),count
	
	end do
	end do
	
end program