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
module GameFeatureControlledInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: GameFeatureControlledInterface
  contains
    procedure :: jm_init_1 => GameFeatureControlledInterface_jm_init_1
    procedure :: jm_isFeature_0 => GameFeatureControlledInterface_jm_isFeature_0
    procedure :: jm_isLoadingLevel_1 => GameFeatureControlledInterface_jm_isLoadingLevel_1
  end type


contains

  function GameFeatureControlledInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameFeatureControlledInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameFeatureControlledInterface)
      jresult => object
    end select
  end function

  function GameFeatureControlledInterface_jnew_0() result(this)
    class(GameFeatureControlledInterface), pointer :: this
    allocate(this)
    this%jclass = 'GameFeatureControlledInterface'
  end function

  recursive subroutine GameFeatureControlledInterface_jm_init_1(this, j_level)
    class(GameFeatureControlledInterface), target :: this
    integer(4), value :: j_level
    error stop 'AbstractMethodError: GameFeatureControlledInterface.init'
  end subroutine

  recursive function GameFeatureControlledInterface_jm_isFeature_0(this) result(jresult)
    class(GameFeatureControlledInterface), target :: this
    logical :: jresult
    error stop 'AbstractMethodError: GameFeatureControlledInterface.isFeature'
  end function

  recursive function GameFeatureControlledInterface_jm_isLoadingLevel_1(this, j_level) result(jresult)
    class(GameFeatureControlledInterface), target :: this
    integer(4), value :: j_level
    logical :: jresult
    error stop 'AbstractMethodError: GameFeatureControlledInterface.isLoadingLevel'
  end function
end module GameFeatureControlledInterface_m

