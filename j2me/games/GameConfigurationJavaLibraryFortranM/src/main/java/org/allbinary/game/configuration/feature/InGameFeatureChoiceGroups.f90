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
! package org.allbinary.game.configuration.feature
module InGameFeatureChoiceGroups_m
  use JR_m
  use StdUtil_m
  use ABHashtable_m
  use BasicArrayList_m
  implicit none

  type, extends(JObject) :: InGameFeatureChoiceGroups
    class(ABHashtable), pointer :: f_hashtable => null()
  contains
    procedure :: jm_get_0 => InGameFeatureChoiceGroups_jm_get_0
    procedure :: jm_add_2 => InGameFeatureChoiceGroups_jm_add_2
  end type

  class(InGameFeatureChoiceGroups), pointer, save :: InGameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsExclusive => null()
  logical, save :: InGameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsExclusive = .false.
  class(InGameFeatureChoiceGroups), pointer, save :: InGameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsMultiple => null()
  logical, save :: InGameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsMultiple = .false.

contains

  function InGameFeatureChoiceGroups_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InGameFeatureChoiceGroups), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InGameFeatureChoiceGroups)
      jresult => object
    end select
  end function

  function InGameFeatureChoiceGroups_jstatic_gameFeatureChoiceGroupsExclusive() result(jresult)
    class(InGameFeatureChoiceGroups), pointer :: jresult
    if (.not. InGameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsExclusive) then
      InGameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsExclusive = .true.
      InGameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsExclusive => InGameFeatureChoiceGroups_jnew_0()
    end if
    jresult => InGameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsExclusive
  end function

  subroutine InGameFeatureChoiceGroups_jsetstatic_gameFeatureChoiceGroupsExclusive(jvalue)
    class(InGameFeatureChoiceGroups), target, optional :: jvalue
    InGameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsExclusive = .true.
    if (present(jvalue)) then
      InGameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsExclusive => jvalue
    else
      InGameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsExclusive => null()
    end if
  end subroutine

  function InGameFeatureChoiceGroups_jstatic_gameFeatureChoiceGroupsMultiple() result(jresult)
    class(InGameFeatureChoiceGroups), pointer :: jresult
    if (.not. InGameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsMultiple) then
      InGameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsMultiple = .true.
      InGameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsMultiple => InGameFeatureChoiceGroups_jnew_0()
    end if
    jresult => InGameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsMultiple
  end function

  subroutine InGameFeatureChoiceGroups_jsetstatic_gameFeatureChoiceGroupsMultiple(jvalue)
    class(InGameFeatureChoiceGroups), target, optional :: jvalue
    InGameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsMultiple = .true.
    if (present(jvalue)) then
      InGameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsMultiple => jvalue
    else
      InGameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsMultiple => null()
    end if
  end subroutine

  recursive function InGameFeatureChoiceGroups_jnew_0() result(this)
    class(InGameFeatureChoiceGroups), pointer :: this
    class(StdUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'InGameFeatureChoiceGroups'
    jtemp1 => StdUtil_jm_getInstance_0()
    this%f_hashtable => jtemp1%jm_createHashtable_0()
        continue
  end function

  recursive function InGameFeatureChoiceGroups_jm_getExclusiveInstance_0() result(jresult)
    class(InGameFeatureChoiceGroups), pointer :: jresult
        jresult => InGameFeatureChoiceGroups_jstatic_gameFeatureChoiceGroupsExclusive()
        return
  end function

  recursive function InGameFeatureChoiceGroups_jm_getMultipleInstance_0() result(jresult)
    class(InGameFeatureChoiceGroups), pointer :: jresult
        jresult => InGameFeatureChoiceGroups_jstatic_gameFeatureChoiceGroupsMultiple()
        return
  end function

  recursive function InGameFeatureChoiceGroups_jm_get_0(this) result(jresult)
    class(InGameFeatureChoiceGroups), target :: this
    class(ABHashtable), pointer :: jresult
        jresult => this%f_hashtable
        return
  end function

  recursive subroutine InGameFeatureChoiceGroups_jm_add_2(this, j_name, j_list)
    class(InGameFeatureChoiceGroups), target :: this
    character(len=*), intent(in) :: j_name
    class(BasicArrayList), target, optional :: j_list
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardRef => this%f_hashtable%jm_put_2(j_name, j_list)
  end subroutine
end module InGameFeatureChoiceGroups_m

