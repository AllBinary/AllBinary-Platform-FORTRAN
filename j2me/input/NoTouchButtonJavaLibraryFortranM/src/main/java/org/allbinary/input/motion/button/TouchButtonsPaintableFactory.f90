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
! package org.allbinary.input.motion.button
module TouchButtonsPaintableFactory_m
  use JR_m
  use BasicColor_m
  use Paintable_m
  implicit none

  type, extends(JObject) :: TouchButtonsPaintableFactory
  end type


contains

  function TouchButtonsPaintableFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonsPaintableFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonsPaintableFactory)
      jresult => object
    end select
  end function

  function TouchButtonsPaintableFactory_jnew_0() result(this)
    class(TouchButtonsPaintableFactory), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonsPaintableFactory'
  end function

  recursive function TouchButtonsPaintableFactory_jm_getInstance_1(j_basicColor) result(jresult)
    class(BasicColor), target, optional :: j_basicColor
    class(Paintable), pointer :: jresult
        jresult => Paintable_jnew_0()
        return
  end function
end module TouchButtonsPaintableFactory_m

