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
module LicensedDemoSetupFactory_m
  use JR_m
  use DemoSetup_m
  implicit none

  type, extends(JObject) :: LicensedDemoSetupFactory
  contains
    procedure :: jm_getInstance_0 => LicensedDemoSetupFactory_jm_getInstance_0
  end type


contains

  function LicensedDemoSetupFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LicensedDemoSetupFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LicensedDemoSetupFactory)
      jresult => object
    end select
  end function

  function LicensedDemoSetupFactory_jnew_0() result(this)
    class(LicensedDemoSetupFactory), pointer :: this
    allocate(this)
    this%jclass = 'LicensedDemoSetupFactory'
  end function

  recursive function LicensedDemoSetupFactory_jm_getInstance_0(this) result(jresult)
    class(LicensedDemoSetupFactory), target :: this
    class(DemoSetup), pointer :: jresult
        jresult => DemoSetup_jnew_0()
        return
  end function
end module LicensedDemoSetupFactory_m

