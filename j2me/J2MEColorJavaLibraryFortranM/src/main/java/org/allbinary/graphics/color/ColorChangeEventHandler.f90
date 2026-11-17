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
! package org.allbinary.graphics.color
module ColorChangeEventHandler_m
  use JR_m
  use BasicEventHandler_m
  implicit none

  type, extends(BasicEventHandler) :: ColorChangeEventHandler
  end type

  class(ColorChangeEventHandler), pointer, save :: ColorChangeEventHandler_jcell_eventHandler => null()
  logical, save :: ColorChangeEventHandler_jset_eventHandler = .false.

contains

  function ColorChangeEventHandler_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ColorChangeEventHandler), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ColorChangeEventHandler)
      jresult => object
    end select
  end function

  function ColorChangeEventHandler_jstatic_eventHandler() result(jresult)
    class(ColorChangeEventHandler), pointer :: jresult
    if (.not. ColorChangeEventHandler_jset_eventHandler) then
      ColorChangeEventHandler_jset_eventHandler = .true.
      ColorChangeEventHandler_jcell_eventHandler => ColorChangeEventHandler_jnew_0()
    end if
    jresult => ColorChangeEventHandler_jcell_eventHandler
  end function

  recursive function ColorChangeEventHandler_jnew_0() result(this)
    class(ColorChangeEventHandler), pointer :: this
    allocate(this)
    this%jclass = 'ColorChangeEventHandler'
        continue
  end function

  recursive function ColorChangeEventHandler_jm_getInstance_0() result(jresult)
    class(ColorChangeEventHandler), pointer :: jresult
        jresult => ColorChangeEventHandler_jstatic_eventHandler()
        return
  end function
end module ColorChangeEventHandler_m

function ColorChangeEventHandler_jnew_0_jext() result(this)
  use ColorChangeEventHandler_m, only: JObject, ColorChangeEventHandler_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ColorChangeEventHandler_jnew_0()
end function

