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
! package org.allbinary.layer.relationship
module RelativeLayerRelationship_m
  use JR_m
  use GPoint_m
  use RelativeRelationship_m
  use AllBinaryLayer_m
  use BasicArrayList_m
  implicit none

  type, extends(RelativeRelationship) :: RelativeLayerRelationship
    class(AllBinaryLayer), pointer :: f_layer => null()
  contains
    procedure :: jm_getX_0 => RelativeLayerRelationship_jm_getX_0
    procedure :: jm_getY_0 => RelativeLayerRelationship_jm_getY_0
    procedure :: jm_getZ_0 => RelativeLayerRelationship_jm_getZ_0
  end type


contains

  function RelativeLayerRelationship_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RelativeLayerRelationship), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RelativeLayerRelationship)
      jresult => object
    end select
  end function

  recursive function RelativeLayerRelationship_jnew_3(j_layer, j_point, j_typesAllowedList) result(this)
    class(AllBinaryLayer), target, optional :: j_layer
    class(GPoint), target, optional :: j_point
    class(BasicArrayList), target, optional :: j_typesAllowedList
    class(RelativeLayerRelationship), pointer :: this
    allocate(this)
    this%jclass = 'RelativeLayerRelationship'
    this%f_layer => AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER()
        continue ! super()
        this%f_layer => j_layer
  end function

  recursive function RelativeLayerRelationship_jm_getX_0(this) result(jresult)
    class(RelativeLayerRelationship), target :: this
    integer(4) :: jresult
        jresult = (this%f_layer%jm_getXP_0() + this%RelativeRelationship%jm_getX_0())
        return
  end function

  recursive function RelativeLayerRelationship_jm_getY_0(this) result(jresult)
    class(RelativeLayerRelationship), target :: this
    integer(4) :: jresult
        jresult = (this%f_layer%jm_getYP_0() + this%RelativeRelationship%jm_getY_0())
        return
  end function

  recursive function RelativeLayerRelationship_jm_getZ_0(this) result(jresult)
    class(RelativeLayerRelationship), target :: this
    integer(4) :: jresult
        jresult = (this%f_layer%jm_getZP_0() + this%RelativeRelationship%jm_getZ_0())
        return
  end function
end module RelativeLayerRelationship_m

