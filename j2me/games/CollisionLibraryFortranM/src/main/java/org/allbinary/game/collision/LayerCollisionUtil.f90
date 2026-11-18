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
module LayerCollisionUtil_m
  use JR_m
  use Features_m
  use GameFeatureFactory_m
  use OpenGLFeatureUtil_m
  use AllBinaryLayer_m
  use CollisionProcessor_m
  use Collision2DProcessor_m
  use CollisionThreedProcessor_m
  implicit none

  type, extends(JObject) :: LayerCollisionUtil
    class(CollisionProcessor), pointer :: f_collisionProcessor => null()
  contains
    procedure :: jm_isCollision_2 => LayerCollisionUtil_jm_isCollision_2
  end type

  class(LayerCollisionUtil), pointer, save :: LayerCollisionUtil_jcell_instance => null()
  logical, save :: LayerCollisionUtil_jset_instance = .false.

contains

  function LayerCollisionUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerCollisionUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerCollisionUtil)
      jresult => object
    end select
  end function

  function LayerCollisionUtil_jstatic_instance() result(jresult)
    class(LayerCollisionUtil), pointer :: jresult
    if (.not. LayerCollisionUtil_jset_instance) then
      LayerCollisionUtil_jset_instance = .true.
      LayerCollisionUtil_jcell_instance => LayerCollisionUtil_jnew_0()
    end if
    jresult => LayerCollisionUtil_jcell_instance
  end function

  subroutine LayerCollisionUtil_jsetstatic_instance(jvalue)
    class(LayerCollisionUtil), target, optional :: jvalue
    LayerCollisionUtil_jset_instance = .true.
    if (present(jvalue)) then
      LayerCollisionUtil_jcell_instance => jvalue
    else
      LayerCollisionUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function LayerCollisionUtil_jnew_0() result(this)
    class(LayerCollisionUtil), pointer :: this
    class(Features), pointer :: j_features
    class(GameFeatureFactory), pointer :: j_gameFeatureFactory
    class(OpenGLFeatureUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'LayerCollisionUtil'
    
        j_features => Features_jm_getInstance_0()
        j_gameFeatureFactory => GameFeatureFactory_jm_getInstance_0()
        jtemp1 => OpenGLFeatureUtil_jm_getInstance_0()
        if ((jtemp1%jm_isAnyThreed_0() .and. (.not. j_features%jm_isFeature_1(j_gameFeatureFactory%f_COLLISIONS_FORCED_TWO_DIMENSIONAL)))) then
            this%f_collisionProcessor => CollisionThreedProcessor_jnew_0()
        else
            this%f_collisionProcessor => Collision2DProcessor_jnew_0()
        end if
  end function

  recursive function LayerCollisionUtil_jm_getInstance_0() result(jresult)
    class(LayerCollisionUtil), pointer :: jresult
        jresult => LayerCollisionUtil_jstatic_instance()
        return
  end function

  recursive function LayerCollisionUtil_jm_isCollision_2(this, j_myLayer, j_myLayer2) result(jresult)
    class(LayerCollisionUtil), target :: this
    class(AllBinaryLayer), target, optional :: j_myLayer
    class(AllBinaryLayer), target, optional :: j_myLayer2
    logical :: jresult
        jresult = this%f_collisionProcessor%jm_isCollision_2(j_myLayer, j_myLayer2)
        return
  end function
end module LayerCollisionUtil_m

