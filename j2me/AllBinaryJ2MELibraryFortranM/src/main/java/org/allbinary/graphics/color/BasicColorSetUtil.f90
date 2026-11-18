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
! package org.allbinary.graphics.color
module BasicColorSetUtil_m
  use JR_m
  use BasicColor_m
  implicit none

  type, extends(JObject) :: BasicColorSetUtil
  contains
    procedure :: jm_setBasicColorP_2 => BasicColorSetUtil_jm_setBasicColorP_2
    procedure :: jm_setBasicColorP3_3 => BasicColorSetUtil_jm_setBasicColorP3_3
  end type

  class(BasicColorSetUtil), pointer, save :: BasicColorSetUtil_jcell_instance => null()
  logical, save :: BasicColorSetUtil_jset_instance = .false.

contains

  function BasicColorSetUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicColorSetUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicColorSetUtil)
      jresult => object
    end select
  end function

  function BasicColorSetUtil_jstatic_instance() result(jresult)
    class(BasicColorSetUtil), pointer :: jresult
    if (.not. BasicColorSetUtil_jset_instance) then
      BasicColorSetUtil_jset_instance = .true.
      BasicColorSetUtil_jcell_instance => BasicColorSetUtil_jnew_0()
    end if
    jresult => BasicColorSetUtil_jcell_instance
  end function

  subroutine BasicColorSetUtil_jsetstatic_instance(jvalue)
    class(BasicColorSetUtil), target, optional :: jvalue
    BasicColorSetUtil_jset_instance = .true.
    if (present(jvalue)) then
      BasicColorSetUtil_jcell_instance => jvalue
    else
      BasicColorSetUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function BasicColorSetUtil_jnew_0() result(this)
    class(BasicColorSetUtil), pointer :: this
    allocate(this)
    this%jclass = 'BasicColorSetUtil'
        continue
  end function

  recursive function BasicColorSetUtil_jm_getInstance_0() result(jresult)
    class(BasicColorSetUtil), pointer :: jresult
        jresult => BasicColorSetUtil_jstatic_instance()
        return
  end function

  recursive subroutine BasicColorSetUtil_jm_setBasicColorP_2(this, j_graphics, j_basicColor)
    class(BasicColorSetUtil), target :: this
    class(Graphics), target, optional :: j_graphics
    class(BasicColor), target, optional :: j_basicColor
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_graphics%jm_setColor_1(j_basicColor%jm_intValue_0())
  end subroutine

  recursive subroutine BasicColorSetUtil_jm_setBasicColorP3_3(this, j_graphics, j_basicColor, j_value)
    class(BasicColorSetUtil), target :: this
    class(Graphics), target, optional :: j_graphics
    class(BasicColor), target, optional :: j_basicColor
    integer(4), value :: j_value
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_graphics%jm_setColor_1(j_value)
  end subroutine
end module BasicColorSetUtil_m

