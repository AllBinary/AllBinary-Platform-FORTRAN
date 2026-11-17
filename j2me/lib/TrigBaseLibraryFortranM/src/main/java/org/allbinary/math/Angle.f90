!
! AllBinary Open License Version 1
! Copyright (c) 2011 AllBinary
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
module Angle_m
  use JR_m
  implicit none

  type, extends(JObject) :: Angle
    integer(4) :: f_value = 0
  contains
    procedure :: jm_getValue_0 => Angle_jm_getValue_0
  end type


contains

  function Angle_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Angle), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Angle)
      jresult => object
    end select
  end function

  recursive function Angle_jnew_1(j_angle) result(this)
    integer(4), value :: j_angle
    class(Angle), pointer :: this
    allocate(this)
    this%jclass = 'Angle'
    
        this%f_value = j_angle
  end function

  recursive function Angle_jm_getValue_0(this) result(jresult)
    class(Angle), target :: this
    integer(4) :: jresult
        jresult = this%f_value
        return
  end function
end module Angle_m

