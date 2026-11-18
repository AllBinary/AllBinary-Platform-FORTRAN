! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.graphics.displayable.screen
module FullScreenPaintableFactory_m
  use JR_m
  use NullPaintable_m
  use Paintable_m
  implicit none

  type, extends(JObject) :: FullScreenPaintableFactory
    class(Paintable), pointer :: f_paintable => null()
  end type

  class(FullScreenPaintableFactory), pointer, save :: FullScreenPaintableFactory_jcell_instance => null()
  logical, save :: FullScreenPaintableFactory_jset_instance = .false.

contains

  function FullScreenPaintableFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FullScreenPaintableFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FullScreenPaintableFactory)
      jresult => object
    end select
  end function

  function FullScreenPaintableFactory_jstatic_instance() result(jresult)
    class(FullScreenPaintableFactory), pointer :: jresult
    if (.not. FullScreenPaintableFactory_jset_instance) then
      FullScreenPaintableFactory_jset_instance = .true.
      FullScreenPaintableFactory_jcell_instance => FullScreenPaintableFactory_jnew_0()
    end if
    jresult => FullScreenPaintableFactory_jcell_instance
  end function

  subroutine FullScreenPaintableFactory_jsetstatic_instance(jvalue)
    class(FullScreenPaintableFactory), target, optional :: jvalue
    FullScreenPaintableFactory_jset_instance = .true.
    if (present(jvalue)) then
      FullScreenPaintableFactory_jcell_instance => jvalue
    else
      FullScreenPaintableFactory_jcell_instance => null()
    end if
  end subroutine

  function FullScreenPaintableFactory_jnew_0() result(this)
    class(FullScreenPaintableFactory), pointer :: this
    allocate(this)
    this%jclass = 'FullScreenPaintableFactory'
    this%f_paintable => NullPaintable_jm_getInstance_0()
  end function

  recursive function FullScreenPaintableFactory_jm_getInstance_0() result(jresult)
    class(FullScreenPaintableFactory), pointer :: jresult
        jresult => FullScreenPaintableFactory_jstatic_instance()
        return
  end function
end module FullScreenPaintableFactory_m

