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
module NullDemoPaintable_m
  use JR_m
  use DemoPaintableInterface_m
  implicit none

  type, extends(DemoPaintableInterface) :: NullDemoPaintable
  contains
    procedure :: jm_showGamePaintable_0 => NullDemoPaintable_jm_showGamePaintable_0
  end type

  class(NullDemoPaintable), pointer, save :: NullDemoPaintable_jcell_NULL_DEMO_PAINTABLE => null()
  logical, save :: NullDemoPaintable_jset_NULL_DEMO_PAINTABLE = .false.

contains

  function NullDemoPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullDemoPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullDemoPaintable)
      jresult => object
    end select
  end function

  function NullDemoPaintable_jstatic_NULL_DEMO_PAINTABLE() result(jresult)
    class(NullDemoPaintable), pointer :: jresult
    if (.not. NullDemoPaintable_jset_NULL_DEMO_PAINTABLE) then
      NullDemoPaintable_jset_NULL_DEMO_PAINTABLE = .true.
      NullDemoPaintable_jcell_NULL_DEMO_PAINTABLE => NullDemoPaintable_jnew_0()
    end if
    jresult => NullDemoPaintable_jcell_NULL_DEMO_PAINTABLE
  end function

  subroutine NullDemoPaintable_jsetstatic_NULL_DEMO_PAINTABLE(jvalue)
    class(NullDemoPaintable), target, optional :: jvalue
    NullDemoPaintable_jset_NULL_DEMO_PAINTABLE = .true.
    if (present(jvalue)) then
      NullDemoPaintable_jcell_NULL_DEMO_PAINTABLE => jvalue
    else
      NullDemoPaintable_jcell_NULL_DEMO_PAINTABLE => null()
    end if
  end subroutine

  function NullDemoPaintable_jnew_0() result(this)
    class(NullDemoPaintable), pointer :: this
    allocate(this)
    this%jclass = 'NullDemoPaintable'
  end function

  recursive subroutine NullDemoPaintable_jm_showGamePaintable_0(this)
    class(NullDemoPaintable), target :: this
    continue
  end subroutine
end module NullDemoPaintable_m

