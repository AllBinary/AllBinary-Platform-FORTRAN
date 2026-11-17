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
module AngleFactory_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use CommonPhoneStrings_m
  use CommonSeps_m
  use CommonStrings_m
  use Angle_m
  use NamedAngle_m
  use FrameUtil_m
  implicit none

  type, extends(JObject) :: AngleFactory
    class(LogUtil), pointer :: f_logUtil => null()
    integer(4) :: f_TOTAL_ANGLE = 0
    integer(4) :: f_QUARTER_TOTAL_ANGLE = 0
    type(JRef), allocatable :: f_angleArray(:)
    integer(4) :: f_NEGATIVE_ONE = 0
    class(NamedAngle), pointer :: f_NOT_ANGLE => null()
    class(NamedAngle), pointer :: f_DOWN => null()
    class(NamedAngle), pointer :: f_UP => null()
    class(NamedAngle), pointer :: f_LEFT => null()
    class(NamedAngle), pointer :: f_RIGHT => null()
    class(FrameUtil), pointer :: f_frameUtil => null()
  contains
    procedure :: jm_getAt_1 => AngleFactory_jm_getAt_1
    procedure :: jm_getClosestDirection_1 => AngleFactory_jm_getClosestDirection_1
    procedure :: jm_getGeneralDirection_0 => AngleFactory_jm_getGeneralDirection_0
  end type

  class(AngleFactory), pointer, save :: AngleFactory_jcell_instance => null()
  logical, save :: AngleFactory_jset_instance = .false.

contains

  function AngleFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AngleFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AngleFactory)
      jresult => object
    end select
  end function

  function AngleFactory_jstatic_instance() result(jresult)
    class(AngleFactory), pointer :: jresult
    if (.not. AngleFactory_jset_instance) then
      AngleFactory_jset_instance = .true.
      AngleFactory_jcell_instance => AngleFactory_jnew_0()
    end if
    jresult => AngleFactory_jcell_instance
  end function

  recursive function AngleFactory_jnew_0() result(this)
    class(AngleFactory), pointer :: this
    class(CommonPhoneStrings), pointer :: j_commonPhoneStrings
    integer(4) :: j_total
    integer(4) :: j_index
    class(CommonStrings), pointer :: jtemp1
    allocate(this)
    this%jclass = 'AngleFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_TOTAL_ANGLE = 360
    this%f_QUARTER_TOTAL_ANGLE = 90
    this%f_angleArray = JR_newRefArray(this%f_TOTAL_ANGLE)
    this%f_NEGATIVE_ONE = JR_i16((-1))
    jtemp1 => CommonStrings_jm_getInstance_0()
    this%f_NOT_ANGLE => NamedAngle_jnew_2(this%f_NEGATIVE_ONE, jtemp1%f_EMPTY)
    
    
    
    
    this%f_frameUtil => FrameUtil_jm_getInstance_0()
        j_commonPhoneStrings => CommonPhoneStrings_jm_getInstance_0()
        j_total = JR_i16(size(this%f_angleArray, 1))
        this%f_UP => NamedAngle_jnew_2(JR_i16(0), j_commonPhoneStrings%f_UP)
        this%f_angleArray((0) + 1)%v => this%f_UP
        j_index = 1
        do while ((j_index < 90))
            this%f_angleArray((j_index) + 1)%v => Angle_jnew_1(JR_i16(j_index))
            j_index = j_index + 1
        end do
        this%f_RIGHT => NamedAngle_jnew_2(JR_i16(90), j_commonPhoneStrings%f_RIGHT)
        this%f_angleArray((90) + 1)%v => this%f_RIGHT
        j_index = 91
        do while ((j_index < 180))
            this%f_angleArray((j_index) + 1)%v => Angle_jnew_1(JR_i16(j_index))
            j_index = j_index + 1
        end do
        this%f_DOWN => NamedAngle_jnew_2(JR_i16(180), j_commonPhoneStrings%f_DOWN)
        this%f_angleArray((180) + 1)%v => this%f_DOWN
        j_index = 181
        do while ((j_index < 270))
            this%f_angleArray((j_index) + 1)%v => Angle_jnew_1(JR_i16(j_index))
            j_index = j_index + 1
        end do
        this%f_LEFT => NamedAngle_jnew_2(JR_i16(270), j_commonPhoneStrings%f_LEFT)
        this%f_angleArray((270) + 1)%v => this%f_LEFT
        j_index = 271
        do while ((j_index < j_total))
            this%f_angleArray((j_index) + 1)%v => Angle_jnew_1(JR_i16(j_index))
            j_index = j_index + 1
        end do
  end function

  recursive function AngleFactory_jm_getInstance_0() result(jresult)
    class(AngleFactory), pointer :: jresult
        jresult => AngleFactory_jstatic_instance()
        return
  end function

  recursive function AngleFactory_jm_getAt_1(this, j_index) result(jresult)
    class(AngleFactory), target :: this
    integer(4), value :: j_index
    class(Angle), pointer :: jresult
    integer(4) :: j_adjustedIndex
        j_adjustedIndex = this%f_frameUtil%jm_adjustAngleToFrameAngle_1(j_index)
        jresult => Angle_jcast(this%f_angleArray((j_adjustedIndex) + 1)%v)
        return
  end function

  recursive function AngleFactory_jm_getClosestDirection_1(this, j_angle) result(jresult)
    class(AngleFactory), target :: this
    integer(4), value :: j_angle
    class(Angle), pointer :: jresult
        if (((((j_angle >= 315) .and. (j_angle < 360))) .or. (((j_angle >= 0) .and. (j_angle < 45))))) then
            jresult => this%f_UP
            return
        else if (((j_angle >= 45) .and. (j_angle < 135))) then
            jresult => this%f_RIGHT
            return
        else if (((j_angle >= 135) .and. (j_angle < 225))) then
            jresult => this%f_DOWN
            return
        else if (((j_angle >= 225) .and. (j_angle < 315))) then
            jresult => this%f_LEFT
            return
        end if
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function AngleFactory_jm_getGeneralDirection_0(this) result(jresult)
    class(AngleFactory), target :: this
    class(Angle), pointer :: jresult
        jresult => this%f_NOT_ANGLE
        return
  end function

  recursive subroutine AngleFactory_jm_main_1(j_args)
    type(JString) :: j_args(:)
    class(StringMaker), pointer :: j_stringMaker
    class(AngleFactory), pointer :: j_angleFactory
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(CommonSeps), pointer :: jtemp5
    class(Angle), pointer :: jtemp6
    class(CommonSeps), pointer :: jtemp7
    class(LogUtil), pointer :: jtemp8
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringMaker => StringMaker_jnew_0()
        j_angleFactory => AngleFactory_jm_getInstance_0()
        j_index = 0
        do while ((j_index < 360))
            jtemp5 => CommonSeps_jm_getInstance_0()
            jtemp6 => j_angleFactory%jm_getClosestDirection_1(j_index)
            jtemp4 => j_stringMaker%jm_appendint_1(j_index)
            jtemp7 => CommonSeps_jm_getInstance_0()
            jtemp3 => jtemp4%jm_append_1(jtemp5%f_FORWARD_SLASH)
            jtemp2 => jtemp3%jm_appendshort_1(jtemp6%jm_getValue_0())
            jdiscardRef => jtemp2%jm_append_1(jtemp7%f_NEW_LINE)
            j_index = j_index + 1
        end do
        jtemp8 => LogUtil_jm_getInstance_0()
        call jtemp8%jm_putF_3(j_stringMaker%jm_toString_0(), JR_boxString('main'), 'main')
  end subroutine
end module AngleFactory_m

