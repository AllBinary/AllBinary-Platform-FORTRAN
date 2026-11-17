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
module ColorChangeEvent_m
  use JR_m
  use AllBinaryEventObject_m
  use BasicColorFactory_m
  use BasicColor_m
  implicit none

  type, extends(AllBinaryEventObject) :: ColorChangeEvent
    class(BasicColor), pointer :: f_basicColor => null()
  contains
    procedure :: jm_setBasicColorP_1 => ColorChangeEvent_jm_setBasicColorP_1
    procedure :: jm_getBasicColorP_0 => ColorChangeEvent_jm_getBasicColorP_0
  end type


contains

  function ColorChangeEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ColorChangeEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ColorChangeEvent)
      jresult => object
    end select
  end function

  recursive function ColorChangeEvent_jnew_1(j_anyType) result(this)
    class(JObject), target, optional :: j_anyType
    class(ColorChangeEvent), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'ColorChangeEvent'
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_basicColor => jtemp1%f_WHITE
        continue ! super()
  end function

  recursive subroutine ColorChangeEvent_jm_setBasicColorP_1(this, j_basicColor)
    class(ColorChangeEvent), target :: this
    class(BasicColor), target, optional :: j_basicColor
        this%f_basicColor => j_basicColor
  end subroutine

  recursive function ColorChangeEvent_jm_getBasicColorP_0(this) result(jresult)
    class(ColorChangeEvent), target :: this
    class(BasicColor), pointer :: jresult
        jresult => this%f_basicColor
        return
  end function
end module ColorChangeEvent_m

