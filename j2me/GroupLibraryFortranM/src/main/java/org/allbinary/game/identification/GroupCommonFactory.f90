! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.game.identification
module GroupCommonFactory_m
  use JR_m
  use NullUtil_m
  use SmallIntegerSingletonFactory_m
  use Integer_m
  implicit none

  type, extends(JObject) :: GroupCommonFactory
    integer(4) :: f_ID = 0
    character(len=:), allocatable :: f_GROUP_NAME_LABEL
    character(len=:), allocatable :: f_ID_LABEL
    character(len=:), allocatable :: f_ADDING_LABEL
    character(len=:), allocatable :: f_TO_LABEL
  end type

  class(JObject), pointer, save :: GroupCommonFactory_jcell_instance => null()
  logical, save :: GroupCommonFactory_jset_instance = .false.

contains

  function GroupCommonFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GroupCommonFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GroupCommonFactory)
      jresult => object
    end select
  end function

  function GroupCommonFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. GroupCommonFactory_jset_instance) then
      GroupCommonFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    GroupCommonFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => GroupCommonFactory_jcell_instance
  end function

  subroutine GroupCommonFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    GroupCommonFactory_jset_instance = .true.
    if (present(jvalue)) then
      GroupCommonFactory_jcell_instance => jvalue
    else
      GroupCommonFactory_jcell_instance => null()
    end if
  end subroutine

  function GroupCommonFactory_jnew_0() result(this)
    class(GroupCommonFactory), pointer :: this
    class(SmallIntegerSingletonFactory), pointer :: jtemp3
    allocate(this)
    this%jclass = 'GroupCommonFactory'
    this%f_GROUP_NAME_LABEL = ''
    this%f_ID_LABEL = ''
    this%f_ADDING_LABEL = ''
    this%f_TO_LABEL = ''
    jtemp3 => SmallIntegerSingletonFactory_jm_getInstance_0()
    this%f_ID = jtemp3%jm_getAt_1(10)
    this%f_GROUP_NAME_LABEL = 'Group Name: '
    this%f_ID_LABEL = ' Id: '
    this%f_ADDING_LABEL = 'Adding: '
    this%f_TO_LABEL = ' to: '
  end function

  recursive function GroupCommonFactory_jm_getInstance_0() result(jresult)
    class(GroupCommonFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(GroupCommonFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call GroupCommonFactory_jsetstatic_instance(GroupCommonFactory_jnew_0())
        end if
        jresult => GroupCommonFactory_jcast(GroupCommonFactory_jstatic_instance())
        return
  end function
end module GroupCommonFactory_m

