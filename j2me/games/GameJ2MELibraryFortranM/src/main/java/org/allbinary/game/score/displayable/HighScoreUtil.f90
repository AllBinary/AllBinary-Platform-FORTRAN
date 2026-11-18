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
! package org.allbinary.game.score.displayable
module HighScoreUtil_m
  use JR_m
  use GameInfo_m
  use HighScore_m
  use HighScoreNamePersistanceSingleton_m
  use HighScores_m
  use HighScoresFactoryInterface_m
  use HighScoresHelperBaseInterface_m
  use HighScoresResultsListener_m
  use MyCanvas_m
  use LogUtil_m
  use StringMaker_m
  use StringUtil_m
  use AbeClientInformationInterface_m
  use CommonStrings_m
  implicit none

  type, extends(HighScoresResultsListener) :: HighScoreUtil
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(HighScoresFactoryInterface), pointer :: f_highScoresFactoryInterface => null()
    type(JRef), allocatable :: f_highScoresArray(:)
    class(HighScore), pointer :: f_highScore => null()
    class(AbeClientInformationInterface), pointer :: f_abeClientInformation => null()
    class(GameInfo), pointer :: f_gameInfo => null()
    class(HighScoresHelperBaseInterface), pointer :: f_highScoresHelper => null()
    logical :: f_firstTime = .false.
  contains
    procedure :: jm_setHighScoresArray_1 => HighScoreUtil_jm_setHighScoresArray_1
    procedure :: jm_update_1 => HighScoreUtil_jm_update_1
    procedure :: jm_saveHighScore_0 => HighScoreUtil_jm_saveHighScore_0
    procedure :: jm_submit_1 => HighScoreUtil_jm_submit_1
  end type

  class(Command), pointer, save :: HighScoreUtil_jcell_SUBMIT_TEXTBOX_COMMAND => null()
  logical, save :: HighScoreUtil_jset_SUBMIT_TEXTBOX_COMMAND = .false.

