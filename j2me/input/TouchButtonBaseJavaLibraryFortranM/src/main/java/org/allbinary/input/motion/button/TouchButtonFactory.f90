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
module TouchButtonFactory_m
  use JR_m
  use BasicArrayList_m
  use BasicArrayListUtil_m
  implicit none

  type, extends(JObject) :: TouchButtonFactory
    class(BasicArrayList), pointer :: f_LIST_u4 => null()
    class(BasicArrayList), pointer :: f_list_u0 => null()
    class(BasicArrayList), pointer :: f_savedList => null()
    logical :: f_saved = .false.
  contains
    procedure :: jm_defaultList_0 => TouchButtonFactory_jm_defaultList_0
    procedure :: jm_toggle_2 => TouchButtonFactory_jm_toggle_2
    procedure :: jm_setList_1 => TouchButtonFactory_jm_setList_1
    procedure :: jm_getList_0 => TouchButtonFactory_jm_getList_0
  end type

  class(TouchButtonFactory), pointer, save :: TouchButtonFactory_jcell_SINGLETON => null()
  logical, save :: TouchButtonFactory_jset_SINGLETON = .false.

contains

  function TouchButtonFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonFactory)
      jresult => object
    end select
  end function

  function TouchButtonFactory_jstatic_SINGLETON() result(jresult)
    class(TouchButtonFactory), pointer :: jresult
    if (.not. TouchButtonFactory_jset_SINGLETON) then
      TouchButtonFactory_jset_SINGLETON = .true.
      TouchButtonFactory_jcell_SINGLETON => TouchButtonFactory_jnew_0()
    end if
    jresult => TouchButtonFactory_jcell_SINGLETON
  end function

  subroutine TouchButtonFactory_jsetstatic_SINGLETON(jvalue)
    class(TouchButtonFactory), target, optional :: jvalue
    TouchButtonFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      TouchButtonFactory_jcell_SINGLETON => jvalue
    else
      TouchButtonFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function TouchButtonFactory_jnew_0() result(this)
    class(TouchButtonFactory), pointer :: this
    class(BasicArrayListUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'TouchButtonFactory'
    jtemp1 => BasicArrayListUtil_jm_getInstance_0()
    this%f_LIST_u4 => jtemp1%jm_getImmutableInstance_0()
    this%f_list_u0 => this%f_LIST_u4
    this%f_savedList => this%f_LIST_u4
    this%f_saved = .false.
        continue
  end function

  recursive function TouchButtonFactory_jm_getInstance_0() result(jresult)
    class(TouchButtonFactory), pointer :: jresult
        jresult => TouchButtonFactory_jstatic_SINGLETON()
        return
  end function

  recursive subroutine TouchButtonFactory_jm_defaultList_0(this)
    class(TouchButtonFactory), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_list_u0 => this%f_LIST_u4
        call this%jm_toggle_2(.false., this%f_LIST_u4)
  end subroutine

  recursive subroutine TouchButtonFactory_jm_toggle_2(this, j_save, j_list)
    class(TouchButtonFactory), target :: this
    logical, value :: j_save
    class(BasicArrayList), target, optional :: j_list
    class(BasicArrayListUtil), pointer :: jtemp2
        jtemp2 => BasicArrayListUtil_jm_getInstance_0()
        if ((.not. JR_same(j_list, jtemp2%jm_getImmutableInstance_0()))) then
            this%f_savedList => j_list
            if ((.not. this%f_saved)) then
                this%f_list_u0 => this%f_savedList
            end if
        else
            if (j_save) then
                if ((.not. this%f_saved)) then
                    this%f_saved = .true.
                    this%f_savedList => this%f_list_u0
                    this%f_list_u0 => this%f_LIST_u4
                else
                    continue
                end if
            else
                this%f_list_u0 => this%f_savedList
                this%f_saved = .false.
            end if
        end if
  end subroutine

  recursive subroutine TouchButtonFactory_jm_setList_1(this, j_list)
    class(TouchButtonFactory), target :: this
    class(BasicArrayList), target, optional :: j_list
        if ((.not. present(j_list))) then
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        this%f_list_u0 => j_list
  end subroutine

  recursive function TouchButtonFactory_jm_getList_0(this) result(jresult)
    class(TouchButtonFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_list_u0
        return
  end function
end module TouchButtonFactory_m

