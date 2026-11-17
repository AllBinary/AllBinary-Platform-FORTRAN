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
module BasicColorCompositeSetterInterface_m
  use JR_m
  use BasicColor_m
  implicit none

  type, extends(JObject) :: BasicColorCompositeSetterInterface
  contains
    procedure :: jm_setBasicColorP_1 => BasicColorCompositeSetterInterface_jm_setBasicColorP_1
  end type


contains

  function BasicColorCompositeSetterInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicColorCompositeSetterInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicColorCompositeSetterInterface)
      jresult => object
    end select
  end function

  function BasicColorCompositeSetterInterface_jnew_0() result(this)
    class(BasicColorCompositeSetterInterface), pointer :: this
    allocate(this)
    this%jclass = 'BasicColorCompositeSetterInterface'
  end function

  recursive subroutine BasicColorCompositeSetterInterface_jm_setBasicColorP_1(this, j_basicColor)
    class(BasicColorCompositeSetterInterface), target :: this
    class(BasicColor), target, optional :: j_basicColor
    error stop 'AbstractMethodError: BasicColorCompositeSetterInterface.setBasicColorP'
  end subroutine
end module BasicColorCompositeSetterInterface_m

