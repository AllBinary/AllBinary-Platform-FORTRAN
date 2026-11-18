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
! package org.allbinary.game.ag.layer.pickup.points
module PointsLayerFactory_m
  use JR_m
  use AllBinaryLayer_m
  use AllBinaryLayerFactoryInterface_m
  use PointsLayer_m
  implicit none

  type, extends(AllBinaryLayerFactoryInterface) :: PointsLayerFactory
    integer(4) :: f_points = 0
  contains
    procedure :: jm_getInstance_0 => PointsLayerFactory_jm_getInstance_0
  end type


contains

  function PointsLayerFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PointsLayerFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PointsLayerFactory)
      jresult => object
    end select
  end function

  recursive function PointsLayerFactory_jnew_1(j_points) result(this)
    integer(4), value :: j_points
    class(PointsLayerFactory), pointer :: this
    allocate(this)
    this%jclass = 'PointsLayerFactory'
    
        this%f_points = j_points
  end function

  recursive function PointsLayerFactory_jm_getInstance_0(this) result(jresult)
    class(PointsLayerFactory), target :: this
    class(AllBinaryLayer), pointer :: jresult
        jresult => PointsLayer_jnew_1(this%f_points)
        return
  end function
end module PointsLayerFactory_m

