! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
module LicenseCheckRunnableFactory_m
  use JR_m
  use ABRunnable_m
  use NullABRunnable_m
  use SpecialDemoGameMidlet_m
  implicit none

  type, extends(JObject) :: LicenseCheckRunnableFactory
  contains
    procedure :: jm_getInstance_1 => LicenseCheckRunnableFactory_jm_getInstance_1
  end type


contains

  function LicenseCheckRunnableFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LicenseCheckRunnableFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LicenseCheckRunnableFactory)
      jresult => object
    end select
  end function

  function LicenseCheckRunnableFactory_jnew_0() result(this)
    class(LicenseCheckRunnableFactory), pointer :: this
    allocate(this)
    this%jclass = 'LicenseCheckRunnableFactory'
  end function

  recursive function LicenseCheckRunnableFactory_jm_getInstance_1(this, j_specialDemoGameMidlet) result(jresult)
    class(LicenseCheckRunnableFactory), target :: this
    class(SpecialDemoGameMidlet), target, optional :: j_specialDemoGameMidlet
    class(ABRunnable), pointer :: jresult
        jresult => NullABRunnable_jm_getInstance_0()
        return
  end function
end module LicenseCheckRunnableFactory_m

