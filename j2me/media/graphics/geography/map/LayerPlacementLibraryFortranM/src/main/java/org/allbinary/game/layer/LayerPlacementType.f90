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
module LayerPlacementType_m
  use JR_m
  implicit none

  type, extends(JObject) :: LayerPlacementType
    integer(4) :: f_type = 0
  contains
    procedure :: jm_getType_0 => LayerPlacementType_jm_getType_0
    procedure :: jm_setType_1 => LayerPlacementType_jm_setType_1
  end type


contains

  function LayerPlacementType_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerPlacementType), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerPlacementType)
      jresult => object
    end select
  end function

  recursive function LayerPlacementType_jnew_1(j_type) result(this)
    integer(4), value :: j_type
    class(LayerPlacementType), pointer :: this
    allocate(this)
    this%jclass = 'LayerPlacementType'
    
        this%f_type = j_type
  end function

  recursive function LayerPlacementType_jm_getType_0(this) result(jresult)
    class(LayerPlacementType), target :: this
    integer(4) :: jresult
        jresult = this%f_type
        return
  end function

  recursive subroutine LayerPlacementType_jm_setType_1(this, j_type)
    class(LayerPlacementType), target :: this
    integer(4), value :: j_type
        this%f_type = j_type
  end subroutine
end module LayerPlacementType_m

