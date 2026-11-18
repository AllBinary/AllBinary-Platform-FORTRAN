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
! package org.allbinary.game.collision
module CollidableHelperFactory_m
  use JR_m
  use Features_m
  use GameFeatureFactory_m
  use AllBinaryLayer_m
  use SourceCollisionHelper_m
  use CollisionHelper_m
  implicit none

  type, extends(JObject) :: CollidableHelperFactory
  end type


contains

  function CollidableHelperFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableHelperFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableHelperFactory)
      jresult => object
    end select
  end function

  function CollidableHelperFactory_jnew_0() result(this)
    class(CollidableHelperFactory), pointer :: this
    allocate(this)
    this%jclass = 'CollidableHelperFactory'
  end function

  recursive function CollidableHelperFactory_jm_getInstance_0() result(jresult)
    class(CollisionHelper), pointer :: jresult
    class(Features), pointer :: jtemp1
    class(GameFeatureFactory), pointer :: jtemp2
        jtemp2 => GameFeatureFactory_jm_getInstance_0()
        jtemp1 => Features_jm_getInstance_0()
        if (jtemp1%jm_isFeature_1(jtemp2%f_COLLISIONS_WITH_SOURCE)) then
            jresult => CollisionHelper_jnew_1(AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER())
            return
        else
            jresult => SourceCollisionHelper_jnew_1(AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER())
            return
        end if
  end function
end module CollidableHelperFactory_m

