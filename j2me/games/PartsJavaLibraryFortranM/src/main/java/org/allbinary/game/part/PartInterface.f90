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
! package org.allbinary.game.part
module PartInterface_m
  use JR_m
  use AnimationInterfaceCompositeInterface_m
  use PaintableInterface_m
  use Animation_m
  implicit none

  type, extends(PaintableInterface) :: PartInterface
  end type


contains

  function PartInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PartInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PartInterface)
      jresult => object
    end select
  end function

  function PartInterface_jnew_0() result(this)
    class(PartInterface), pointer :: this
    allocate(this)
    this%jclass = 'PartInterface'
  end function
end module PartInterface_m

