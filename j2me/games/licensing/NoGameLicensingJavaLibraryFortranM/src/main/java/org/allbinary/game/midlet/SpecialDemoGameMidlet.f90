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
module SpecialDemoGameMidlet_m
  use JR_m
  use ClientInformationFactory_m
  use LicenseServerInitFileUtil_m
  use DemoGameMidlet_m
  use LicenseLoadingType_m
  use LicensedDemoSetupFactory_m
  use LicenseCheckRunnableFactory_m
  implicit none

  type, extends(DemoGameMidlet) :: SpecialDemoGameMidlet
  contains
    procedure :: jm_initView_0 => SpecialDemoGameMidlet_jm_initView_0
    procedure :: jm_preInit_0 => SpecialDemoGameMidlet_jm_preInit_0
  end type


contains

  function SpecialDemoGameMidlet_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpecialDemoGameMidlet), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpecialDemoGameMidlet)
      jresult => object
    end select
  end function

  recursive function SpecialDemoGameMidlet_jnew_4(j_clientInformationFactory, j_licenseLoadingType, j_demoSetupFactory, j_licenseCheckRunnableFactory) result(this)
    class(ClientInformationFactory), target, optional :: j_clientInformationFactory
    class(LicenseLoadingType), target, optional :: j_licenseLoadingType
    class(LicensedDemoSetupFactory), target, optional :: j_demoSetupFactory
    class(LicenseCheckRunnableFactory), target, optional :: j_licenseCheckRunnableFactory
    class(SpecialDemoGameMidlet), pointer :: this
    allocate(this)
    this%jclass = 'SpecialDemoGameMidlet'
        continue ! super()
  end function

  recursive subroutine SpecialDemoGameMidlet_jm_initView_0(this)
    class(SpecialDemoGameMidlet), target :: this
    continue
  end subroutine

  recursive subroutine SpecialDemoGameMidlet_jm_preInit_0(this)
    class(SpecialDemoGameMidlet), target :: this
    class(LicenseServerInitFileUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => LicenseServerInitFileUtil_jnew_0()
        call jtemp1%jm_init_0()
  end subroutine
end module SpecialDemoGameMidlet_m