contains

  function HighScoreUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoreUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoreUtil)
      jresult => object
    end select
  end function

  function HighScoreUtil_jstatic_SUBMIT_TEXTBOX_COMMAND() result(jresult)
    class(Command), pointer :: jresult
    class(StringUtil), pointer :: jtemp1
    if (.not. HighScoreUtil_jset_SUBMIT_TEXTBOX_COMMAND) then
      HighScoreUtil_jset_SUBMIT_TEXTBOX_COMMAND = .true.
      jtemp1 => StringUtil_jm_getInstance_0()
    HighScoreUtil_jcell_SUBMIT_TEXTBOX_COMMAND => Command_jnew_4('Submit', jtemp1%f_EMPTY_STRING, Command_jstatic_SCREEN(), 1)
    end if
    jresult => HighScoreUtil_jcell_SUBMIT_TEXTBOX_COMMAND
  end function

  subroutine HighScoreUtil_jsetstatic_SUBMIT_TEXTBOX_COMMAND(jvalue)
    class(Command), target, optional :: jvalue
    HighScoreUtil_jset_SUBMIT_TEXTBOX_COMMAND = .true.
    if (present(jvalue)) then
      HighScoreUtil_jcell_SUBMIT_TEXTBOX_COMMAND => jvalue
    else
      HighScoreUtil_jcell_SUBMIT_TEXTBOX_COMMAND => null()
    end if
  end subroutine

  recursive function HighScoreUtil_jnew_7(j_highScoresFactoryInterface, j_highScoresHelper, j_abeClientInformation, j_gameInfo, j_cmdListener, j_name, j_highScore) result(this)
    class(HighScoresFactoryInterface), target, optional :: j_highScoresFactoryInterface
    class(HighScoresHelperBaseInterface), target, optional :: j_highScoresHelper
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(GameInfo), target, optional :: j_gameInfo
    class(CommandListener), target, optional :: j_cmdListener
    character(len=*), intent(in) :: j_name
    class(HighScore), target, optional :: j_highScore
    class(HighScoreUtil), pointer :: this
    allocate(this)
    this%jclass = 'HighScoreUtil'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
    
    
    
    
    
    this%f_firstTime = .true.
        this%f_highScoresFactoryInterface => j_highScoresFactoryInterface
        this%f_highScoresHelper => j_highScoresHelper
        this%f_highScoresArray = this%f_highScoresHelper%jm_getHighScoresArray_0()
        this%f_highScore => j_highScore
        this%f_abeClientInformation => j_abeClientInformation
        this%f_gameInfo => j_gameInfo
  end function

  recursive subroutine HighScoreUtil_jm_setHighScoresArray_1(this, j_highScoresArrayP)
    class(HighScoreUtil), target :: this
    type(JRef) :: j_highScoresArrayP(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_highScoresArray = j_highScoresArrayP
        this%f_firstTime = .false.
        call this%jm_saveHighScore_0()
  end subroutine

  recursive subroutine HighScoreUtil_jm_update_1(this, j_name)
    class(HighScoreUtil), target :: this
    character(len=*), intent(in) :: j_name
    class(HighScoreNamePersistanceSingleton), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => HighScoreNamePersistanceSingleton_jm_getInstance_0()
        call jtemp2%jm_save_3(this%f_abeClientInformation, this%f_gameInfo, j_name)
        call this%f_highScore%jm_setName_1(j_name)
  end subroutine

  recursive subroutine HighScoreUtil_jm_saveHighScore_0(this)
    class(HighScoreUtil), target :: this
    integer(4) :: j_size
    class(HighScores), pointer :: j_highScores
    character(len=:), allocatable :: j_highScoresAsString
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringUtil), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp6 => StringUtil_jm_getInstance_0()
        jtemp5 => StringMaker_jnew_0()
        jtemp4 => jtemp5%jm_append_1(this%f_commonStrings%f_START)
        jtemp3 => jtemp4%jm_append_1(jtemp6%jm_toString_1(this%f_highScore))
        call this%f_logUtil%jm_putF_3(jtemp3%jm_toString_0(), this, 'saveHighScore')
        j_size = size(this%f_highScoresArray, 1)
        if ((this%f_firstTime .and. (j_size == 0))) then
            call this%f_logUtil%jm_putF_3('Games canvas did not give us any HighScores', this, 'saveHighScore')
            call this%f_highScoresFactoryInterface%jm_fetchHighScores_2(this%f_gameInfo, this)
            return
        end if
        continue
        continue
        j_index = 0
        do while ((j_index < j_size))
            j_highScores => HighScores_jcast(this%f_highScoresArray((j_index) + 1)%v)
            call j_highScores%jm_addHighScore_1(this%f_highScore)
            j_highScoresAsString = j_highScores%jm_toString_0()
            jtemp9 => StringMaker_jnew_0()
            jtemp8 => jtemp9%jm_append_1('Added/Adding Score: ')
            jtemp7 => jtemp8%jm_append_1(j_highScoresAsString)
            call this%f_logUtil%jm_putF_3(jtemp7%jm_toString_0(), this, 'saveHighScore')
            j_index = j_index + 1
        end do
        call this%f_highScoresHelper%jm_setHighScoresArray_1(this%f_highScoresArray)
  end subroutine

  recursive subroutine HighScoreUtil_jm_submit_1(this, j_myCanvas)
    class(HighScoreUtil), target :: this
    class(MyCanvas), target, optional :: j_myCanvas
    class(CommandListener), pointer :: j_commandListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commandListener => j_myCanvas%jm_getCustomCommandListener_0()
        call j_commandListener%jm_commandAction_2(HighScoreUtil_jstatic_SUBMIT_TEXTBOX_COMMAND(), j_myCanvas)
  end subroutine
end module HighScoreUtil_m

