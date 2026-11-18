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
! package org.allbinary.logic.system.security.licensing
module LicenseStrings_m
  use JR_m
  implicit none

  type, extends(JObject) :: LicenseStrings
    character(len=:), allocatable :: f_LOCKED
  end type

  class(LicenseStrings), pointer, save :: LicenseStrings_jcell_instance => null()
  logical, save :: LicenseStrings_jset_instance = .false.

contains

  function LicenseStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LicenseStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LicenseStrings)
      jresult => object
    end select
  end function

  function LicenseStrings_jstatic_instance() result(jresult)
    class(LicenseStrings), pointer :: jresult
    if (.not. LicenseStrings_jset_instance) then
      LicenseStrings_jset_instance = .true.
      LicenseStrings_jcell_instance => LicenseStrings_jnew_0()
    end if
    jresult => LicenseStrings_jcell_instance
  end function

  subroutine LicenseStrings_jsetstatic_instance(jvalue)
    class(LicenseStrings), target, optional :: jvalue
    LicenseStrings_jset_instance = .true.
    if (present(jvalue)) then
      LicenseStrings_jcell_instance => jvalue
    else
      LicenseStrings_jcell_instance => null()
    end if
  end subroutine

  function LicenseStrings_jnew_0() result(this)
    class(LicenseStrings), pointer :: this
    allocate(this)
    this%jclass = 'LicenseStrings'
    this%f_LOCKED = ''
    this%f_LOCKED = 'Demo Locked Feature'
  end function

  recursive function LicenseStrings_jm_getInstance_0() result(jresult)
    class(LicenseStrings), pointer :: jresult
        jresult => LicenseStrings_jstatic_instance()
        return
  end function
end module LicenseStrings_m

