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
module MiddleRelativeLayerRelationship_m
  use JR_m
  use PointFactory_m
  use AllBinaryLayer_m
  use BasicArrayListUtil_m
  use RelativeLayerRelationship_m
  implicit none

  type, extends(RelativeLayerRelationship) :: MiddleRelativeLayerRelationship
  end type


contains

  function MiddleRelativeLayerRelationship_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MiddleRelativeLayerRelationship), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MiddleRelativeLayerRelationship)
      jresult => object
    end select
  end function

  recursive function MiddleRelativeLayerRelationship_jnew_1(j_layer) result(this)
    class(AllBinaryLayer), target, optional :: j_layer
    class(MiddleRelativeLayerRelationship), pointer :: this
    class(PointFactory), pointer :: jtemp1
    class(BasicArrayListUtil), pointer :: jtemp2
    allocate(this)
    this%jclass = 'MiddleRelativeLayerRelationship'
        jtemp1 => PointFactory_jm_getInstance_0()
        jtemp2 => BasicArrayListUtil_jm_getInstance_0()
        continue ! super()
  end function
end module MiddleRelativeLayerRelationship_m

