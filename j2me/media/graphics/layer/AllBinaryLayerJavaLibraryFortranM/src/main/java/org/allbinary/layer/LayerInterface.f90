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
! package org.allbinary.layer
module LayerInterface_m
  use JR_m
  use GroupInterfaceCompositeInterface_m
  use PaintableInterface_m
  use Graphics_m
  use Group_m
  use NamedInterface_m
  use PositionInterface_m
  implicit none

  type, extends(NamedInterface) :: LayerInterface
  contains
    procedure :: jm_getHeight_0 => LayerInterface_jm_getHeight_0
    procedure :: jm_getWidth_0 => LayerInterface_jm_getWidth_0
    procedure :: jm_getHalfHeight_0 => LayerInterface_jm_getHalfHeight_0
    procedure :: jm_getHalfWidth_0 => LayerInterface_jm_getHalfWidth_0
    procedure :: jm_getXP_0 => LayerInterface_jm_getXP_0
    procedure :: jm_getYP_0 => LayerInterface_jm_getYP_0
    procedure :: jm_getZP_0 => LayerInterface_jm_getZP_0
    procedure :: jm_getX2_0 => LayerInterface_jm_getX2_0
    procedure :: jm_getY2_0 => LayerInterface_jm_getY2_0
    procedure :: jm_getZ2_0 => LayerInterface_jm_getZ2_0
    procedure :: jm_isVisible_0 => LayerInterface_jm_isVisible_0
    procedure :: jm_moveDXYZ_3 => LayerInterface_jm_moveDXYZ_3
    procedure :: jm_setVisible_1 => LayerInterface_jm_setVisible_1
    procedure :: jm_implmentsTickableInterface_0 => LayerInterface_jm_implmentsTickableInterface_0
    procedure :: jm_implmentsCollidableInterface_0 => LayerInterface_jm_implmentsCollidableInterface_0
    procedure :: jm_implmentsGameInputInterface_0 => LayerInterface_jm_implmentsGameInputInterface_0
    procedure :: jm_implmentsArtificialIntelligenceCompositeInterface_0 => LayerInterface_jm_implmentsArtificialIntelligenceCompositeInterface_0
    procedure :: jm_getType_0 => LayerInterface_jm_getType_0
  end type


contains

  function LayerInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerInterface)
      jresult => object
    end select
  end function

  function LayerInterface_jnew_0() result(this)
    class(LayerInterface), pointer :: this
    allocate(this)
    this%jclass = 'LayerInterface'
  end function

  recursive function LayerInterface_jm_getHeight_0(this) result(jresult)
    class(LayerInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: LayerInterface.getHeight'
  end function

  recursive function LayerInterface_jm_getWidth_0(this) result(jresult)
    class(LayerInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: LayerInterface.getWidth'
  end function

  recursive function LayerInterface_jm_getHalfHeight_0(this) result(jresult)
    class(LayerInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: LayerInterface.getHalfHeight'
  end function

  recursive function LayerInterface_jm_getHalfWidth_0(this) result(jresult)
    class(LayerInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: LayerInterface.getHalfWidth'
  end function

  recursive function LayerInterface_jm_getXP_0(this) result(jresult)
    class(LayerInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: LayerInterface.getXP'
  end function

  recursive function LayerInterface_jm_getYP_0(this) result(jresult)
    class(LayerInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: LayerInterface.getYP'
  end function

  recursive function LayerInterface_jm_getZP_0(this) result(jresult)
    class(LayerInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: LayerInterface.getZP'
  end function

  recursive function LayerInterface_jm_getX2_0(this) result(jresult)
    class(LayerInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: LayerInterface.getX2'
  end function

  recursive function LayerInterface_jm_getY2_0(this) result(jresult)
    class(LayerInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: LayerInterface.getY2'
  end function

  recursive function LayerInterface_jm_getZ2_0(this) result(jresult)
    class(LayerInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: LayerInterface.getZ2'
  end function

  recursive function LayerInterface_jm_isVisible_0(this) result(jresult)
    class(LayerInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: LayerInterface.isVisible'
  end function

  recursive subroutine LayerInterface_jm_moveDXYZ_3(this, j_dx, j_dy, j_dz)
    class(LayerInterface), target :: this
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4), value :: j_dz
    error stop 'AbstractMethodError: LayerInterface.moveDXYZ'
  end subroutine

  recursive subroutine LayerInterface_jm_setVisible_1(this, j_visible)
    class(LayerInterface), target :: this
    logical, value :: j_visible
    error stop 'AbstractMethodError: LayerInterface.setVisible'
  end subroutine

  recursive function LayerInterface_jm_implmentsTickableInterface_0(this) result(jresult)
    class(LayerInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: LayerInterface.implmentsTickableInterface'
  end function

  recursive function LayerInterface_jm_implmentsCollidableInterface_0(this) result(jresult)
    class(LayerInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: LayerInterface.implmentsCollidableInterface'
  end function

  recursive function LayerInterface_jm_implmentsGameInputInterface_0(this) result(jresult)
    class(LayerInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: LayerInterface.implmentsGameInputInterface'
  end function

  recursive function LayerInterface_jm_implmentsArtificialIntelligenceCompositeInterface_0(this) result(jresult)
    class(LayerInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: LayerInterface.implmentsArtificialIntelligenceCompositeInterface'
  end function

  recursive function LayerInterface_jm_getType_0(this) result(jresult)
    class(LayerInterface), target :: this
    integer(4) :: jresult
    error stop 'AbstractMethodError: LayerInterface.getType'
  end function
end module LayerInterface_m

