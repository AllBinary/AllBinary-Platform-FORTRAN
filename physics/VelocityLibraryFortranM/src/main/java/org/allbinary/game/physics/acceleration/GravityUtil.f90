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
module GravityUtil_m
  use JR_m
  use BasicVelocityProperties_m
  implicit none

  type, extends(JObject) :: GravityUtil
    integer(4) :: f_GAME_GRAVITY_VELOCITY = 0
    integer(4) :: f_MAX_GAME_VELOCITY = 0
  contains
    procedure :: jm_process_2 => GravityUtil_jm_process_2
  end type

  class(GravityUtil), pointer, save :: GravityUtil_jcell_instance => null()
  logical, save :: GravityUtil_jset_instance = .false.

contains

  function GravityUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GravityUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GravityUtil)
      jresult => object
    end select
  end function

  function GravityUtil_jstatic_instance() result(jresult)
    class(GravityUtil), pointer :: jresult
    if (.not. GravityUtil_jset_instance) then
      GravityUtil_jset_instance = .true.
      GravityUtil_jcell_instance => GravityUtil_jnew_0()
    end if
    jresult => GravityUtil_jcell_instance
  end function

  subroutine GravityUtil_jsetstatic_instance(jvalue)
    class(GravityUtil), target, optional :: jvalue
    GravityUtil_jset_instance = .true.
    if (present(jvalue)) then
      GravityUtil_jcell_instance => jvalue
    else
      GravityUtil_jcell_instance => null()
    end if
  end subroutine

  function GravityUtil_jnew_0() result(this)
    class(GravityUtil), pointer :: this
    allocate(this)
    this%jclass = 'GravityUtil'
    this%f_GAME_GRAVITY_VELOCITY = 1800
    this%f_MAX_GAME_VELOCITY = 18000
  end function

  recursive function GravityUtil_jm_getInstance_0() result(jresult)
    class(GravityUtil), pointer :: jresult
        jresult => GravityUtil_jstatic_instance()
        return
  end function

  recursive subroutine GravityUtil_jm_process_2(this, j_velocityProperties, j_customGravity)
    class(GravityUtil), target :: this
    class(BasicVelocityProperties), target, optional :: j_velocityProperties
    integer(4), value :: j_customGravity
    class(BasicDecimal), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => j_velocityProperties%jm_getVelocityYBasicDecimalP_0()
        call jtemp1%jm_addint_1(j_customGravity)
  end subroutine
end module GravityUtil_m

