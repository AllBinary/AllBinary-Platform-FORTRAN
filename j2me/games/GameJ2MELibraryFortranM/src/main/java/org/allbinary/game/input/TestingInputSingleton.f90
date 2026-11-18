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
! package org.allbinary.game.input
module TestingInputSingleton_m
  use JR_m
  use GameKeyEvent_m
  use AllBinaryGameLayer_m
  use RectangleFactory_m
  use NullPaintable_m
  use PaintableInterface_m
  use AllBinaryLayerManager_m
  use StringUtil_m
  use BasicArrayList_m
  use ViewPosition_m
  use GameInputInterface_m
  use GameInputProcessor_m
  use InputFactory_m
  use GameInputProcessorUtil_m
  use TestInputInterface_m
  implicit none

  type, extends(AllBinaryGameLayer) :: TestingInputSingleton
    type(JRef), allocatable :: f_inputProcessorArray(:)
    class(PaintableInterface), pointer :: f_testInputPaintable => null()
  contains
    procedure :: jm_initInputProcessors_0 => TestingInputSingleton_jm_initInputProcessors_0
    procedure :: jm_initInputProcessorsForTestInput_1 => TestingInputSingleton_jm_initInputProcessorsForTestInput_1
    procedure :: jm_processInputList_2 => TestingInputSingleton_jm_processInputList_2
    procedure :: jm_processInput_1 => TestingInputSingleton_jm_processInput_1
    procedure :: jm_paint_1 => TestingInputSingleton_jm_paint_1
    procedure :: jm_implmentsGameInputInterface_0 => TestingInputSingleton_jm_implmentsGameInputInterface_0
  end type

  ! TestingInputSingleton used as a GameInputInterface
  type, extends(GameInputInterface) :: TestingInputSingleton_jas_GameInputInterface
    class(TestingInputSingleton), pointer :: jtarget => null()
  contains
    procedure :: jm_initInputProcessors_0 => TestingInputSingleton_jas_GameInputInterface_jm_initInputProcessors_0
    procedure :: jm_processInput_1 => TestingInputSingleton_jas_GameInputInterface_jm_processInput_1
  end type

  class(TestingInputSingleton), pointer, save :: TestingInputSingleton_jcell_instance => null()
  logical, save :: TestingInputSingleton_jset_instance = .false.

