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
module CommonGameInitialization_m
  use JR_m
  use ResourceInitialization_m
  use ResourceLoadingLevelFactory_m
  use PointFactory_m
  use ProgressCanvas_m
  use ProgressCanvasFactory_m
  use SmallIntegerSingletonFactory_m
  use AbeClientInformationInterface_m
  use AngleFactory_m
  use CommonStrings_m
  use BaseGameInitialization_m
  implicit none

  type, extends(BaseGameInitialization) :: CommonGameInitialization
    class(CommonStrings), pointer :: f_commonStrings => null()
  contains
    procedure :: jm_init_3 => CommonGameInitialization_jm_init_3
    procedure :: jm_initGame_0 => CommonGameInitialization_jm_initGame_0
  end type


contains

  function CommonGameInitialization_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CommonGameInitialization), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CommonGameInitialization)
      jresult => object
    end select
  end function

  recursive function CommonGameInitialization_jnew_2(j_resourceInitializationArray, j_portion) result(this)
    type(JRef) :: j_resourceInitializationArray(:)
    integer(4), value :: j_portion
    class(CommonGameInitialization), pointer :: this
    allocate(this)
    this%jclass = 'CommonGameInitialization'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
        continue ! super()
  end function

  recursive subroutine CommonGameInitialization_jm_init_3(this, j_abeClientInformation, j_commandListener, j_level)
    class(CommonGameInitialization), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(CommandListener), target, optional :: j_commandListener
    integer(4), value :: j_level
    class(ResourceLoadingLevelFactory), pointer :: j_resourceLoadingLevelFactory
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(SmallIntegerSingletonFactory), pointer :: jtemp1
    class(PointFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%BaseGameInitialization%jm_init_3(j_abeClientInformation, j_commandListener, j_level)
        j_resourceLoadingLevelFactory => ResourceLoadingLevelFactory_jm_getInstance_0()
        if (((.not. this%jm_isGameInitialized_0()) .and. (j_level == j_resourceLoadingLevelFactory%f_LOAD_ALL%jm_getLevel_0()))) then
            call this%jm_setGameInitialized_1(.true.)
            j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
            jtemp1 => SmallIntegerSingletonFactory_jm_getInstance_0()
            call jtemp1%jm_init_0()
            call j_progressCanvas%jm_addNormalPortion_2(50, 'Integers')
            jtemp2 => PointFactory_jm_getInstance_0()
            call jtemp2%jm_init_0()
            call j_progressCanvas%jm_addNormalPortion_2(50, 'Points')
            call AngleFactory_jm_getInstance_0()
            call j_progressCanvas%jm_addNormalPortion_2(50, 'Angles')
            call this%jm_initGame_0()
            associate (jstaticref1 => ResourceInitialization_jcast(this%f_resourceInitializationArray((this%f_GAME_RESOURCES) + 1)%v))
            call jstaticref1%jm_init_0()
            end associate
        end if
        call this%BaseGameInitialization%jm_resourceInitialization_1(j_level)
  end subroutine

  recursive subroutine CommonGameInitialization_jm_initGame_0(this)
    class(CommonGameInitialization), target :: this
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine
end module CommonGameInitialization_m

