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
! package org.allbinary.input.motion.button
module BasicTouchButtonsBuilder_m
  use JR_m
  use LogUtil_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use BasicArrayListUtil_m
  use BaseTouchInput_m
  implicit none

  type, extends(BaseTouchInput) :: BasicTouchButtonsBuilder
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_getList_0 => BasicTouchButtonsBuilder_jm_getList_0
  end type

  class(BasicTouchButtonsBuilder), pointer, save :: BasicTouchButtonsBuilder_jcell_SINGLETON => null()
  logical, save :: BasicTouchButtonsBuilder_jset_SINGLETON = .false.

contains

  function BasicTouchButtonsBuilder_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicTouchButtonsBuilder), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicTouchButtonsBuilder)
      jresult => object
    end select
  end function

  function BasicTouchButtonsBuilder_jstatic_SINGLETON() result(jresult)
    class(BasicTouchButtonsBuilder), pointer :: jresult
    if (.not. BasicTouchButtonsBuilder_jset_SINGLETON) then
      BasicTouchButtonsBuilder_jset_SINGLETON = .true.
      BasicTouchButtonsBuilder_jcell_SINGLETON => BasicTouchButtonsBuilder_jnew_0()
    end if
    jresult => BasicTouchButtonsBuilder_jcell_SINGLETON
  end function

  subroutine BasicTouchButtonsBuilder_jsetstatic_SINGLETON(jvalue)
    class(BasicTouchButtonsBuilder), target, optional :: jvalue
    BasicTouchButtonsBuilder_jset_SINGLETON = .true.
    if (present(jvalue)) then
      BasicTouchButtonsBuilder_jcell_SINGLETON => jvalue
    else
      BasicTouchButtonsBuilder_jcell_SINGLETON => null()
    end if
  end subroutine

  function BasicTouchButtonsBuilder_jnew_0() result(this)
    class(BasicTouchButtonsBuilder), pointer :: this
    allocate(this)
    this%jclass = 'BasicTouchButtonsBuilder'
    this%f_logUtil => LogUtil_jm_getInstance_0()
  end function

  recursive function BasicTouchButtonsBuilder_jm_getInstance_0() result(jresult)
    class(BaseTouchInput), pointer :: jresult
        jresult => BasicTouchButtonsBuilder_jstatic_SINGLETON()
        return
  end function

  recursive function BasicTouchButtonsBuilder_jm_getList_0(this) result(jresult)
    class(BasicTouchButtonsBuilder), target :: this
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayList), pointer :: j_list
    class(BasicArrayListUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_GET_LIST)
            j_list => BasicArrayListD_jnew_0()
            jresult => j_list
            return
  end function
end module BasicTouchButtonsBuilder_m

function BasicTouchButtonsBuilder_jnew_0_jext() result(this)
  use BasicTouchButtonsBuilder_m, only: JObject, BasicTouchButtonsBuilder_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => BasicTouchButtonsBuilder_jnew_0()
end function

