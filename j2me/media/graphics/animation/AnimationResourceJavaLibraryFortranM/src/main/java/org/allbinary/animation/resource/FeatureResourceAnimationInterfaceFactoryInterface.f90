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
! package org.allbinary.animation.resource
module FeatureResourceAnimationInterfaceFactoryInterface_m
  use JR_m
  use GameFeatureControlledInterface_m
  use RectangleResourceFactoryInterface_m
  use ABHashtable_m
  use Rectangle_m
  use ResourceAnimationInterfaceFactoryInterface_m
  implicit none

  type, extends(ResourceAnimationInterfaceFactoryInterface) :: FeatureResourceAnimationInterfaceFactoryInterface
  contains
    procedure :: jm_getHashtable_0 => FeatureResourceAnimationInterfaceFactoryInterface_jm_getHashtable_0
  end type


contains

  function FeatureResourceAnimationInterfaceFactoryInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FeatureResourceAnimationInterfaceFactoryInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FeatureResourceAnimationInterfaceFactoryInterface)
      jresult => object
    end select
  end function

  function FeatureResourceAnimationInterfaceFactoryInterface_jnew_0() result(this)
    class(FeatureResourceAnimationInterfaceFactoryInterface), pointer :: this
    allocate(this)
    this%jclass = 'FeatureResourceAnimationInterfaceFactoryInterface'
  end function

  recursive function FeatureResourceAnimationInterfaceFactoryInterface_jm_getHashtable_0(this) result(jresult)
    class(FeatureResourceAnimationInterfaceFactoryInterface), target :: this
    class(ABHashtable), pointer :: jresult
    error stop 'AbstractMethodError: FeatureResourceAnimationInterfaceFactoryInterface.getHashtable'
  end function
end module FeatureResourceAnimationInterfaceFactoryInterface_m

