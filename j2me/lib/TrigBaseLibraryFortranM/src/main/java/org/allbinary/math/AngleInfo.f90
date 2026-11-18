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
module AngleInfo_m
  use JR_m
  use StringMaker_m
  use StringUtil_m
  use CommonSeps_m
  use AngleIncrementInfo_m
  use AngleIncrementInfoFactory_m
  use FrameUtil_m
  implicit none

  type, extends(JObject) :: AngleInfo
    class(AngleIncrementInfo), pointer :: f_angleIncrementInfo => null()
    integer(4) :: f_angle_u0 = 0
    class(FrameUtil), pointer :: f_frameUtil => null()
  contains
    procedure :: jm_adjustAngle_1 => AngleInfo_jm_adjustAngle_1
    procedure :: jm_getAngle_0 => AngleInfo_jm_getAngle_0
    procedure :: jm_setAngle_1 => AngleInfo_jm_setAngle_1
    procedure :: jm_getAngleIncrementInfo_0 => AngleInfo_jm_getAngleIncrementInfo_0
    procedure :: jm_toString_0 => AngleInfo_jm_toString_0
  end type

  character(len=:), allocatable, save :: AngleInfo_jcell_ANGLE
  logical, save :: AngleInfo_jset_ANGLE = .false.

contains

  function AngleInfo_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AngleInfo), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AngleInfo)
      jresult => object
    end select
  end function

  function AngleInfo_jstatic_ANGLE() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. AngleInfo_jset_ANGLE) then
      AngleInfo_jset_ANGLE = .true.
      AngleInfo_jcell_ANGLE = 'Angle: '
    end if
    jresult = AngleInfo_jcell_ANGLE
  end function

  subroutine AngleInfo_jsetstatic_ANGLE(jvalue)
    character(len=*), intent(in) :: jvalue
    AngleInfo_jset_ANGLE = .true.
    AngleInfo_jcell_ANGLE = jvalue
  end subroutine

  recursive function AngleInfo_jnew_1(j_angleIncrementInfo) result(this)
    class(AngleIncrementInfo), target, optional :: j_angleIncrementInfo
    class(AngleInfo), pointer :: this
    allocate(this)
    this%jclass = 'AngleInfo'
    
    this%f_angle_u0 = 0
    this%f_frameUtil => FrameUtil_jm_getInstance_0()
        this%f_angleIncrementInfo => j_angleIncrementInfo
  end function

  recursive function AngleInfo_jm_getInstance_1(j_angleIncrement) result(jresult)
    integer(4), value :: j_angleIncrement
    class(AngleInfo), pointer :: jresult
    class(AngleIncrementInfoFactory), pointer :: jtemp1
        jtemp1 => AngleIncrementInfoFactory_jm_getInstance_0()
        jresult => AngleInfo_jnew_1(jtemp1%jm_getAt_1(j_angleIncrement))
        return
  end function

  recursive subroutine AngleInfo_jm_adjustAngle_1(this, j_frame)
    class(AngleInfo), target :: this
    integer(4), value :: j_frame
    integer(4) :: j_newAngle
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_newAngle = ((this%f_angleIncrementInfo%jm_getAngleIncrement_0() * j_frame) - 90)
        call this%jm_setAngle_1(JR_i16(this%f_frameUtil%jm_adjustAngleToFrameAngle_1(j_newAngle)))
  end subroutine

  recursive function AngleInfo_jm_getAngle_0(this) result(jresult)
    class(AngleInfo), target :: this
    integer(4) :: jresult
        jresult = this%f_angle_u0
        return
  end function

  recursive subroutine AngleInfo_jm_setAngle_1(this, j_angle)
    class(AngleInfo), target :: this
    integer(4), value :: j_angle
        this%f_angle_u0 = j_angle
  end subroutine

  recursive function AngleInfo_jm_getAngleIncrementInfo_0(this) result(jresult)
    class(AngleInfo), target :: this
    class(AngleIncrementInfo), pointer :: jresult
        jresult => this%f_angleIncrementInfo
        return
  end function

  recursive function AngleInfo_jm_toString_0(this) result(jresult)
    class(AngleInfo), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonSeps), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(AngleInfo_jstatic_ANGLE())
        jdiscardRef => j_stringBuffer%jm_appendshort_1(this%f_angle_u0)
        jtemp2 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp2%f_SPACE)
        jtemp3 => StringUtil_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp3%jm_toString_1(this%jm_getAngleIncrementInfo_0()))
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module AngleInfo_m

