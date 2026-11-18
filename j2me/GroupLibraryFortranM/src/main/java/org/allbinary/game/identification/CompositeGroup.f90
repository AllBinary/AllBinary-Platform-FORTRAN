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
module CompositeGroup_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use Group_m
  use GroupCommonFactory_m
  implicit none

  type, extends(JObject) :: CompositeGroup
    class(LogUtil), pointer :: f_logUtil => null()
    class(Group), pointer :: f_groupInterface => null()
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_clear_0 => CompositeGroup_jm_clear_0
    procedure :: jm_add_1 => CompositeGroup_jm_add_1
    procedure :: jm_isInGroup_1 => CompositeGroup_jm_isInGroup_1
    procedure :: jm_getGroup_0 => CompositeGroup_jm_getGroup_0
  end type


contains

  function CompositeGroup_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CompositeGroup), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CompositeGroup)
      jresult => object
    end select
  end function

  recursive function CompositeGroup_jnew_1(j_groupInterface) result(this)
    class(Group), target, optional :: j_groupInterface
    class(CompositeGroup), pointer :: this
    allocate(this)
    this%jclass = 'CompositeGroup'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    this%f_list => BasicArrayListD_jnew_0()
        this%f_groupInterface => j_groupInterface
  end function

  recursive subroutine CompositeGroup_jm_clear_0(this)
    class(CompositeGroup), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_list%jm_clear_0()
  end subroutine

  recursive subroutine CompositeGroup_jm_add_1(this, j_groupInterface)
    class(CompositeGroup), target :: this
    class(Group), target, optional :: j_groupInterface
    class(CommonStrings), pointer :: j_commonStrings
    class(GroupCommonFactory), pointer :: j_groupCommonFactory
    class(StringMaker), pointer :: j_stringBuffer
    class(StringUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        j_groupCommonFactory => GroupCommonFactory_jm_getInstance_0()
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(j_groupCommonFactory%f_ADDING_LABEL)
        jdiscardRef => j_stringBuffer%jm_append_1(j_groupInterface%jm_toString_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_groupCommonFactory%f_TO_LABEL)
        jtemp1 => StringUtil_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp1%jm_toString_1(this%f_groupInterface))
        call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, j_commonStrings%f_ADD)
        jdiscardBoolean = this%f_list%jm_add_1(j_groupInterface)
  end subroutine

  recursive function CompositeGroup_jm_isInGroup_1(this, j_groupInterface) result(jresult)
    class(CompositeGroup), target :: this
    class(Group), target, optional :: j_groupInterface
    logical :: jresult
        if (this%f_list%jm_contains_1(j_groupInterface)) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function CompositeGroup_jm_getGroup_0(this) result(jresult)
    class(CompositeGroup), target :: this
    class(Group), pointer :: jresult
        jresult => this%f_groupInterface
        return
  end function
end module CompositeGroup_m

