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
! package org.allbinary.game.tick
module TickableInterface_m
  use JR_m
  use AllBinaryLayerManager_m
  use NamedInterface_m
  implicit none

  type, extends(NamedInterface) :: TickableInterface
  contains
    procedure :: jm_processTick_1 => TickableInterface_jm_processTick_1
  end type


contains

  function TickableInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TickableInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TickableInterface)
      jresult => object
    end select
  end function

  function TickableInterface_jnew_0() result(this)
    class(TickableInterface), pointer :: this
    allocate(this)
    this%jclass = 'TickableInterface'
  end function

  recursive subroutine TickableInterface_jm_processTick_1(this, j_allBinaryLayerManager)
    class(TickableInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    error stop 'AbstractMethodError: TickableInterface.processTick'
  end subroutine
end module TickableInterface_m

