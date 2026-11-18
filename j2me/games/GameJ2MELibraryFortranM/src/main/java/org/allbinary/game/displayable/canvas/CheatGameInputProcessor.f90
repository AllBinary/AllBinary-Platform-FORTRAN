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
! package org.allbinary.game.displayable.canvas
module CheatGameInputProcessor_m
  use JR_m
  use GameKeyFactory_m
  use PlayerGameInput_m
  use GameKeyEvent_m
  use GameKeyEventUtil_m
  use AllBinaryGameLayerManager_m
  use SpecialGameInputFactory_m
  use SpecialGameInputInterface_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(PlayerGameInput) :: CheatGameInputProcessor
    character(len=:), allocatable :: f_PROCESS_GAME
    class(AllBinaryGameCanvas), pointer :: f_gameCanvas => null()
    class(GameKeyFactory), pointer :: f_gameKeyFactory => null()
  contains
    procedure :: jm_update_0 => CheatGameInputProcessor_jm_update_0
  end type

  class(SpecialGameInputInterface), pointer, save :: CheatGameInputProcessor_jcell_inputProcessor => null()
  logical, save :: CheatGameInputProcessor_jset_inputProcessor = .false.

contains

  function CheatGameInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CheatGameInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CheatGameInputProcessor)
      jresult => object
    end select
  end function

  function CheatGameInputProcessor_jstatic_inputProcessor() result(jresult)
    class(SpecialGameInputInterface), pointer :: jresult
    if (.not. CheatGameInputProcessor_jset_inputProcessor) then
      CheatGameInputProcessor_jset_inputProcessor = .true.
      CheatGameInputProcessor_jcell_inputProcessor => SpecialGameInputFactory_jstatic_NO_SPECIAL_GAME_INPUT()
    end if
    jresult => CheatGameInputProcessor_jcell_inputProcessor
  end function

  subroutine CheatGameInputProcessor_jsetstatic_inputProcessor(jvalue)
    class(SpecialGameInputInterface), target, optional :: jvalue
    CheatGameInputProcessor_jset_inputProcessor = .true.
    if (present(jvalue)) then
      CheatGameInputProcessor_jcell_inputProcessor => jvalue
    else
      CheatGameInputProcessor_jcell_inputProcessor => null()
    end if
  end subroutine

  recursive function CheatGameInputProcessor_jnew_1(j_gameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_gameCanvas
    class(CheatGameInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'CheatGameInputProcessor'
    this%f_PROCESS_GAME = ''
    this%f_PROCESS_GAME = 'processGame'
    
    this%f_gameKeyFactory => GameKeyFactory_jm_getInstance_0()
        continue ! super()
        this%f_gameCanvas => j_gameCanvas
  end function

  recursive subroutine CheatGameInputProcessor_jm_update_0(this)
    class(CheatGameInputProcessor), target :: this
    class(AllBinaryGameLayerManager), pointer :: j_gameLayerManager
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size
    class(JObject), pointer :: j_anyType
    integer(4) :: j_key
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_gameLayerManager => this%f_gameCanvas%jm_getLayerManager_0()
            j_list => this%jm_getGameKeyEventList_0()
            j_size = j_list%jm_size_0()
            j_index = 0
            do while ((j_index < j_size))
                j_anyType => j_list%f_objectArray((j_index) + 1)%v
                j_key = GameKeyEventUtil_jm_getKey_1(j_anyType)
                if ((j_key == this%f_gameKeyFactory%f_LEVEL_DOWN%jm_getId_0())) then
                    associate (jstaticref1 => CheatGameInputProcessor_jstatic_inputProcessor())
                    call jstaticref1%jm_strafeLeft_0()
                    end associate
                    exit
                else if ((j_key == this%f_gameKeyFactory%f_LEVEL_UP%jm_getId_0())) then
                    associate (jstaticref2 => CheatGameInputProcessor_jstatic_inputProcessor())
                    call jstaticref2%jm_strafeRight_0()
                    end associate
                    exit
                end if
                if ((j_key == this%f_gameKeyFactory%f_LEFT%jm_getId_0())) then
                    associate (jstaticref3 => CheatGameInputProcessor_jstatic_inputProcessor())
                    call jstaticref3%jm_left_0()
                    end associate
                    exit
                else if ((j_key == this%f_gameKeyFactory%f_RIGHT%jm_getId_0())) then
                    associate (jstaticref4 => CheatGameInputProcessor_jstatic_inputProcessor())
                    call jstaticref4%jm_right_0()
                    end associate
                    exit
                else if ((j_key == this%f_gameKeyFactory%f_UP%jm_getId_0())) then
                    associate (jstaticref5 => CheatGameInputProcessor_jstatic_inputProcessor())
                    call jstaticref5%jm_up_0()
                    end associate
                    exit
                else if ((j_key == this%f_gameKeyFactory%f_DOWN%jm_getId_0())) then
                    associate (jstaticref6 => CheatGameInputProcessor_jstatic_inputProcessor())
                    call jstaticref6%jm_down_0()
                    end associate
                    exit
                else if ((j_key == this%f_gameKeyFactory%f_KEY_NUM1%jm_getId_0())) then
                    associate (jstaticref7 => CheatGameInputProcessor_jstatic_inputProcessor())
                    call jstaticref7%jm_special1_2(j_gameLayerManager, GameKeyEvent_jstatic_NONE())
                    end associate
                    exit
                else if ((j_key == this%f_gameKeyFactory%f_KEY_NUM3%jm_getId_0())) then
                    associate (jstaticref8 => CheatGameInputProcessor_jstatic_inputProcessor())
                    call jstaticref8%jm_special2_2(j_gameLayerManager, GameKeyEvent_jstatic_NONE())
                    end associate
                    exit
                end if
                j_index = j_index + 1
            end do
            call j_list%jm_clear_0()
  end subroutine
end module CheatGameInputProcessor_m

