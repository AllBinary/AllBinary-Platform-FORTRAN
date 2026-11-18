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
! package org.allbinary.graphics.paint
module InitUpdatePaintableInterface_m
  use JR_m
  use InitInterface_m
  use UpdateInterface_m
  use Graphics_m
  use PaintableInterface_m
  implicit none

  type, extends(InitInterface) :: InitUpdatePaintableInterface
  end type


contains

  function InitUpdatePaintableInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InitUpdatePaintableInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InitUpdatePaintableInterface)
      jresult => object
    end select
  end function

  function InitUpdatePaintableInterface_jnew_0() result(this)
    class(InitUpdatePaintableInterface), pointer :: this
    allocate(this)
    this%jclass = 'InitUpdatePaintableInterface'
  end function
end module InitUpdatePaintableInterface_m

