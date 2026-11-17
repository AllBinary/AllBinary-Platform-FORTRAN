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
module ColorChangeListener_m
  use JR_m
  use EventListenerInterface_m
  implicit none

  type, extends(EventListenerInterface) :: ColorChangeListener
  end type


contains

  function ColorChangeListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ColorChangeListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ColorChangeListener)
      jresult => object
    end select
  end function

  function ColorChangeListener_jnew_0() result(this)
    class(ColorChangeListener), pointer :: this
    allocate(this)
    this%jclass = 'ColorChangeListener'
  end function
end module ColorChangeListener_m

