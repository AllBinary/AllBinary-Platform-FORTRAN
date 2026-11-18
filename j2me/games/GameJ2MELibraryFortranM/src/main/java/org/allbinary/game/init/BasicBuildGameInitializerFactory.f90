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
! package org.allbinary.game.init
module BasicBuildGameInitializerFactory_m
  use JR_m
  use GameInitializationInterfaceFactoryInterface_m
  use BaseGameInitialization_m
  use GameInitializationInterface_m
  implicit none

  type, extends(GameInitializationInterfaceFactoryInterface) :: BasicBuildGameInitializerFactory
  contains
    procedure :: jm_getInstance_0 => BasicBuildGameInitializerFactory_jm_getInstance_0
  end type

  class(BasicBuildGameInitializerFactory), pointer, save :: BasicBuildGameInitializerFactory_jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY => null()
  logical, save :: BasicBuildGameInitializerFactory_jset_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = .false.

contains

  function BasicBuildGameInitializerFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicBuildGameInitializerFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicBuildGameInitializerFactory)
      jresult => object
    end select
  end function

  function BasicBuildGameInitializerFactory_jstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY() result(jresult)
    class(BasicBuildGameInitializerFactory), pointer :: jresult
    if (.not. BasicBuildGameInitializerFactory_jset_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY) then
      BasicBuildGameInitializerFactory_jset_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = .true.
      BasicBuildGameInitializerFactory_jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY => BasicBuildGameInitializerFactory_jnew_0()
    end if
    jresult => BasicBuildGameInitializerFactory_jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY
  end function

  subroutine BasicBuildGameInitializerFactory_jsetstatic_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY(jvalue)
    class(BasicBuildGameInitializerFactory), target, optional :: jvalue
    BasicBuildGameInitializerFactory_jset_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY = .true.
    if (present(jvalue)) then
      BasicBuildGameInitializerFactory_jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY => jvalue
    else
      BasicBuildGameInitializerFactory_jcell_NULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY => null()
    end if
  end subroutine

  function BasicBuildGameInitializerFactory_jnew_0() result(this)
    class(BasicBuildGameInitializerFactory), pointer :: this
    allocate(this)
    this%jclass = 'BasicBuildGameInitializerFactory'
  end function

  recursive function BasicBuildGameInitializerFactory_jm_getInstance_0(this) result(jresult)
    class(BasicBuildGameInitializerFactory), target :: this
    class(GameInitializationInterface), pointer :: jresult
        jresult => BaseGameInitialization_jstatic_NULL_BASE_GAME_INITIALIZATION()
        return
  end function
end module BasicBuildGameInitializerFactory_m

