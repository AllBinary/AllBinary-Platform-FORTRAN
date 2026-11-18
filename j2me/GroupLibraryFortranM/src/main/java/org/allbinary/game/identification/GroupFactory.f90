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
! package org.allbinary.game.identification
module GroupFactory_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Group_m
  implicit none

  type, extends(JObject) :: GroupFactory
    class(LogUtil), pointer :: f_logUtil => null()
    type(JRef), allocatable :: f_NULL_GROUP_ARRAY(:)
    class(BasicArrayList), pointer :: f_list => null()
    integer(4) :: f_index = 0
  contains
    procedure :: jm_getNextGroup_0 => GroupFactory_jm_getNextGroup_0
    procedure :: jm_getNextGroupByName_1 => GroupFactory_jm_getNextGroupByName_1
    procedure :: jm_init_2 => GroupFactory_jm_init_2
  end type

  class(GroupFactory), pointer, save :: GroupFactory_jcell_instance => null()
  logical, save :: GroupFactory_jset_instance = .false.

contains

  function GroupFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GroupFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GroupFactory)
      jresult => object
    end select
  end function

  function GroupFactory_jstatic_instance() result(jresult)
    class(GroupFactory), pointer :: jresult
    if (.not. GroupFactory_jset_instance) then
      GroupFactory_jset_instance = .true.
      GroupFactory_jcell_instance => GroupFactory_jnew_0()
    end if
    jresult => GroupFactory_jcell_instance
  end function

  subroutine GroupFactory_jsetstatic_instance(jvalue)
    class(GroupFactory), target, optional :: jvalue
    GroupFactory_jset_instance = .true.
    if (present(jvalue)) then
      GroupFactory_jcell_instance => jvalue
    else
      GroupFactory_jcell_instance => null()
    end if
  end subroutine

  function GroupFactory_jnew_0() result(this)
    class(GroupFactory), pointer :: this
    allocate(this)
    this%jclass = 'GroupFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_NULL_GROUP_ARRAY = JR_newRefArray(0)
    this%f_list => BasicArrayListD_jnew_0()
    this%f_index = 0
  end function

  recursive function GroupFactory_jm_getInstance_0() result(jresult)
    class(GroupFactory), pointer :: jresult
        jresult => GroupFactory_jstatic_instance()
        return
  end function

  recursive function GroupFactory_jm_getNextGroup_0(this) result(jresult)
    class(GroupFactory), target :: this
    class(Group), pointer :: jresult
    class(Group), pointer :: j_group
        j_group => Group_jcast(this%f_list%f_objectArray((this%f_index) + 1)%v)
        this%f_index = this%f_index + 1
        jresult => j_group
        return
  end function

  recursive function GroupFactory_jm_getNextGroupByName_1(this, j_name) result(jresult)
    class(GroupFactory), target :: this
    character(len=*), intent(in) :: j_name
    class(Group), pointer :: jresult
    class(Group), pointer :: j_group
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_group => this%jm_getNextGroup_0()
        call j_group%jm_setName_1(j_name)
        jresult => j_group
        return
  end function

  recursive subroutine GroupFactory_jm_init_2(this, j_groups, j_nameArray)
    class(GroupFactory), target :: this
    integer(4), value :: j_groups
    type(JString) :: j_nameArray(:)
    class(StringMaker), pointer :: j_stringMaker
    class(StringUtil), pointer :: j_stringUtil
    character(len=:), allocatable :: j_TEAM
    integer(4) :: j_size
    character(len=:), allocatable :: j_name
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringMaker => StringMaker_jnew_0()
        j_stringUtil => StringUtil_jm_getInstance_0()
        j_TEAM = 'Team '
        call this%f_list%jm_clear_0()
        this%f_index = 0
        j_size = this%f_list%jm_size_0()
        continue
        do while ((j_size < j_groups))
            j_name = j_stringUtil%f_EMPTY_STRING
            if ((j_size < size(j_nameArray, 1))) then
                j_name = j_nameArray((j_size) + 1)%v
            else
                jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                jtemp2 => j_stringMaker%jm_append_1(j_TEAM)
                jtemp1 => jtemp2%jm_appendint_1(j_size)
                j_name = jtemp1%jm_toString_0()
            end if
            jdiscardBoolean = this%f_list%jm_add_1(Group_jnew_2(j_name, JR_i16(((j_size + 3)))))
            j_size = j_size + 1
        end do
  end subroutine
end module GroupFactory_m

