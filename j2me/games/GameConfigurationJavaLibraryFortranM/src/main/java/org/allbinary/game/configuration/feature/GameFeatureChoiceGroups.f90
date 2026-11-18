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
module GameFeatureChoiceGroups_m
  use JR_m
  use StdUtil_m
  use ABHashtable_m
  use BasicArrayList_m
  implicit none

  type, extends(JObject) :: GameFeatureChoiceGroups
    class(ABHashtable), pointer :: f_hashtable => null()
  contains
    procedure :: jm_get_0 => GameFeatureChoiceGroups_jm_get_0
    procedure :: jm_add_2 => GameFeatureChoiceGroups_jm_add_2
  end type

  class(GameFeatureChoiceGroups), pointer, save :: GameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsExclusive => null()
  logical, save :: GameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsExclusive = .false.
  class(GameFeatureChoiceGroups), pointer, save :: GameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsMultiple => null()
  logical, save :: GameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsMultiple = .false.

contains

  function GameFeatureChoiceGroups_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameFeatureChoiceGroups), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameFeatureChoiceGroups)
      jresult => object
    end select
  end function

  function GameFeatureChoiceGroups_jstatic_gameFeatureChoiceGroupsExclusive() result(jresult)
    class(GameFeatureChoiceGroups), pointer :: jresult
    if (.not. GameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsExclusive) then
      GameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsExclusive = .true.
      GameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsExclusive => GameFeatureChoiceGroups_jnew_0()
    end if
    jresult => GameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsExclusive
  end function

  subroutine GameFeatureChoiceGroups_jsetstatic_gameFeatureChoiceGroupsExclusive(jvalue)
    class(GameFeatureChoiceGroups), target, optional :: jvalue
    GameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsExclusive = .true.
    if (present(jvalue)) then
      GameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsExclusive => jvalue
    else
      GameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsExclusive => null()
    end if
  end subroutine

  function GameFeatureChoiceGroups_jstatic_gameFeatureChoiceGroupsMultiple() result(jresult)
    class(GameFeatureChoiceGroups), pointer :: jresult
    if (.not. GameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsMultiple) then
      GameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsMultiple = .true.
      GameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsMultiple => GameFeatureChoiceGroups_jnew_0()
    end if
    jresult => GameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsMultiple
  end function

  subroutine GameFeatureChoiceGroups_jsetstatic_gameFeatureChoiceGroupsMultiple(jvalue)
    class(GameFeatureChoiceGroups), target, optional :: jvalue
    GameFeatureChoiceGroups_jset_gameFeatureChoiceGroupsMultiple = .true.
    if (present(jvalue)) then
      GameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsMultiple => jvalue
    else
      GameFeatureChoiceGroups_jcell_gameFeatureChoiceGroupsMultiple => null()
    end if
  end subroutine

  recursive function GameFeatureChoiceGroups_jnew_0() result(this)
    class(GameFeatureChoiceGroups), pointer :: this
    class(StdUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'GameFeatureChoiceGroups'
    jtemp1 => StdUtil_jm_getInstance_0()
    this%f_hashtable => jtemp1%jm_createHashtable_0()
        continue
  end function

  recursive function GameFeatureChoiceGroups_jm_getExclusiveInstance_0() result(jresult)
    class(GameFeatureChoiceGroups), pointer :: jresult
        jresult => GameFeatureChoiceGroups_jstatic_gameFeatureChoiceGroupsExclusive()
        return
  end function

  recursive function GameFeatureChoiceGroups_jm_getMultipleInstance_0() result(jresult)
    class(GameFeatureChoiceGroups), pointer :: jresult
        jresult => GameFeatureChoiceGroups_jstatic_gameFeatureChoiceGroupsMultiple()
        return
  end function

  recursive function GameFeatureChoiceGroups_jm_get_0(this) result(jresult)
    class(GameFeatureChoiceGroups), target :: this
    class(ABHashtable), pointer :: jresult
        jresult => this%f_hashtable
        return
  end function

  recursive subroutine GameFeatureChoiceGroups_jm_add_2(this, j_name, j_list)
    class(GameFeatureChoiceGroups), target :: this
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
end module GameFeatureChoiceGroups_m

