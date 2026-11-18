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
! package org.allbinary.business.advertisement
module GameAdStateFactoryInterface_m
  use JR_m
  use SoftwareInformation_m
  use GameAdStateBase_m
  implicit none

  type, extends(JObject) :: GameAdStateFactoryInterface
  contains
    procedure :: jm_getInstanceForApp_1 => GameAdStateFactoryInterface_jm_getInstanceForApp_1
  end type


contains

  function GameAdStateFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameAdStateFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameAdStateFactoryInterface)
      jresult => object
    end select
  end function

  function GameAdStateFactoryInterface_jnew_0() result(this)
    class(GameAdStateFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'GameAdStateFactoryInterface'
  end function

  recursive function GameAdStateFactoryInterface_jm_getInstanceForApp_1(this, j_softwareInformation) result(jresult)
    class(GameAdStateFactoryInterface), target :: this
    class(SoftwareInformation), target, optional :: j_softwareInformation
    class(GameAdStateBase), pointer :: jresult
    error stop 'AbstractMethodError: GameAdStateFactoryInterface.getInstanceForApp'
  end function
end module GameAdStateFactoryInterface_m

