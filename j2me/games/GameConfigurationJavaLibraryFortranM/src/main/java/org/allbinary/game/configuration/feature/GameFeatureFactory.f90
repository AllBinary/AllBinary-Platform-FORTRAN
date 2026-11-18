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
! package org.allbinary.game.configuration.feature
module GameFeatureFactory_m
  use JR_m
  use GameFeature_m
  use Feature_m
  implicit none

  type, extends(JObject) :: GameFeatureFactory
    class(GameFeature), pointer :: f_SOUND => null()
    class(GameFeature), pointer :: f_MUSIC => null()
    class(Feature), pointer :: f_SCREEN_SHAKE => null()
    class(Feature), pointer :: f_POST_IMAGE_LOADING_MODIFICATION => null()
    class(GameFeature), pointer :: f_HEALTH_BARS => null()
    class(GameFeature), pointer :: f_DAMAGE_FLOATERS => null()
    class(GameFeature), pointer :: f_GAME_INPUT_LAYER_PROCESSOR => null()
    class(GameFeature), pointer :: f_ARTIFICIAL_INTELLEGENCE_PROCESSOR => null()
    class(GameFeature), pointer :: f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR => null()
    class(GameFeature), pointer :: f_TICKABLE_LAYER_PROCESSOR => null()
    class(GameFeature), pointer :: f_CHEATING => null()
    class(GameFeature), pointer :: f_DROPPED_ITEMS => null()
    class(GameFeature), pointer :: f_DROPPED_ITEMS_FROM_DEATH => null()
    class(GameFeature), pointer :: f_TEST_DESTROYED_LAYER_PROCESSOR => null()
    class(GameFeature), pointer :: f_COLLISIONS_WITH_SOURCE => null()
    class(GameFeature), pointer :: f_COLLISIONS_FORCED_TWO_DIMENSIONAL => null()
  end type

  class(GameFeatureFactory), pointer, save :: GameFeatureFactory_jcell_instance => null()
  logical, save :: GameFeatureFactory_jset_instance = .false.

contains

  function GameFeatureFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameFeatureFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameFeatureFactory)
      jresult => object
    end select
  end function

  function GameFeatureFactory_jstatic_instance() result(jresult)
    class(GameFeatureFactory), pointer :: jresult
    if (.not. GameFeatureFactory_jset_instance) then
      GameFeatureFactory_jset_instance = .true.
      GameFeatureFactory_jcell_instance => GameFeatureFactory_jnew_0()
    end if
    jresult => GameFeatureFactory_jcell_instance
  end function

  subroutine GameFeatureFactory_jsetstatic_instance(jvalue)
    class(GameFeatureFactory), target, optional :: jvalue
    GameFeatureFactory_jset_instance = .true.
    if (present(jvalue)) then
      GameFeatureFactory_jcell_instance => jvalue
    else
      GameFeatureFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function GameFeatureFactory_jnew_0() result(this)
    class(GameFeatureFactory), pointer :: this
    allocate(this)
    this%jclass = 'GameFeatureFactory'
    this%f_SOUND => GameFeature_jnew_1('Sound')
    this%f_MUSIC => GameFeature_jnew_1('Music')
    this%f_SCREEN_SHAKE => Feature_jnew_1('Screen Shake')
    this%f_POST_IMAGE_LOADING_MODIFICATION => Feature_jnew_1('Post Image Loading Modification (Scaling, Rotation, or Other)')
    this%f_HEALTH_BARS => GameFeature_jnew_1('Health Bars')
    this%f_DAMAGE_FLOATERS => GameFeature_jnew_1('Damage Floaters')
    this%f_GAME_INPUT_LAYER_PROCESSOR => GameFeature_jnew_1('Game Input Layer Processor')
    this%f_ARTIFICIAL_INTELLEGENCE_PROCESSOR => GameFeature_jnew_1('Artificial Intelligence Layer Processor')
    this%f_COLLIDABLE_INTERFACE_LAYER_PROCESSOR => GameFeature_jnew_1('Collidable Interface Layer Processor')
    this%f_TICKABLE_LAYER_PROCESSOR => GameFeature_jnew_1('Tickable Layer Processor')
    this%f_CHEATING => GameFeature_jnew_1('Cheating')
    this%f_DROPPED_ITEMS => GameFeature_jnew_1('Drops')
    this%f_DROPPED_ITEMS_FROM_DEATH => GameFeature_jnew_1('Drops from Dead')
    this%f_TEST_DESTROYED_LAYER_PROCESSOR => GameFeature_jnew_1('Destroyed Layer Processor')
    this%f_COLLISIONS_WITH_SOURCE => GameFeature_jnew_1('Allow Collisions With Source')
    this%f_COLLISIONS_FORCED_TWO_DIMENSIONAL => GameFeature_jnew_1('Collisions Forced Two Dimensional')
        continue
  end function

  recursive function GameFeatureFactory_jm_getInstance_0() result(jresult)
    class(GameFeatureFactory), pointer :: jresult
        jresult => GameFeatureFactory_jstatic_instance()
        return
  end function
end module GameFeatureFactory_m

