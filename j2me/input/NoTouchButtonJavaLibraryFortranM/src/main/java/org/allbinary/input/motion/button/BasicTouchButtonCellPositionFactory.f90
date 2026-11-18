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
module BasicTouchButtonCellPositionFactory_m
  use JR_m
  implicit none

  type, extends(JObject) :: BasicTouchButtonCellPositionFactory
  end type


contains

  function BasicTouchButtonCellPositionFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicTouchButtonCellPositionFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicTouchButtonCellPositionFactory)
      jresult => object
    end select
  end function

  recursive function BasicTouchButtonCellPositionFactory_jnew_0() result(this)
    class(BasicTouchButtonCellPositionFactory), pointer :: this
    allocate(this)
    this%jclass = 'BasicTouchButtonCellPositionFactory'
        continue
  end function

  recursive subroutine BasicTouchButtonCellPositionFactory_jm_init_0()
    continue
  end subroutine
end module BasicTouchButtonCellPositionFactory_m

