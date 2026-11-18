! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.game.displayable.canvas
module BaseGameBehavior_m
  use JR_m
  use GameAdStateFactory_m
  use GameAdState_m
  use Features_m
  use CurrentDisplayableFactory_m
  use OpenGLFeatureFactory_m
  use AbeClientInformationInterface_m
  use DemoGameBehavior_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(DemoGameBehavior) :: BaseGameBehavior
  contains
    procedure :: jm_init_0 => BaseGameBehavior_jm_init_0
    procedure :: jm_pause_1 => BaseGameBehavior_jm_pause_1
    procedure :: jm_unPause_1 => BaseGameBehavior_jm_unPause_1
    procedure :: jm_updateTouch_1 => BaseGameBehavior_jm_updateTouch_1
    procedure :: jm_updateScreenButtonPaintable_1 => BaseGameBehavior_jm_updateScreenButtonPaintable_1
    procedure :: jm_setGameState_1 => BaseGameBehavior_jm_setGameState_1
    procedure :: jm_removeAllGameKeyInputListeners_1 => BaseGameBehavior_jm_removeAllGameKeyInputListeners_1
    procedure :: jm_updateEndGameProcessor_1 => BaseGameBehavior_jm_updateEndGameProcessor_1
    procedure :: jm_buildGame_1 => BaseGameBehavior_jm_buildGame_1
    procedure :: jm_run_1 => BaseGameBehavior_jm_run_1
    procedure :: jm_setHighScore_6 => BaseGameBehavior_jm_setHighScore_6
  end type

  class(BaseGameBehavior), pointer, save :: BaseGameBehavior_jcell_instanceC => null()
  logical, save :: BaseGameBehavior_jset_instanceC = .false.

contains

  function BaseGameBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BaseGameBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BaseGameBehavior)
      jresult => object
    end select
  end function

  function BaseGameBehavior_jstatic_instanceC() result(jresult)
    class(BaseGameBehavior), pointer :: jresult
    if (.not. BaseGameBehavior_jset_instanceC) then
      BaseGameBehavior_jset_instanceC = .true.
      BaseGameBehavior_jcell_instanceC => BaseGameBehavior_jnew_0()
    end if
    jresult => BaseGameBehavior_jcell_instanceC
  end function

  subroutine BaseGameBehavior_jsetstatic_instanceC(jvalue)
    class(BaseGameBehavior), target, optional :: jvalue
    BaseGameBehavior_jset_instanceC = .true.
    if (present(jvalue)) then
      BaseGameBehavior_jcell_instanceC => jvalue
    else
      BaseGameBehavior_jcell_instanceC => null()
    end if
  end subroutine

  function BaseGameBehavior_jnew_0() result(this)
    class(BaseGameBehavior), pointer :: this
    allocate(this)
    this%jclass = 'BaseGameBehavior'
  end function

  recursive function BaseGameBehavior_jm_getInstance_0() result(jresult)
    class(DemoGameBehavior), pointer :: jresult
        jresult => BaseGameBehavior_jstatic_instanceC()
        return
  end function

  recursive subroutine BaseGameBehavior_jm_init_0(this)
    class(BaseGameBehavior), target :: this
    class(GameAdState), pointer :: j_gameAdState
    class(GameAdStateFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => GameAdStateFactory_jm_getInstance_0()
        j_gameAdState => jtemp1%jm_getCurrentInstance_0()
        call j_gameAdState%jm_playingAdState_0()
  end subroutine

  recursive subroutine BaseGameBehavior_jm_pause_1(this, j_allBinaryGameCanvas)
    class(BaseGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(Features), pointer :: j_features
    class(CurrentDisplayableFactory), pointer :: j_currentDisplayableFactory
    class(OpenGLFeatureFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_features => Features_jm_getInstance_0()
        jtemp2 => OpenGLFeatureFactory_jm_getInstance_0()
        if (j_features%jm_isDefault_1(jtemp2%f_OPENGL_AS_GAME_THREAD)) then
            j_currentDisplayableFactory => CurrentDisplayableFactory_jm_getInstance_0()
            call j_currentDisplayableFactory%jm_setRunnable_1(j_allBinaryGameCanvas%f_gamePauseRunnable)
        end if
  end subroutine

  recursive subroutine BaseGameBehavior_jm_unPause_1(this, j_allBinaryGameCanvas)
    class(BaseGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(CurrentDisplayableFactory), pointer :: j_currentDisplayableFactory
    class(Features), pointer :: jtemp3
    class(OpenGLFeatureFactory), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp4 => OpenGLFeatureFactory_jm_getInstance_0()
        jtemp3 => Features_jm_getInstance_0()
        if (jtemp3%jm_isDefault_1(jtemp4%f_OPENGL_AS_GAME_THREAD)) then
            j_currentDisplayableFactory => CurrentDisplayableFactory_jm_getInstance_0()
            call j_currentDisplayableFactory%jm_setRunnable_1(j_allBinaryGameCanvas%f_gameRunnable)
            call j_currentDisplayableFactory%jm_setDisplayable_1(j_allBinaryGameCanvas)
        end if
  end subroutine

  recursive subroutine BaseGameBehavior_jm_updateTouch_1(this, j_allBinaryGameCanvas)
    class(BaseGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_updateTouch2_0()
  end subroutine

  recursive subroutine BaseGameBehavior_jm_updateScreenButtonPaintable_1(this, j_allBinaryGameCanvas)
    class(BaseGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_updateScreenButtonPaintable2_0()
  end subroutine

  recursive subroutine BaseGameBehavior_jm_setGameState_1(this, j_allBinaryGameCanvas)
    class(BaseGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_updateGameState_0()
  end subroutine

  recursive subroutine BaseGameBehavior_jm_removeAllGameKeyInputListeners_1(this, j_allBinaryGameCanvas)
    class(BaseGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_removeAllGameKeyInputListeners2_0()
  end subroutine

  recursive subroutine BaseGameBehavior_jm_updateEndGameProcessor_1(this, j_allBinaryGameCanvas)
    class(BaseGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_updateEndGameProcessor2_0()
  end subroutine

  recursive subroutine BaseGameBehavior_jm_buildGame_1(this, j_allBinaryGameCanvas)
    class(BaseGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_buildGame2_0()
  end subroutine

  recursive subroutine BaseGameBehavior_jm_run_1(this, j_allBinaryGameCanvas)
    class(BaseGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_run2_0()
  end subroutine

  recursive subroutine BaseGameBehavior_jm_setHighScore_6(this, j_abeClientInformation, j_allBinaryGameCanvas, j_name, j_score, j_autoSubmit, j_isLast)
    class(BaseGameBehavior), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    character(len=*), intent(in) :: j_name
    integer(8), value :: j_score
    logical, value :: j_autoSubmit
    logical, value :: j_isLast
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_setHighScore2_5(j_abeClientInformation, j_name, j_score, j_autoSubmit, j_isLast)
  end subroutine
end module BaseGameBehavior_m

function BaseGameBehavior_jnew_0_jext() result(this)
  use BaseGameBehavior_m, only: JObject, BaseGameBehavior_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => BaseGameBehavior_jnew_0()
end function

