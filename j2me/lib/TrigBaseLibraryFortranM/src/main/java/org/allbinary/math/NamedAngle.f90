! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
!  
! By agreeing to this license you and any business entity you represent are 
! legally bound to the AllBinary Open License Version 1 legal agreement. 
!  
! You may obtain the AllBinary Open License Version 1 legal agreement from 
! AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
!  
! Created By: Travis Berthelot 
!   
! Generated Code Do Not Modify
! package org.allbinary.math
module NamedAngle_m
  use JR_m
  use Angle_m
  implicit none

  type, extends(Angle) :: NamedAngle
    character(len=:), allocatable :: f_name
  end type


contains

  function NamedAngle_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NamedAngle), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NamedAngle)
      jresult => object
    end select
  end function

  recursive function NamedAngle_jnew_2(j_angle, j_name) result(this)
    integer(4), value :: j_angle
    character(len=*), intent(in) :: j_name
    class(NamedAngle), pointer :: this
    allocate(this)
    this%jclass = 'NamedAngle'
    this%f_name = ''
    
        continue ! super()
        this%f_name = j_name
  end function
end module NamedAngle_m

function NamedAngle_jnew_2_jext(p1, p2) result(this)
  use NamedAngle_m, only: JObject, NamedAngle_jnew_2
  implicit none
      integer(4), value :: p1
      character(len=*), intent(in) :: p2
  class(JObject), pointer :: this
  this => NamedAngle_jnew_2(p1, p2)
end function

