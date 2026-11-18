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
module DemoGameBehavior_m
  use JR_m
  use GameTypeFactory_m
  use NullPaintable_m
  use LogUtil_m
  use AbeClientInformationInterface_m
  use CommonStrings_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(JObject) :: DemoGameBehavior
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_init_0 => DemoGameBehavior_jm_init_0
    procedure :: jm_pause_1 => DemoGameBehavior_jm_pause_1
    procedure :: jm_unPause_1 => DemoGameBehavior_jm_unPause_1
    procedure :: jm_updateTouch_1 => DemoGameBehavior_jm_updateTouch_1
    procedure :: jm_updateScreenButtonPaintable_1 => DemoGameBehavior_jm_updateScreenButtonPaintable_1
    procedure :: jm_setGameState_1 => DemoGameBehavior_jm_setGameState_1
    procedure :: jm_removeAllGameKeyInputListeners_1 => DemoGameBehavior_jm_removeAllGameKeyInputListeners_1
    procedure :: jm_updateEndGameProcessor_1 => DemoGameBehavior_jm_updateEndGameProcessor_1
    procedure :: jm_buildGame_1 => DemoGameBehavior_jm_buildGame_1
    procedure :: jm_run_1 => DemoGameBehavior_jm_run_1
    procedure :: jm_setHighScore_6 => DemoGameBehavior_jm_setHighScore_6
  end type

  class(DemoGameBehavior), pointer, save :: DemoGameBehavior_jcell_instance => null()
  logical, save :: DemoGameBehavior_jset_instance = .false.

contains

  function DemoGameBehavior_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoGameBehavior), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoGameBehavior)
      jresult => object
    end select
  end function

  function DemoGameBehavior_jstatic_instance() result(jresult)
    class(DemoGameBehavior), pointer :: jresult
    if (.not. DemoGameBehavior_jset_instance) then
      DemoGameBehavior_jset_instance = .true.
      DemoGameBehavior_jcell_instance => DemoGameBehavior_jnew_0()
    end if
    jresult => DemoGameBehavior_jcell_instance
  end function

  subroutine DemoGameBehavior_jsetstatic_instance(jvalue)
    class(DemoGameBehavior), target, optional :: jvalue
    DemoGameBehavior_jset_instance = .true.
    if (present(jvalue)) then
      DemoGameBehavior_jcell_instance => jvalue
    else
      DemoGameBehavior_jcell_instance => null()
    end if
  end subroutine

  function DemoGameBehavior_jnew_0() result(this)
    class(DemoGameBehavior), pointer :: this
    allocate(this)
    this%jclass = 'DemoGameBehavior'
    this%f_logUtil => LogUtil_jm_getInstance_0()
  end function

  recursive function DemoGameBehavior_jm_getInstance_0() result(jresult)
    class(DemoGameBehavior), pointer :: jresult
        jresult => DemoGameBehavior_jstatic_instance()
        return
  end function

  recursive subroutine DemoGameBehavior_jm_init_0(this)
    class(DemoGameBehavior), target :: this
    continue
  end subroutine

  recursive subroutine DemoGameBehavior_jm_pause_1(this, j_allBinaryGameCanvas)
    class(DemoGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    continue
  end subroutine

  recursive subroutine DemoGameBehavior_jm_unPause_1(this, j_allBinaryGameCanvas)
    class(DemoGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    continue
  end subroutine

  recursive subroutine DemoGameBehavior_jm_updateTouch_1(this, j_allBinaryGameCanvas)
    class(DemoGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    continue
  end subroutine

  recursive subroutine DemoGameBehavior_jm_updateScreenButtonPaintable_1(this, j_allBinaryGameCanvas)
    class(DemoGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_allBinaryGameCanvas%jm_setTouchPaintableP_1(NullPaintable_jm_getInstance_0())
  end subroutine

  recursive subroutine DemoGameBehavior_jm_setGameState_1(this, j_allBinaryGameCanvas)
    class(DemoGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    continue
  end subroutine

  recursive subroutine DemoGameBehavior_jm_removeAllGameKeyInputListeners_1(this, j_allBinaryGameCanvas)
    class(DemoGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    continue
  end subroutine

  recursive subroutine DemoGameBehavior_jm_updateEndGameProcessor_1(this, j_allBinaryGameCanvas)
    class(DemoGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    continue
  end subroutine

  recursive subroutine DemoGameBehavior_jm_buildGame_1(this, j_allBinaryGameCanvas)
    class(DemoGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    continue
  end subroutine

  recursive subroutine DemoGameBehavior_jm_run_1(this, j_allBinaryGameCanvas)
    class(DemoGameBehavior), target :: this
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    class(CommonStrings), pointer :: j_commonStrings
    class(GameTypeFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonStrings => CommonStrings_jm_getInstance_0()
        jtemp1 => GameTypeFactory_jm_getInstance_0()
        call this%f_logUtil%jm_putF_3(JR_toString(jtemp1%f_BOT), this, j_commonStrings%f_RUN)
  end subroutine

  recursive subroutine DemoGameBehavior_jm_setHighScore_6(this, j_abeClientInformation, j_allBinaryGameCanvas, j_name, j_score, j_autoSubmit, j_isLast)
    class(DemoGameBehavior), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(AllBinaryGameCanvas), target, optional :: j_allBinaryGameCanvas
    character(len=*), intent(in) :: j_name
    integer(8), value :: j_score
    logical, value :: j_autoSubmit
    logical, value :: j_isLast
    continue
  end subroutine
end module DemoGameBehavior_m

