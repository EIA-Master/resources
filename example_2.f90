
program tvEx2
    
  integer DIM1, DIM2
  parameter (DIM1 = 100)
  parameter (DIM2 = 10)
  
  integer i, j, trials(DIM2)
  real delta, psi, a(DIM1)
  
  print *, ' '
  print*, 'Starting TotalView Exercise 2'
  
  delta = 3.687
  psi = 0.8874
  
  

  print*, 'Reading tvEx2.dat...'
  open(8, file="tvEx2.dat", status="old", err=999)
  do i=1,DIM2
     read(8,*) trials(i)
     print*, 'trials(',i,') = ',trials(i)
  end do
  close(8)
  


  print*, 'Beginning trials...'
  do i=1,DIM2
     do j=1,trials(i)
        a(j) = (i*delta) + (j-psi)
     end do
     print*, 'Completed trial',i
  end do

  print*, ' '
  print*, 'Exercise 2 code has completed.'
  
  stop
  
999 print*, 'Error opening tvEx2.dat. Quitting.'
  
  
end program tvEx2
