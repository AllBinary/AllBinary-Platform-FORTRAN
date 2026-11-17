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
module ColorCompositeInterface_m
  use JR_m
  use BasicColorCompositeSetterInterface_m
  use BasicColor_m
  implicit none

  type, extends(BasicColorCompositeSetterInterface) :: ColorCompositeInterface
  contains
    procedure :: jm_getBasicColorP_0 => ColorCompositeInterface_jm_getBasicColorP_0
  end type


contains

  function ColorCompositeInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ColorCompositeInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ColorCompositeInterface)
      jresult => object
    end select
  end function

  function ColorCompositeInterface_jnew_0() result(this)
    class(ColorCompositeInterface), pointer :: this
    allocate(this)
    this%jclass = 'ColorCompositeInterface'
  end function

  recursive function ColorCompositeInterface_jm_getBasicColorP_0(this) result(jresult)
    class(ColorCompositeInterface), target :: this
    class(BasicColor), pointer :: jresult
    error stop 'AbstractMethodError: ColorCompositeInterface.getBasicColorP'
  end function
end module ColorCompositeInterface_m

