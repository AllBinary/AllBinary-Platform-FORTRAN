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
! package org.allbinary.layer
module PositionInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: PositionInterface
  contains
    procedure :: jm_setPosition_3 => PositionInterface_jm_setPosition_3
  end type


contains

  function PositionInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PositionInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PositionInterface)
      jresult => object
    end select
  end function

  function PositionInterface_jnew_0() result(this)
    class(PositionInterface), pointer :: this
    allocate(this)
    this%jclass = 'PositionInterface'
  end function

  recursive subroutine PositionInterface_jm_setPosition_3(this, j_x, j_y, j_z)
    class(PositionInterface), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    error stop 'AbstractMethodError: PositionInterface.setPosition'
  end subroutine
end module PositionInterface_m

