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
! package org.allbinary.game.displayable.canvas
module DemoPaintableInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: DemoPaintableInterface
  contains
    procedure :: jm_showGamePaintable_0 => DemoPaintableInterface_jm_showGamePaintable_0
  end type


contains

  function DemoPaintableInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoPaintableInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoPaintableInterface)
      jresult => object
    end select
  end function

  function DemoPaintableInterface_jnew_0() result(this)
    class(DemoPaintableInterface), pointer :: this
    allocate(this)
    this%jclass = 'DemoPaintableInterface'
  end function

  recursive subroutine DemoPaintableInterface_jm_showGamePaintable_0(this)
    class(DemoPaintableInterface), target :: this
    error stop 'AbstractMethodError: DemoPaintableInterface.showGamePaintable'
  end subroutine
end module DemoPaintableInterface_m

