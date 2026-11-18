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
module LicenseLoadingType_m
  use JR_m
  implicit none

  type, extends(JObject) :: LicenseLoadingType
  end type


contains

  function LicenseLoadingType_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LicenseLoadingType), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LicenseLoadingType)
      jresult => object
    end select
  end function

  recursive function LicenseLoadingType_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(LicenseLoadingType), pointer :: this
    allocate(this)
    this%jclass = 'LicenseLoadingType'
        continue
  end function
end module LicenseLoadingType_m

