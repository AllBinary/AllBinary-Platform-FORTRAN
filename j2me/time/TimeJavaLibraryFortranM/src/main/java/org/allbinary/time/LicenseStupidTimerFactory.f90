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
! package org.allbinary.time
module LicenseStupidTimerFactory_m
  use JR_m
  use StupidTimer_m
  implicit none

  type, extends(JObject) :: LicenseStupidTimerFactory
  end type

  class(StupidTimer), pointer, save :: LicenseStupidTimerFactory_jcell_instance => null()
  logical, save :: LicenseStupidTimerFactory_jset_instance = .false.

contains

  function LicenseStupidTimerFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LicenseStupidTimerFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LicenseStupidTimerFactory)
      jresult => object
    end select
  end function

  function LicenseStupidTimerFactory_jstatic_instance() result(jresult)
    class(StupidTimer), pointer :: jresult
    if (.not. LicenseStupidTimerFactory_jset_instance) then
      LicenseStupidTimerFactory_jset_instance = .true.
      LicenseStupidTimerFactory_jcell_instance => StupidTimer_jnew_0()
    end if
    jresult => LicenseStupidTimerFactory_jcell_instance
  end function

  subroutine LicenseStupidTimerFactory_jsetstatic_instance(jvalue)
    class(StupidTimer), target, optional :: jvalue
    LicenseStupidTimerFactory_jset_instance = .true.
    if (present(jvalue)) then
      LicenseStupidTimerFactory_jcell_instance => jvalue
    else
      LicenseStupidTimerFactory_jcell_instance => null()
    end if
  end subroutine

  function LicenseStupidTimerFactory_jnew_0() result(this)
    class(LicenseStupidTimerFactory), pointer :: this
    allocate(this)
    this%jclass = 'LicenseStupidTimerFactory'
  end function

  recursive function LicenseStupidTimerFactory_jm_getInstance_0() result(jresult)
    class(StupidTimer), pointer :: jresult
        jresult => LicenseStupidTimerFactory_jstatic_instance()
        return
  end function
end module LicenseStupidTimerFactory_m

