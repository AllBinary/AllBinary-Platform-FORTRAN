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
! package org.allbinary.android.input.motion
module AnalogControllerHelper_m
  use JR_m
  use CollidableDestroyableDamageableLayer_m
  use TimeDelayHelper_m
  use AnalogControllerConfigurationFactory_m
  implicit none

  type, extends(JObject) :: AnalogControllerHelper
    integer(4) :: f_reduceTimeFactor = 0
    integer(4) :: f_SCALE_VALUE = 0
    class(TimeDelayHelper), pointer :: f_rightTimeElapsedHelper => null()
    class(TimeDelayHelper), pointer :: f_leftTimeElapsedHelper => null()
    class(TimeDelayHelper), pointer :: f_downTimeElapsedHelper => null()
    class(TimeDelayHelper), pointer :: f_upTimeElapsedHelper => null()
  contains
    procedure :: jm_right_2 => AnalogControllerHelper_jm_right_2
    procedure :: jm_left_2 => AnalogControllerHelper_jm_left_2
    procedure :: jm_up_2 => AnalogControllerHelper_jm_up_2
    procedure :: jm_down_2 => AnalogControllerHelper_jm_down_2
  end type


contains

  function AnalogControllerHelper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AnalogControllerHelper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AnalogControllerHelper)
      jresult => object
    end select
  end function

  recursive function AnalogControllerHelper_jnew_1(j_reduceTimeFactor) result(this)
    integer(4), value :: j_reduceTimeFactor
    class(AnalogControllerHelper), pointer :: this
    class(AnalogControllerConfigurationFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'AnalogControllerHelper'
    
    jtemp1 => AnalogControllerConfigurationFactory_jm_getInstance_0()
    this%f_SCALE_VALUE = jtemp1%f_SCALE_VALUE
    this%f_rightTimeElapsedHelper => TimeDelayHelper_jnew_1(0)
    this%f_leftTimeElapsedHelper => TimeDelayHelper_jnew_1(0)
    this%f_downTimeElapsedHelper => TimeDelayHelper_jnew_1(0)
    this%f_upTimeElapsedHelper => TimeDelayHelper_jnew_1(0)
        this%f_reduceTimeFactor = j_reduceTimeFactor
  end function

  recursive subroutine AnalogControllerHelper_jm_right_2(this, j_collidableDestroyableDamageableLayer, j_xAnalogValue)
    class(AnalogControllerHelper), target :: this
    class(CollidableDestroyableDamageableLayer), target, optional :: j_collidableDestroyableDamageableLayer
    integer(4), value :: j_xAnalogValue
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_rightTimeElapsedHelper%f_delay = (shifta(((this%f_SCALE_VALUE - j_xAnalogValue)), iand(this%f_reduceTimeFactor, 31)))
        if (this%f_rightTimeElapsedHelper%jm_isTimeTNT_0()) then
            call j_collidableDestroyableDamageableLayer%jm_right_0()
        end if
  end subroutine

  recursive subroutine AnalogControllerHelper_jm_left_2(this, j_collidableDestroyableDamageableLayer, j_xAnalogValue)
    class(AnalogControllerHelper), target :: this
    class(CollidableDestroyableDamageableLayer), target, optional :: j_collidableDestroyableDamageableLayer
    integer(4), value :: j_xAnalogValue
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_leftTimeElapsedHelper%f_delay = (shifta(((this%f_SCALE_VALUE + j_xAnalogValue)), iand(this%f_reduceTimeFactor, 31)))
        if (this%f_leftTimeElapsedHelper%jm_isTimeTNT_0()) then
            call j_collidableDestroyableDamageableLayer%jm_left_0()
        end if
  end subroutine

  recursive subroutine AnalogControllerHelper_jm_up_2(this, j_collidableDestroyableDamageableLayer, j_xAnalogValue)
    class(AnalogControllerHelper), target :: this
    class(CollidableDestroyableDamageableLayer), target, optional :: j_collidableDestroyableDamageableLayer
    integer(4), value :: j_xAnalogValue
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_upTimeElapsedHelper%f_delay = (shifta(((this%f_SCALE_VALUE - j_xAnalogValue)), iand(this%f_reduceTimeFactor, 31)))
        if (this%f_upTimeElapsedHelper%jm_isTimeTNT_0()) then
            call j_collidableDestroyableDamageableLayer%jm_up_0()
        end if
  end subroutine

  recursive subroutine AnalogControllerHelper_jm_down_2(this, j_collidableDestroyableDamageableLayer, j_xAnalogValue)
    class(AnalogControllerHelper), target :: this
    class(CollidableDestroyableDamageableLayer), target, optional :: j_collidableDestroyableDamageableLayer
    integer(4), value :: j_xAnalogValue
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_downTimeElapsedHelper%f_delay = (shifta(((this%f_SCALE_VALUE + j_xAnalogValue)), iand(this%f_reduceTimeFactor, 31)))
        if (this%f_downTimeElapsedHelper%jm_isTimeTNT_0()) then
            call j_collidableDestroyableDamageableLayer%jm_down_0()
        end if
  end subroutine
end module AnalogControllerHelper_m

