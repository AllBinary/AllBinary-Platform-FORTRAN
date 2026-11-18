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
module CurrentlyPressedTouchButtonSingleton_m
  use JR_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use TouchButtonInput_m
  implicit none

  type, extends(JObject) :: CurrentlyPressedTouchButtonSingleton
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_size_0 => CurrentlyPressedTouchButtonSingleton_jm_size_0
    procedure :: jm_removeAt_1 => CurrentlyPressedTouchButtonSingleton_jm_removeAt_1
    procedure :: jm_remove_1 => CurrentlyPressedTouchButtonSingleton_jm_remove_1
    procedure :: jm_get_1 => CurrentlyPressedTouchButtonSingleton_jm_get_1
    procedure :: jm_contains_1 => CurrentlyPressedTouchButtonSingleton_jm_contains_1
    procedure :: jm_add_1 => CurrentlyPressedTouchButtonSingleton_jm_add_1
  end type

  class(CurrentlyPressedTouchButtonSingleton), pointer, save :: CurrentlyPressedTouchButtonSingleton_jcell_instance => null()
  logical, save :: CurrentlyPressedTouchButtonSingleton_jset_instance = .false.

contains

  function CurrentlyPressedTouchButtonSingleton_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CurrentlyPressedTouchButtonSingleton), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CurrentlyPressedTouchButtonSingleton)
      jresult => object
    end select
  end function

  function CurrentlyPressedTouchButtonSingleton_jstatic_instance() result(jresult)
    class(CurrentlyPressedTouchButtonSingleton), pointer :: jresult
    if (.not. CurrentlyPressedTouchButtonSingleton_jset_instance) then
      CurrentlyPressedTouchButtonSingleton_jset_instance = .true.
      CurrentlyPressedTouchButtonSingleton_jcell_instance => CurrentlyPressedTouchButtonSingleton_jnew_0()
    end if
    jresult => CurrentlyPressedTouchButtonSingleton_jcell_instance
  end function

  subroutine CurrentlyPressedTouchButtonSingleton_jsetstatic_instance(jvalue)
    class(CurrentlyPressedTouchButtonSingleton), target, optional :: jvalue
    CurrentlyPressedTouchButtonSingleton_jset_instance = .true.
    if (present(jvalue)) then
      CurrentlyPressedTouchButtonSingleton_jcell_instance => jvalue
    else
      CurrentlyPressedTouchButtonSingleton_jcell_instance => null()
    end if
  end subroutine

  recursive function CurrentlyPressedTouchButtonSingleton_jnew_0() result(this)
    class(CurrentlyPressedTouchButtonSingleton), pointer :: this
    allocate(this)
    this%jclass = 'CurrentlyPressedTouchButtonSingleton'
    this%f_list => BasicArrayListD_jnew_0()
        continue
  end function

  recursive function CurrentlyPressedTouchButtonSingleton_jm_getInstance_0() result(jresult)
    class(CurrentlyPressedTouchButtonSingleton), pointer :: jresult
        jresult => CurrentlyPressedTouchButtonSingleton_jstatic_instance()
        return
  end function

  recursive function CurrentlyPressedTouchButtonSingleton_jm_size_0(this) result(jresult)
    class(CurrentlyPressedTouchButtonSingleton), target :: this
    integer(4) :: jresult
        jresult = this%f_list%jm_size_0()
        return
  end function

  recursive function CurrentlyPressedTouchButtonSingleton_jm_removeAt_1(this, j_index) result(jresult)
    class(CurrentlyPressedTouchButtonSingleton), target :: this
    integer(4), value :: j_index
    class(TouchButtonInput), pointer :: jresult
        jresult => TouchButtonInput_jcast(this%f_list%jm_removeAt_1(j_index))
        return
  end function

  recursive function CurrentlyPressedTouchButtonSingleton_jm_remove_1(this, j_touchButtonInput) result(jresult)
    class(CurrentlyPressedTouchButtonSingleton), target :: this
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    logical :: jresult
        jresult = this%f_list%jm_remove_1(j_touchButtonInput)
        return
  end function

  recursive function CurrentlyPressedTouchButtonSingleton_jm_get_1(this, j_index) result(jresult)
    class(CurrentlyPressedTouchButtonSingleton), target :: this
    integer(4), value :: j_index
    class(TouchButtonInput), pointer :: jresult
        jresult => TouchButtonInput_jcast(this%f_list%f_objectArray((j_index) + 1)%v)
        return
  end function

  recursive function CurrentlyPressedTouchButtonSingleton_jm_contains_1(this, j_touchButtonInput) result(jresult)
    class(CurrentlyPressedTouchButtonSingleton), target :: this
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    logical :: jresult
        jresult = this%f_list%jm_contains_1(j_touchButtonInput)
        return
  end function

  recursive subroutine CurrentlyPressedTouchButtonSingleton_jm_add_1(this, j_touchButtonInput)
    class(CurrentlyPressedTouchButtonSingleton), target :: this
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_list%jm_add_1(j_touchButtonInput)
  end subroutine
end module CurrentlyPressedTouchButtonSingleton_m