contains

  function TestingInputSingleton_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TestingInputSingleton), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TestingInputSingleton)
      jresult => object
    end select
  end function

  function TestingInputSingleton_jas_GameInputInterface_jnew(object) result(jresult)
    class(TestingInputSingleton), target :: object
    class(TestingInputSingleton_jas_GameInputInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'TestingInputSingleton'
    jresult%jtarget => object
  end function

  recursive subroutine TestingInputSingleton_jas_GameInputInterface_jm_initInputProcessors_0(this)
    class(TestingInputSingleton_jas_GameInputInterface), target :: this
    call this%jtarget%jm_initInputProcessors_0()
  end subroutine

  recursive subroutine TestingInputSingleton_jas_GameInputInterface_jm_processInput_1(this, j_layerManager)
    class(TestingInputSingleton_jas_GameInputInterface), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    call this%jtarget%jm_processInput_1(j_layerManager)
  end subroutine

  function TestingInputSingleton_jstatic_instance() result(jresult)
    class(TestingInputSingleton), pointer :: jresult
    if (.not. TestingInputSingleton_jset_instance) then
      TestingInputSingleton_jset_instance = .true.
      TestingInputSingleton_jcell_instance => TestingInputSingleton_jnew_0()
    end if
    jresult => TestingInputSingleton_jcell_instance
  end function

  subroutine TestingInputSingleton_jsetstatic_instance(jvalue)
    class(TestingInputSingleton), target, optional :: jvalue
    TestingInputSingleton_jset_instance = .true.
    if (present(jvalue)) then
      TestingInputSingleton_jcell_instance => jvalue
    else
      TestingInputSingleton_jcell_instance => null()
    end if
  end subroutine

  recursive function TestingInputSingleton_jnew_0() result(this)
    class(TestingInputSingleton), pointer :: this
    class(StringUtil), pointer :: jtemp2
    class(InputFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'TestingInputSingleton'
    jtemp1 => InputFactory_jm_getInstance_0()
    this%f_inputProcessorArray = JR_newRefArray(jtemp1%f_MAX)
    this%f_testInputPaintable => NullPaintable_jm_getInstance_0()
        jtemp2 => StringUtil_jm_getInstance_0()
        continue ! super()
        call GameInputProcessorUtil_jm_init_1(this%f_inputProcessorArray)
  end function

  recursive function TestingInputSingleton_jm_getInstance_0() result(jresult)
    class(TestingInputSingleton), pointer :: jresult
        jresult => TestingInputSingleton_jstatic_instance()
        return
  end function

  recursive subroutine TestingInputSingleton_jm_initInputProcessors_0(this)
    class(TestingInputSingleton), target :: this
    continue
  end subroutine

  recursive subroutine TestingInputSingleton_jm_initInputProcessorsForTestInput_1(this, j_aTestInputInterface)
    class(TestingInputSingleton), target :: this
    class(TestInputInterface), target, optional :: j_aTestInputInterface
    class(TestInputInterface), pointer :: j_testInputInterface
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_testInputInterface => j_aTestInputInterface
        this%f_testInputPaintable => j_testInputInterface
        this%f_inputProcessorArray((Canvas_jstatic_UP()) + 1)%v => GameInputProcessor_jnew_0()
        this%f_inputProcessorArray((Canvas_jstatic_DOWN()) + 1)%v => GameInputProcessor_jnew_0()
        this%f_inputProcessorArray((Canvas_jstatic_LEFT()) + 1)%v => GameInputProcessor_jnew_0()
        this%f_inputProcessorArray((Canvas_jstatic_RIGHT()) + 1)%v => GameInputProcessor_jnew_0()
        this%f_inputProcessorArray((Canvas_jstatic_KEY_NUM7()) + 1)%v => GameInputProcessor_jnew_0()
        this%f_inputProcessorArray((Canvas_jstatic_KEY_NUM9()) + 1)%v => GameInputProcessor_jnew_0()
        call GameInputProcessorUtil_jm_init_1(this%f_inputProcessorArray)
  end subroutine

  recursive subroutine TestingInputSingleton_jm_processInputList_2(this, j_allbinaryLayerManager, j_list)
    class(TestingInputSingleton), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allbinaryLayerManager
    class(BasicArrayList), target, optional :: j_list
    integer(4) :: j_key
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_key = 0
        continue
        j_size = j_list%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_gameKeyEvent => GameKeyEvent_jcast(j_list%f_objectArray((j_index) + 1)%v)
            j_key = j_gameKeyEvent%jm_getKey_0()
            associate (jstaticref1 => GameInputProcessor_jcast(this%f_inputProcessorArray((j_key) + 1)%v))
            call jstaticref1%jm_processEvent_2(j_allbinaryLayerManager, GameKeyEvent_jstatic_NONE())
            end associate
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine TestingInputSingleton_jm_processInput_1(this, j_allBinaryLayerManager)
    class(TestingInputSingleton), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
    class(BasicArrayList), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_processInputList_2(j_allBinaryLayerManager, this%jm_getGameKeyEventList_0())
        jtemp3 => this%jm_getGameKeyEventList_0()
        call jtemp3%jm_clear_0()
  end subroutine

  recursive subroutine TestingInputSingleton_jm_paint_1(this, j_graphics)
    class(TestingInputSingleton), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_testInputPaintable%jm_paint_1(j_graphics)
  end subroutine

  recursive function TestingInputSingleton_jm_implmentsGameInputInterface_0(this) result(jresult)
    class(TestingInputSingleton), target :: this
    logical :: jresult
        jresult = .true.
        return
  end function
end module TestingInputSingleton_m

function TestingInputSingleton_jnew_0_jext() result(this)
  use TestingInputSingleton_m, only: JObject, TestingInputSingleton_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TestingInputSingleton_jnew_0()
end function

