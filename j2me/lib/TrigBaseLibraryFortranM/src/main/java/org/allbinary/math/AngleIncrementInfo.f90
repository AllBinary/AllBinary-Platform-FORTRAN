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
module AngleIncrementInfo_m
  use JR_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use Integer_m
  use AngleFactory_m
  use FrameUtil_m
  implicit none

  type, extends(JObject) :: AngleIncrementInfo
    integer(4) :: f_angleIncrement = 0
    integer(4) :: f_DOWN_FRAME = 0
    integer(4) :: f_UP_FRAME = 0
    integer(4) :: f_LEFT_FRAME = 0
    integer(4) :: f_RIGHT_FRAME = 0
    class(FrameUtil), pointer :: f_frameUtil => null()
  contains
    procedure :: jm_getFrameAngle_1 => AngleIncrementInfo_jm_getFrameAngle_1
    procedure :: jm_getAngleIncrement_0 => AngleIncrementInfo_jm_getAngleIncrement_0
    procedure :: jm_toString_0 => AngleIncrementInfo_jm_toString_0
    procedure :: jm_getClosestGeneralDirection_1 => AngleIncrementInfo_jm_getClosestGeneralDirection_1
  end type

  character(len=:), allocatable, save :: AngleIncrementInfo_jcell_INCREMENT
  logical, save :: AngleIncrementInfo_jset_INCREMENT = .false.

contains

  function AngleIncrementInfo_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AngleIncrementInfo), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AngleIncrementInfo)
      jresult => object
    end select
  end function

  function AngleIncrementInfo_jstatic_INCREMENT() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. AngleIncrementInfo_jset_INCREMENT) then
      AngleIncrementInfo_jset_INCREMENT = .true.
      AngleIncrementInfo_jcell_INCREMENT = 'Inc: '
    end if
    jresult = AngleIncrementInfo_jcell_INCREMENT
  end function

  subroutine AngleIncrementInfo_jsetstatic_INCREMENT(jvalue)
    character(len=*), intent(in) :: jvalue
    AngleIncrementInfo_jset_INCREMENT = .true.
    AngleIncrementInfo_jcell_INCREMENT = jvalue
  end subroutine

  recursive function AngleIncrementInfo_jnew_1(j_angleIncrement) result(this)
    integer(4), value :: j_angleIncrement
    class(AngleIncrementInfo), pointer :: this
    class(AngleFactory), pointer :: j_angleFactory
    class(SmallIntegerSingletonFactory), pointer :: j_smallIntegerSingletonFactory
    allocate(this)
    this%jclass = 'AngleIncrementInfo'
    
    
    
    
    
    this%f_frameUtil => FrameUtil_jm_getInstance_0()
        this%f_angleIncrement = j_angleIncrement
        j_angleFactory => AngleFactory_jm_getInstance_0()
        j_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
        this%f_DOWN_FRAME = j_smallIntegerSingletonFactory%jm_getAt_1((j_angleFactory%f_DOWN%jm_getValue_0() / this%f_angleIncrement))
        this%f_UP_FRAME = j_smallIntegerSingletonFactory%jm_getAt_1(j_angleFactory%f_UP%jm_getValue_0())
        this%f_LEFT_FRAME = j_smallIntegerSingletonFactory%jm_getAt_1((j_angleFactory%f_LEFT%jm_getValue_0() / this%f_angleIncrement))
        this%f_RIGHT_FRAME = j_smallIntegerSingletonFactory%jm_getAt_1((j_angleFactory%f_RIGHT%jm_getValue_0() / this%f_angleIncrement))
  end function

  recursive function AngleIncrementInfo_jm_getFrameAngle_1(this, j_frame) result(jresult)
    class(AngleIncrementInfo), target :: this
    integer(4), value :: j_frame
    integer(4) :: jresult
        jresult = this%f_frameUtil%jm_getFrameAngle_2(j_frame, this%f_angleIncrement)
        return
  end function

  recursive function AngleIncrementInfo_jm_getAngleIncrement_0(this) result(jresult)
    class(AngleIncrementInfo), target :: this
    integer(4) :: jresult
        jresult = this%f_angleIncrement
        return
  end function

  recursive function AngleIncrementInfo_jm_toString_0(this) result(jresult)
    class(AngleIncrementInfo), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
        jtemp3 => StringMaker_jnew_0()
        jtemp2 => jtemp3%jm_append_1(AngleIncrementInfo_jstatic_INCREMENT())
        jtemp1 => jtemp2%jm_appendshort_1(this%f_angleIncrement)
        jresult = jtemp1%jm_toString_0()
        return
  end function

  recursive function AngleIncrementInfo_jm_getClosestGeneralDirection_1(this, j_angle) result(jresult)
    class(AngleIncrementInfo), target :: this
    integer(4), value :: j_angle
    integer(4) :: jresult
    integer(4) :: j_closestDirection
    class(SmallIntegerSingletonFactory), pointer :: jtemp4
        jtemp4 => SmallIntegerSingletonFactory_jm_getInstance_0()
        j_closestDirection = jtemp4%jm_getAt_1(360)
        if (((int(this%f_UP_FRAME, 4) - j_angle) < (int(j_closestDirection, 4) - j_angle))) then
            j_closestDirection = this%f_UP_FRAME
        end if
        if (((int(this%f_DOWN_FRAME, 4) - j_angle) < (int(j_closestDirection, 4) - j_angle))) then
            j_closestDirection = this%f_DOWN_FRAME
        end if
        if (((int(this%f_LEFT_FRAME, 4) - j_angle) < (int(j_closestDirection, 4) - j_angle))) then
            j_closestDirection = this%f_LEFT_FRAME
        end if
        if (((int(this%f_RIGHT_FRAME, 4) - j_angle) < (int(j_closestDirection, 4) - j_angle))) then
            j_closestDirection = this%f_RIGHT_FRAME
        end if
        jresult = int(j_closestDirection, 4)
        return
  end function
end module AngleIncrementInfo_m

