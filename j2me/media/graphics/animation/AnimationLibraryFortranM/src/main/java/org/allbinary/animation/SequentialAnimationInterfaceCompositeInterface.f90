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
! package org.allbinary.animation
module SequentialAnimationInterfaceCompositeInterface_m
  use JR_m
  use IndexedAnimationInterfaceCompositeInterface_m
  implicit none

  type, extends(IndexedAnimationInterfaceCompositeInterface) :: SequentialAnimationInterfaceCompositeInterface
  end type


contains

  function SequentialAnimationInterfaceCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SequentialAnimationInterfaceCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SequentialAnimationInterfaceCompositeInterface)
      jresult => object
    end select
  end function

  function SequentialAnimationInterfaceCompositeInterface_jnew_0() result(this)
    class(SequentialAnimationInterfaceCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'SequentialAnimationInterfaceCompositeInterface'
  end function
end module SequentialAnimationInterfaceCompositeInterface_m

