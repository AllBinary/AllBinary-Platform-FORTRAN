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
module FrameUtil_m
  use JR_m
  use AngleFactory_m
  implicit none

  type, extends(JObject) :: FrameUtil
  contains
    procedure :: jm_getFrameForAngle_2 => FrameUtil_jm_getFrameForAngle_2
    procedure :: jm_getFrameAngle_2 => FrameUtil_jm_getFrameAngle_2
    procedure :: jm_adjustAngleToFrameAngle_1 => FrameUtil_jm_adjustAngleToFrameAngle_1
  end type

  class(FrameUtil), pointer, save :: FrameUtil_jcell_instance => null()
  logical, save :: FrameUtil_jset_instance = .false.

contains

  function FrameUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FrameUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FrameUtil)
      jresult => object
    end select
  end function

  function FrameUtil_jstatic_instance() result(jresult)
    class(FrameUtil), pointer :: jresult
    if (.not. FrameUtil_jset_instance) then
      FrameUtil_jset_instance = .true.
      FrameUtil_jcell_instance => FrameUtil_jnew_0()
    end if
    jresult => FrameUtil_jcell_instance
  end function

  subroutine FrameUtil_jsetstatic_instance(jvalue)
    class(FrameUtil), target, optional :: jvalue
    FrameUtil_jset_instance = .true.
    if (present(jvalue)) then
      FrameUtil_jcell_instance => jvalue
    else
      FrameUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function FrameUtil_jnew_0() result(this)
    class(FrameUtil), pointer :: this
    allocate(this)
    this%jclass = 'FrameUtil'
        continue
  end function

  recursive function FrameUtil_jm_getInstance_0() result(jresult)
    class(FrameUtil), pointer :: jresult
        jresult => FrameUtil_jstatic_instance()
        return
  end function

  recursive function FrameUtil_jm_getFrameForAngle_2(this, j_angle, j_angleIncrement) result(jresult)
    class(FrameUtil), target :: this
    integer(4), value :: j_angle
    integer(4), value :: j_angleIncrement
    integer(4) :: jresult
        jresult = (this%jm_adjustAngleToFrameAngle_1(j_angle) / j_angleIncrement)
        return
  end function

  recursive function FrameUtil_jm_getFrameAngle_2(this, j_frame, j_angleIncrement) result(jresult)
    class(FrameUtil), target :: this
    integer(4), value :: j_frame
    integer(4), value :: j_angleIncrement
    integer(4) :: jresult
    integer(4) :: j_frameAngle
        j_frameAngle = ((j_angleIncrement * j_frame) - 90)
        jresult = this%jm_adjustAngleToFrameAngle_1(j_frameAngle)
        return
  end function

  recursive function FrameUtil_jm_adjustAngleToFrameAngle_1(this, j_currentAngle) result(jresult)
    class(FrameUtil), target :: this
    integer(4), value :: j_currentAngle
    integer(4) :: jresult
    class(AngleFactory), pointer :: j_angleFactory
        j_angleFactory => AngleFactory_jm_getInstance_0()
        if ((j_currentAngle > 359)) then
            j_currentAngle = ((j_currentAngle - j_angleFactory%f_TOTAL_ANGLE))
            do while ((j_currentAngle > 359))
                j_currentAngle = ((j_currentAngle - j_angleFactory%f_TOTAL_ANGLE))
            end do
        end if
        if ((j_currentAngle < 0)) then
            j_currentAngle = ((j_currentAngle + j_angleFactory%f_TOTAL_ANGLE))
            do while ((j_currentAngle < 0))
                j_currentAngle = ((j_currentAngle + j_angleFactory%f_TOTAL_ANGLE))
            end do
        end if
        jresult = j_currentAngle
        return
  end function
end module FrameUtil_m

