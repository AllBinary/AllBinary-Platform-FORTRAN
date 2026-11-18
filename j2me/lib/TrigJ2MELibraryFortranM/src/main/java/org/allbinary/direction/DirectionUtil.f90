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
! package org.allbinary.direction
module DirectionUtil_m
  use JR_m
  use Angle_m
  use AngleFactory_m
  use DirectionFactory_m
  use Direction_m
  implicit none

  type, extends(JObject) :: DirectionUtil
    type(JRef), allocatable :: f_directionArray(:)
    type(JRef), allocatable :: f_directionArray2(:)
  contains
    procedure :: jm_getAngle_1 => DirectionUtil_jm_getAngle_1
    procedure :: jm_getFrameAngle_1 => DirectionUtil_jm_getFrameAngle_1
  end type

  class(DirectionUtil), pointer, save :: DirectionUtil_jcell_instance => null()
  logical, save :: DirectionUtil_jset_instance = .false.

contains

  function DirectionUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DirectionUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DirectionUtil)
      jresult => object
    end select
  end function

  function DirectionUtil_jstatic_instance() result(jresult)
    class(DirectionUtil), pointer :: jresult
    if (.not. DirectionUtil_jset_instance) then
      DirectionUtil_jset_instance = .true.
      DirectionUtil_jcell_instance => DirectionUtil_jnew_0()
    end if
    jresult => DirectionUtil_jcell_instance
  end function

  subroutine DirectionUtil_jsetstatic_instance(jvalue)
    class(DirectionUtil), target, optional :: jvalue
    DirectionUtil_jset_instance = .true.
    if (present(jvalue)) then
      DirectionUtil_jcell_instance => jvalue
    else
      DirectionUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function DirectionUtil_jnew_0() result(this)
    class(DirectionUtil), pointer :: this
    class(AngleFactory), pointer :: j_angleFactory
    class(DirectionFactory), pointer :: j_directionFactory
    allocate(this)
    this%jclass = 'DirectionUtil'
    this%f_directionArray = JR_newRefArray(10)
    this%f_directionArray2 = JR_newRefArray(10)
        j_angleFactory => AngleFactory_jm_getInstance_0()
        j_directionFactory => DirectionFactory_jm_getInstance_0()
        this%f_directionArray((j_directionFactory%f_LEFT%jm_getValue_0()) + 1)%v => j_angleFactory%f_LEFT
        this%f_directionArray((j_directionFactory%f_RIGHT%jm_getValue_0()) + 1)%v => j_angleFactory%f_RIGHT
        this%f_directionArray((j_directionFactory%f_UP%jm_getValue_0()) + 1)%v => j_angleFactory%f_UP
        this%f_directionArray((j_directionFactory%f_DOWN%jm_getValue_0()) + 1)%v => j_angleFactory%f_DOWN
        this%f_directionArray2((j_directionFactory%f_LEFT%jm_getValue_0()) + 1)%v => j_angleFactory%f_LEFT
        this%f_directionArray2((j_directionFactory%f_RIGHT%jm_getValue_0()) + 1)%v => j_angleFactory%f_RIGHT
        this%f_directionArray2((j_directionFactory%f_UP%jm_getValue_0()) + 1)%v => j_angleFactory%f_UP
        this%f_directionArray2((j_directionFactory%f_DOWN%jm_getValue_0()) + 1)%v => j_angleFactory%f_DOWN
  end function

  recursive function DirectionUtil_jm_getInstance_0() result(jresult)
    class(DirectionUtil), pointer :: jresult
        jresult => DirectionUtil_jstatic_instance()
        return
  end function

  recursive function DirectionUtil_jm_getAngle_1(this, j_direction) result(jresult)
    class(DirectionUtil), target :: this
    class(Direction), target, optional :: j_direction
    class(Angle), pointer :: jresult
        jresult => Angle_jcast(this%f_directionArray2((j_direction%jm_getValue_0()) + 1)%v)
        return
  end function

  recursive function DirectionUtil_jm_getFrameAngle_1(this, j_direction) result(jresult)
    class(DirectionUtil), target :: this
    class(Direction), target, optional :: j_direction
    class(Angle), pointer :: jresult
        jresult => Angle_jcast(this%f_directionArray((j_direction%jm_getValue_0()) + 1)%v)
        return
  end function
end module DirectionUtil_m

