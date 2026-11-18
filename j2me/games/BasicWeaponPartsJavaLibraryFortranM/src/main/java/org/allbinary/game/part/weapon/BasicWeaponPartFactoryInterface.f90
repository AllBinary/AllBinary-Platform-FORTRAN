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
! package org.allbinary.game.part.weapon
module BasicWeaponPartFactoryInterface_m
  use JR_m
  use BasicWeaponPart_m
  implicit none

  type, extends(JObject) :: BasicWeaponPartFactoryInterface
  contains
    procedure :: jm_getInstance_0 => BasicWeaponPartFactoryInterface_jm_getInstance_0
  end type


contains

  function BasicWeaponPartFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicWeaponPartFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicWeaponPartFactoryInterface)
      jresult => object
    end select
  end function

  function BasicWeaponPartFactoryInterface_jnew_0() result(this)
    class(BasicWeaponPartFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'BasicWeaponPartFactoryInterface'
  end function

  recursive function BasicWeaponPartFactoryInterface_jm_getInstance_0(this) result(jresult)
    class(BasicWeaponPartFactoryInterface), target :: this
    class(BasicWeaponPart), pointer :: jresult
    error stop 'AbstractMethodError: BasicWeaponPartFactoryInterface.getInstance'
  end function
end module BasicWeaponPartFactoryInterface_m

