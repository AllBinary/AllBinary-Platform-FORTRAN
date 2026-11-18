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
! package org.allbinary.game.physics.acceleration
module BasicAccelerationProperties_m
  use JR_m
  implicit none

  type, extends(JObject) :: BasicAccelerationProperties
    integer(4) :: f_forward = 0
    integer(4) :: f_reverse = 0
  contains
    procedure :: jm_setReverse_1 => BasicAccelerationProperties_jm_setReverse_1
    procedure :: jm_getReverse_0 => BasicAccelerationProperties_jm_getReverse_0
    procedure :: jm_setForward_1 => BasicAccelerationProperties_jm_setForward_1
    procedure :: jm_getForward_0 => BasicAccelerationProperties_jm_getForward_0
  end type


contains

  function BasicAccelerationProperties_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicAccelerationProperties), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicAccelerationProperties)
      jresult => object
    end select
  end function

  recursive function BasicAccelerationProperties_jnew_2(j_forward, j_reverse) result(this)
    integer(4), value :: j_forward
    integer(4), value :: j_reverse
    class(BasicAccelerationProperties), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'BasicAccelerationProperties'
    
    
        call this%jm_setForward_1(j_forward)
        call this%jm_setReverse_1(j_reverse)
  end function

  recursive subroutine BasicAccelerationProperties_jm_setReverse_1(this, j_reverse)
    class(BasicAccelerationProperties), target :: this
    integer(4), value :: j_reverse
        this%f_reverse = j_reverse
  end subroutine

  recursive function BasicAccelerationProperties_jm_getReverse_0(this) result(jresult)
    class(BasicAccelerationProperties), target :: this
    integer(4) :: jresult
        jresult = this%f_reverse
        return
  end function

  recursive subroutine BasicAccelerationProperties_jm_setForward_1(this, j_forward)
    class(BasicAccelerationProperties), target :: this
    integer(4), value :: j_forward
        this%f_forward = j_forward
  end subroutine

  recursive function BasicAccelerationProperties_jm_getForward_0(this) result(jresult)
    class(BasicAccelerationProperties), target :: this
    integer(4) :: jresult
        jresult = this%f_forward
        return
  end function
end module BasicAccelerationProperties_m

