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
! package org.allbinary.game.midlet
module LicenseLevelUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: LicenseLevelUtil
  contains
    procedure :: jm_getMaxLevel_2 => LicenseLevelUtil_jm_getMaxLevel_2
  end type

  class(LicenseLevelUtil), pointer, save :: LicenseLevelUtil_jcell_instance => null()
  logical, save :: LicenseLevelUtil_jset_instance = .false.

contains

  function LicenseLevelUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LicenseLevelUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LicenseLevelUtil)
      jresult => object
    end select
  end function

  function LicenseLevelUtil_jstatic_instance() result(jresult)
    class(LicenseLevelUtil), pointer :: jresult
    if (.not. LicenseLevelUtil_jset_instance) then
      LicenseLevelUtil_jset_instance = .true.
      LicenseLevelUtil_jcell_instance => LicenseLevelUtil_jnew_0()
    end if
    jresult => LicenseLevelUtil_jcell_instance
  end function

  subroutine LicenseLevelUtil_jsetstatic_instance(jvalue)
    class(LicenseLevelUtil), target, optional :: jvalue
    LicenseLevelUtil_jset_instance = .true.
    if (present(jvalue)) then
      LicenseLevelUtil_jcell_instance => jvalue
    else
      LicenseLevelUtil_jcell_instance => null()
    end if
  end subroutine

  function LicenseLevelUtil_jnew_0() result(this)
    class(LicenseLevelUtil), pointer :: this
    allocate(this)
    this%jclass = 'LicenseLevelUtil'
  end function

  recursive function LicenseLevelUtil_jm_getInstance_0() result(jresult)
    class(LicenseLevelUtil), pointer :: jresult
        jresult => LicenseLevelUtil_jstatic_instance()
        return
  end function

  recursive function LicenseLevelUtil_jm_getMaxLevel_2(this, j_maxLevel, j_demoLevel) result(jresult)
    class(LicenseLevelUtil), target :: this
    integer(4), value :: j_maxLevel
    integer(4), value :: j_demoLevel
    integer(4) :: jresult
        jresult = j_demoLevel
        return
  end function
end module LicenseLevelUtil_m

