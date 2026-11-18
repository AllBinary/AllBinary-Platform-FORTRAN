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
module LicenseLoadingTypeFactory_m
  use JR_m
  use LicenseLoadingType_m
  implicit none

  type, extends(JObject) :: LicenseLoadingTypeFactory
    class(LicenseLoadingType), pointer :: f_INITIAL_LOADING => null()
    class(LicenseLoadingType), pointer :: f_GAME_START => null()
    class(LicenseLoadingType), pointer :: f_LOGIN => null()
    class(LicenseLoadingType), pointer :: f_OTHER => null()
  end type

  class(LicenseLoadingTypeFactory), pointer, save :: LicenseLoadingTypeFactory_jcell_instance => null()
  logical, save :: LicenseLoadingTypeFactory_jset_instance = .false.

contains

  function LicenseLoadingTypeFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LicenseLoadingTypeFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LicenseLoadingTypeFactory)
      jresult => object
    end select
  end function

  function LicenseLoadingTypeFactory_jstatic_instance() result(jresult)
    class(LicenseLoadingTypeFactory), pointer :: jresult
    if (.not. LicenseLoadingTypeFactory_jset_instance) then
      LicenseLoadingTypeFactory_jset_instance = .true.
      LicenseLoadingTypeFactory_jcell_instance => LicenseLoadingTypeFactory_jnew_0()
    end if
    jresult => LicenseLoadingTypeFactory_jcell_instance
  end function

  subroutine LicenseLoadingTypeFactory_jsetstatic_instance(jvalue)
    class(LicenseLoadingTypeFactory), target, optional :: jvalue
    LicenseLoadingTypeFactory_jset_instance = .true.
    if (present(jvalue)) then
      LicenseLoadingTypeFactory_jcell_instance => jvalue
    else
      LicenseLoadingTypeFactory_jcell_instance => null()
    end if
  end subroutine

  function LicenseLoadingTypeFactory_jnew_0() result(this)
    class(LicenseLoadingTypeFactory), pointer :: this
    allocate(this)
    this%jclass = 'LicenseLoadingTypeFactory'
    this%f_INITIAL_LOADING => LicenseLoadingType_jnew_1('Initial Loading')
    this%f_GAME_START => LicenseLoadingType_jnew_1('Game Start')
    this%f_LOGIN => LicenseLoadingType_jnew_1('Login')
    this%f_OTHER => LicenseLoadingType_jnew_1('Other/Usually The First Non Demo Level')
  end function

  recursive function LicenseLoadingTypeFactory_jm_getIntance_0() result(jresult)
    class(LicenseLoadingTypeFactory), pointer :: jresult
        jresult => LicenseLoadingTypeFactory_jstatic_instance()
        return
  end function
end module LicenseLoadingTypeFactory_m

