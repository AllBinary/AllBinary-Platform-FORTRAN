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
! package org.allbinary.game.layer
module BasicLayerPlacement_m
  use JR_m
  use LayerPlacementType_m
  implicit none

  type, extends(JObject) :: BasicLayerPlacement
    class(LayerPlacementType), pointer :: f_layerType => null()
    integer(4) :: f_width = 0
    integer(4) :: f_height = 0
  contains
    procedure :: jm_getWidth_0 => BasicLayerPlacement_jm_getWidth_0
    procedure :: jm_getHeight_0 => BasicLayerPlacement_jm_getHeight_0
    procedure :: jm_getLayerType_0 => BasicLayerPlacement_jm_getLayerType_0
    procedure :: jm_setLayerType_1 => BasicLayerPlacement_jm_setLayerType_1
  end type


contains

  function BasicLayerPlacement_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicLayerPlacement), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicLayerPlacement)
      jresult => object
    end select
  end function

  recursive function BasicLayerPlacement_jnew_3(j_layerType, j_width, j_height) result(this)
    class(LayerPlacementType), target, optional :: j_layerType
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(BasicLayerPlacement), pointer :: this
    allocate(this)
    this%jclass = 'BasicLayerPlacement'
    
    
    
        this%f_layerType => j_layerType
        this%f_width = j_width
        this%f_height = j_height
  end function

  recursive function BasicLayerPlacement_jm_getWidth_0(this) result(jresult)
    class(BasicLayerPlacement), target :: this
    integer(4) :: jresult
        jresult = this%f_width
        return
  end function

  recursive function BasicLayerPlacement_jm_getHeight_0(this) result(jresult)
    class(BasicLayerPlacement), target :: this
    integer(4) :: jresult
        jresult = this%f_height
        return
  end function

  recursive function BasicLayerPlacement_jm_getLayerType_0(this) result(jresult)
    class(BasicLayerPlacement), target :: this
    class(LayerPlacementType), pointer :: jresult
        jresult => this%f_layerType
        return
  end function

  recursive subroutine BasicLayerPlacement_jm_setLayerType_1(this, j_layerType)
    class(BasicLayerPlacement), target :: this
    class(LayerPlacementType), target, optional :: j_layerType
        this%f_layerType => j_layerType
  end subroutine
end module BasicLayerPlacement_m

