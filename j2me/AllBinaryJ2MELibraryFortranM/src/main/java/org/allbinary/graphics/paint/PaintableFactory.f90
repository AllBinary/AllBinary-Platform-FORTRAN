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
module PaintableFactory_m
  use JR_m
  use NullPaintable_m
  use Paintable_m
  implicit none

  type, extends(JObject) :: PaintableFactory
  contains
    procedure :: jm_getInstance_0 => PaintableFactory_jm_getInstance_0
  end type


contains

  function PaintableFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PaintableFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PaintableFactory)
      jresult => object
    end select
  end function

  function PaintableFactory_jnew_0() result(this)
    class(PaintableFactory), pointer :: this
    allocate(this)
    this%jclass = 'PaintableFactory'
  end function

  recursive function PaintableFactory_jm_getInstance_0(this) result(jresult)
    class(PaintableFactory), target :: this
    class(Paintable), pointer :: jresult
        jresult => NullPaintable_jm_getInstance_0()
        return
  end function
end module PaintableFactory_m

