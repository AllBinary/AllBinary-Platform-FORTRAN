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
module Group_m
  use JR_m
  use StringMaker_m
  use StringUtil_m
  use GroupInterface_m
  use GroupCommonFactory_m
  implicit none

  type, extends(GroupInterface) :: Group
    character(len=:), allocatable :: f_name
    integer(4) :: f_teamId = 0
    character(len=:), allocatable :: f_string
  contains
    procedure :: jm_getGroupName_0 => Group_jm_getGroupName_0
    procedure :: jm_setName_1 => Group_jm_setName_1
    procedure :: jm_getGroupId_0 => Group_jm_getGroupId_0
    procedure :: jm_toString_0 => Group_jm_toString_0
  end type


contains

  function Group_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Group), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Group)
      jresult => object
    end select
  end function

  recursive function Group_jnew_2(j_teamName, j_teamId) result(this)
    character(len=*), intent(in) :: j_teamName
    integer(4), value :: j_teamId
    class(Group), pointer :: this
    class(StringUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'Group'
    this%f_name = ''
    this%f_string = ''
    jtemp1 => StringUtil_jm_getInstance_0()
    this%f_name = jtemp1%f_EMPTY_STRING
    
    jtemp2 => StringUtil_jm_getInstance_0()
    this%f_string = jtemp2%f_EMPTY_STRING
        this%f_teamId = j_teamId
        call this%jm_setName_1(j_teamName)
  end function

  recursive function Group_jm_getGroupName_0(this) result(jresult)
    class(Group), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive subroutine Group_jm_setName_1(this, j_name)
    class(Group), target :: this
    character(len=*), intent(in) :: j_name
    class(GroupCommonFactory), pointer :: j_groupCommonFactory
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_name = j_name
        j_groupCommonFactory => GroupCommonFactory_jm_getInstance_0()
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(j_groupCommonFactory%f_GROUP_NAME_LABEL)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_name)
        jdiscardRef => j_stringBuffer%jm_append_1(j_groupCommonFactory%f_ID_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendshort_1(this%f_teamId)
        this%f_string = j_stringBuffer%jm_toString_0()
  end subroutine

  recursive function Group_jm_getGroupId_0(this) result(jresult)
    class(Group), target :: this
    integer(4) :: jresult
        jresult = this%f_teamId
        return
  end function

  recursive function Group_jm_toString_0(this) result(jresult)
    class(Group), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_string
        return
  end function
end module Group_m

