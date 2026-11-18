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
module LicenseServerInitFileUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: LicenseServerInitFileUtil
  contains
    procedure :: jm_init_0 => LicenseServerInitFileUtil_jm_init_0
    procedure :: jm_write_0 => LicenseServerInitFileUtil_jm_write_0
  end type


contains

  function LicenseServerInitFileUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LicenseServerInitFileUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LicenseServerInitFileUtil)
      jresult => object
    end select
  end function

  function LicenseServerInitFileUtil_jnew_0() result(this)
    class(LicenseServerInitFileUtil), pointer :: this
    allocate(this)
    this%jclass = 'LicenseServerInitFileUtil'
  end function

  recursive subroutine LicenseServerInitFileUtil_jm_init_0(this)
    class(LicenseServerInitFileUtil), target :: this
    continue
  end subroutine

  recursive subroutine LicenseServerInitFileUtil_jm_write_0(this)
    class(LicenseServerInitFileUtil), target :: this
    continue
  end subroutine
end module LicenseServerInitFileUtil_m

