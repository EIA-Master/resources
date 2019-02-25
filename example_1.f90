program main

  implicit none

  integer, parameter :: n = 10

  integer a(n)
  integer b(n)
  integer i
  integer j

  do i = 1, n
    a(i) = i + 1
  end do
  a(n) = 100000

  write ( *, '(a)' ) ' '
  write ( *, '(a)' ) '     I  A(I)'
  write ( *, '(a)' ) ' '
  do i = 1, n
    write ( *, '(2i6)' ) i, a(i)
  end do

  do i = 1, n
    b(i) = - 1000 - i
  end do

  do i = 1, n
    j = a(i)
    b(j) = j + 1
  end do

  write ( *, '(a)' ) ' '
  write ( *, '(a)' ) '     I  B(I)'
  write ( *, '(a)' ) ' '
  do i = 1, n
    write ( *, '(2i6)' ) i, b(i)
  end do

end program main
