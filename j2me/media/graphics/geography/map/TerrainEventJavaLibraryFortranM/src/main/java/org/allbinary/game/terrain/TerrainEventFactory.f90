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
! package org.allbinary.game.terrain
module TerrainEventFactory_m
  use JR_m
  use NullUtil_m
  use AllBinaryEventObject_m
  use AllBinaryEventObjectFactoryInterface_m
  use TerrainEvent_m
  implicit none

  type, extends(AllBinaryEventObjectFactoryInterface) :: TerrainEventFactory
  contains
    procedure :: jm_getInstance_0 => TerrainEventFactory_jm_getInstance_0
  end type


contains

  function TerrainEventFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TerrainEventFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TerrainEventFactory)
      jresult => object
    end select
  end function

  recursive function TerrainEventFactory_jnew_0() result(this)
    class(TerrainEventFactory), pointer :: this
    allocate(this)
    this%jclass = 'TerrainEventFactory'
        continue
  end function

  recursive function TerrainEventFactory_jm_getInstance_0(this) result(jresult)
    class(TerrainEventFactory), target :: this
    class(AllBinaryEventObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
        jtemp1 => NullUtil_jm_getInstance_0()
        jresult => TerrainEvent_jnew_1(jtemp1%f_NULL_OBJECT)
        return
  end function
end module TerrainEventFactory_m

