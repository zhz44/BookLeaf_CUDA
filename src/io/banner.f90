SUBROUTINE banner

!Crown Copyright 2014 AWE.
!
! This file is part of Bookleaf.
!
! Bookleaf is free software: you can redistribute it and/or modify it under 
! the terms of the GNU General Public License as published by the 
! Free Software Foundation, either version 3 of the License, or (at your option) 
! any later version.
!
! Bookleaf is distributed in the hope that it will be useful, but 
! WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or 
! FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more 
! details.
!
! You should have received a copy of the GNU General Public License along with 
! Bookleaf. If not, see http://www.gnu.org/licenses/.

  IMPLICIT NONE

  WRITE(6,'(a132)')' ############################################################' &
&                //'#############################################################' &
&                //'##########'
  PRINT*,' Bookleaf:   ','Light-weight FE hydro scheme'
  PRINT*,' Author:     ','R. Kevis, D. Harris'
  PRINT*,' Revision:   ','Unversioned directory'

END SUBROUTINE banner
