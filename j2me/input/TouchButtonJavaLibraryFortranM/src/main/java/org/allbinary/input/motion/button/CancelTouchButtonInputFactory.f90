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
module CancelTouchButtonInputFactory_m
  use JR_m
  use InputFactory_m
  use NullUtil_m
  use TouchButtonInput_m
  use BasicTouchInputFactory_m
  implicit none

  type, extends(JObject) :: CancelTouchButtonInputFactory
    type(JRef), allocatable :: f_cancelInputArray(:)
  contains
    procedure :: jm_getCancel_1 => CancelTouchButtonInputFactory_jm_getCancel_1
  end type

  class(JObject), pointer, save :: CancelTouchButtonInputFactory_jcell_instance => null()
  logical, save :: CancelTouchButtonInputFactory_jset_instance = .false.

contains

  function CancelTouchButtonInputFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CancelTouchButtonInputFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CancelTouchButtonInputFactory)
      jresult => object
    end select
  end function

  function CancelTouchButtonInputFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. CancelTouchButtonInputFactory_jset_instance) then
      CancelTouchButtonInputFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    CancelTouchButtonInputFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => CancelTouchButtonInputFactory_jcell_instance
  end function

  subroutine CancelTouchButtonInputFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    CancelTouchButtonInputFactory_jset_instance = .true.
    if (present(jvalue)) then
      CancelTouchButtonInputFactory_jcell_instance => jvalue
    else
      CancelTouchButtonInputFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function CancelTouchButtonInputFactory_jnew_0() result(this)
    class(CancelTouchButtonInputFactory), pointer :: this
    class(BasicTouchInputFactory), pointer :: j_basicTouchInputFactory
    integer(4) :: j_index
    class(InputFactory), pointer :: jtemp3
    allocate(this)
    this%jclass = 'CancelTouchButtonInputFactory'
    jtemp3 => InputFactory_jm_getInstance_0()
    this%f_cancelInputArray = JR_newRefArray(jtemp3%f_MAX)
        j_basicTouchInputFactory => BasicTouchInputFactory_jm_getInstance_0()
        j_index = (size(this%f_cancelInputArray, 1) - 1)
        do while ((j_index >= 0))
            this%f_cancelInputArray((j_index) + 1)%v => j_basicTouchInputFactory%f_NONE
            j_index = j_index - 1
        end do
        this%f_cancelInputArray((j_basicTouchInputFactory%f_UP%jm_getSourceId_0()) + 1)%v => j_basicTouchInputFactory%f_DOWN
        this%f_cancelInputArray((j_basicTouchInputFactory%f_DOWN%jm_getSourceId_0()) + 1)%v => j_basicTouchInputFactory%f_UP
        this%f_cancelInputArray((j_basicTouchInputFactory%f_LEFT%jm_getSourceId_0()) + 1)%v => j_basicTouchInputFactory%f_RIGHT
        this%f_cancelInputArray((j_basicTouchInputFactory%f_RIGHT%jm_getSourceId_0()) + 1)%v => j_basicTouchInputFactory%f_LEFT
  end function

  recursive function CancelTouchButtonInputFactory_jm_getInstance_0() result(jresult)
    class(CancelTouchButtonInputFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(CancelTouchButtonInputFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call CancelTouchButtonInputFactory_jsetstatic_instance(CancelTouchButtonInputFactory_jnew_0())
        end if
        jresult => CancelTouchButtonInputFactory_jcast(CancelTouchButtonInputFactory_jstatic_instance())
        return
  end function

  recursive function CancelTouchButtonInputFactory_jm_getCancel_1(this, j_touchButtonInput) result(jresult)
    class(CancelTouchButtonInputFactory), target :: this
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    class(TouchButtonInput), pointer :: jresult
        jresult => TouchButtonInput_jcast(this%f_cancelInputArray((j_touchButtonInput%jm_getSourceId_0()) + 1)%v)
        return
  end function
end module CancelTouchButtonInputFactory_m

