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
! package org.allbinary.graphics.opengles
module CurrentDisplayableFactory_m
  use JR_m
  use J2MEUtil_m
  use Features_m
  use AllBinaryGameCanvas_m
  use DemoCanvas_m
  use GameInputMappingCanvas_m
  use GameInputMappingInstructionsCanvas_m
  use GameRunnable_m
  use NullDisplayable_m
  use NullWaitGameRunnable_m
  use SWTUtil_m
  use HighScoresCanvas_m
  use GraphicsStrings_m
  use CanvasStrings_m
  use MyCanvas_m
  use PreLogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonSeps_m
  use CommonStrings_m
  use NullRunnable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use OpenGLFeatureFactory_m
  implicit none

  type, extends(JObject) :: CurrentDisplayableFactory
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(CanvasStrings), pointer :: f_canvasStrings => null()
    class(StringUtil), pointer :: f_stringUtil => null()
    character(len=:), allocatable :: f_SET_DISPLAYABLE
    character(len=:), allocatable :: f_SET_RUNNABLE
    character(len=:), allocatable :: f_CLEAR_RUNNABLE
    character(len=:), allocatable :: f_SET_USED_RUNNABLE
    character(len=:), allocatable :: f_RUNNABLE_u8
    character(len=:), allocatable :: f_RUNNABLE_WAS_ALREADY_IN_USE
    class(BasicArrayList), pointer :: f_DEFAULT_CHILD_NAME_LIST => null()
    class(Displayable), pointer :: f_displayable => null()
    class(Displayable), pointer :: f_openGlReadydisplayable => null()
    class(GameRunnable), pointer :: f_runnable_u0 => null()
    class(GameRunnable), pointer :: f_usedRunnable => null()
  contains
    procedure :: jm_setMyCanvas_1 => CurrentDisplayableFactory_jm_setMyCanvas_1
    procedure :: jm_setDisplayable_1 => CurrentDisplayableFactory_jm_setDisplayable_1
    procedure :: jm_setOpenGlReadydisplayable_1 => CurrentDisplayableFactory_jm_setOpenGlReadydisplayable_1
    procedure :: jm_getOpenGlReadydisplayable_0 => CurrentDisplayableFactory_jm_getOpenGlReadydisplayable_0
    procedure :: jm_setRunnable_1 => CurrentDisplayableFactory_jm_setRunnable_1
    procedure :: jm_clearRunnable_0 => CurrentDisplayableFactory_jm_clearRunnable_0
    procedure :: jm_update_0 => CurrentDisplayableFactory_jm_update_0
    procedure :: jm_getDisplayable_0 => CurrentDisplayableFactory_jm_getDisplayable_0
    procedure :: jm_getUsedRunnable_0 => CurrentDisplayableFactory_jm_getUsedRunnable_0
    procedure :: jm_setUsedRunnable_1 => CurrentDisplayableFactory_jm_setUsedRunnable_1
  end type

  class(CurrentDisplayableFactory), pointer, save :: CurrentDisplayableFactory_jcell_instance => null()
  logical, save :: CurrentDisplayableFactory_jset_instance = .false.

contains

  function CurrentDisplayableFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CurrentDisplayableFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CurrentDisplayableFactory)
      jresult => object
    end select
  end function

  function CurrentDisplayableFactory_jstatic_instance() result(jresult)
    class(CurrentDisplayableFactory), pointer :: jresult
    if (.not. CurrentDisplayableFactory_jset_instance) then
      CurrentDisplayableFactory_jset_instance = .true.
      CurrentDisplayableFactory_jcell_instance => CurrentDisplayableFactory_jnew_0()
    end if
    jresult => CurrentDisplayableFactory_jcell_instance
  end function

  subroutine CurrentDisplayableFactory_jsetstatic_instance(jvalue)
    class(CurrentDisplayableFactory), target, optional :: jvalue
    CurrentDisplayableFactory_jset_instance = .true.
    if (present(jvalue)) then
      CurrentDisplayableFactory_jcell_instance => jvalue
    else
      CurrentDisplayableFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function CurrentDisplayableFactory_jnew_0() result(this)
    class(CurrentDisplayableFactory), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'CurrentDisplayableFactory'
    this%f_SET_DISPLAYABLE = ''
    this%f_SET_RUNNABLE = ''
    this%f_CLEAR_RUNNABLE = ''
    this%f_SET_USED_RUNNABLE = ''
    this%f_RUNNABLE_u8 = ''
    this%f_RUNNABLE_WAS_ALREADY_IN_USE = ''
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_canvasStrings => CanvasStrings_jm_getInstance_0()
    this%f_stringUtil => StringUtil_jm_getInstance_0()
    this%f_SET_DISPLAYABLE = 'setDisplayable'
    this%f_SET_RUNNABLE = 'setRunnable'
    this%f_CLEAR_RUNNABLE = 'clearRunnable'
    this%f_SET_USED_RUNNABLE = 'setUsedRunnable'
    this%f_RUNNABLE_u8 = 'Runnable: '
    this%f_RUNNABLE_WAS_ALREADY_IN_USE = 'Runnable was already in use: '
    this%f_DEFAULT_CHILD_NAME_LIST => BasicArrayListD_jnew_0()
    this%f_displayable => NullDisplayable_jm_getInstance_0()
    this%f_openGlReadydisplayable => NullDisplayable_jm_getInstance_0()
    this%f_runnable_u0 => NullWaitGameRunnable_jm_getInstance_0()
    this%f_usedRunnable => NullWaitGameRunnable_jm_getInstance_0()
        jdiscardBoolean = this%f_DEFAULT_CHILD_NAME_LIST%jm_add_1(JR_boxString(this%f_canvasStrings%f_ABOUT))
        jdiscardBoolean = this%f_DEFAULT_CHILD_NAME_LIST%jm_add_1(JR_boxString(this%f_canvasStrings%f_OPTIONS))
        jdiscardBoolean = this%f_DEFAULT_CHILD_NAME_LIST%jm_add_1(JR_boxString(GameInputMappingCanvas_jstatic_NAME()))
        jdiscardBoolean = this%f_DEFAULT_CHILD_NAME_LIST%jm_add_1(JR_boxString(GameInputMappingInstructionsCanvas_jstatic_NAME()))
        jdiscardBoolean = this%f_DEFAULT_CHILD_NAME_LIST%jm_add_1(JR_boxString(HighScoresCanvas_jstatic_NAME()))
  end function

  recursive function CurrentDisplayableFactory_jm_getInstance_0() result(jresult)
    class(CurrentDisplayableFactory), pointer :: jresult
        jresult => CurrentDisplayableFactory_jstatic_instance()
        return
  end function

  recursive subroutine CurrentDisplayableFactory_jm_setMyCanvas_1(this, j_displayable)
    class(CurrentDisplayableFactory), target :: this
    class(MyCanvas), target, optional :: j_displayable
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((JR_className(this%f_displayable) == 'MyCanvas')) then
            if (j_displayable%jm_hasChild_1(MyCanvas_jcast(this%f_displayable))) then
                jtemp3 => StringMaker_jnew_0()
                jtemp2 => jtemp3%jm_append_1('Child Displayable is already set for: ')
                jtemp1 => jtemp2%jm_append_1(this%f_stringUtil%jm_toString_1(j_displayable))
                call PreLogUtil_jm_put_3(jtemp1%jm_toString_0(), this, this%f_SET_DISPLAYABLE)
                return
            end if
        end if
        call this%jm_setDisplayable_1(j_displayable)
  end subroutine

  recursive subroutine CurrentDisplayableFactory_jm_setDisplayable_1(this, j_displayable)
    class(CurrentDisplayableFactory), target :: this
    class(Displayable), target, optional :: j_displayable
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_displayable => j_displayable
        call this%jm_setOpenGlReadydisplayable_1(j_displayable)
  end subroutine

  recursive subroutine CurrentDisplayableFactory_jm_setOpenGlReadydisplayable_1(this, j_openGlReadydisplayable)
    class(CurrentDisplayableFactory), target :: this
    class(Displayable), target, optional :: j_openGlReadydisplayable
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_openGlReadydisplayable => j_openGlReadydisplayable
        call this%jm_update_0()
  end subroutine

  recursive function CurrentDisplayableFactory_jm_getOpenGlReadydisplayable_0(this) result(jresult)
    class(CurrentDisplayableFactory), target :: this
    class(Displayable), pointer :: jresult
        jresult => this%f_openGlReadydisplayable
        return
  end function

  recursive subroutine CurrentDisplayableFactory_jm_setRunnable_1(this, j_runnable)
    class(CurrentDisplayableFactory), target :: this
    class(GameRunnable), target, optional :: j_runnable
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
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
        jtemp6 => StringMaker_jnew_0()
        jtemp5 => jtemp6%jm_append_1(this%f_RUNNABLE_u8)
        jtemp4 => jtemp5%jm_append_1(this%f_stringUtil%jm_toString_1(j_runnable))
        call PreLogUtil_jm_put_3(jtemp4%jm_toString_0(), this, this%f_SET_RUNNABLE)
        this%f_runnable_u0 => j_runnable
        if ((.not. JR_same(this%f_usedRunnable, this%f_runnable_u0))) then
            call this%jm_update_0()
        else
            jtemp9 => StringMaker_jnew_0()
            jtemp8 => jtemp9%jm_append_1(this%f_RUNNABLE_WAS_ALREADY_IN_USE)
            jtemp7 => jtemp8%jm_append_1(this%f_stringUtil%jm_toString_1(j_runnable))
            call PreLogUtil_jm_put_3(jtemp7%jm_toString_0(), this, this%f_SET_RUNNABLE)
        end if
  end subroutine

  recursive subroutine CurrentDisplayableFactory_jm_clearRunnable_0(this)
    class(CurrentDisplayableFactory), target :: this
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp12 => StringMaker_jnew_0()
        jtemp11 => jtemp12%jm_append_1(this%f_RUNNABLE_u8)
        jtemp10 => jtemp11%jm_append_1(this%f_stringUtil%jm_toString_1(NullRunnable_jm_getInstance_0()))
        call PreLogUtil_jm_put_3(jtemp10%jm_toString_0(), this, this%f_CLEAR_RUNNABLE)
        call this%jm_setUsedRunnable_1(NullWaitGameRunnable_jm_getInstance_0())
  end subroutine

  recursive subroutine CurrentDisplayableFactory_jm_update_0(this)
    class(CurrentDisplayableFactory), target :: this
    class(CommonSeps), pointer :: j_commonSeps
    class(Features), pointer :: j_features
    class(StringMaker), pointer :: j_stringMaker
    class(OpenGLFeatureFactory), pointer :: jtemp13
    class(OpenGLFeatureFactory), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
    class(StringMaker), pointer :: jtemp17
    class(StringMaker), pointer :: jtemp18
    class(StringMaker), pointer :: jtemp19
    class(StringMaker), pointer :: jtemp20
    class(StringMaker), pointer :: jtemp21
    class(OpenGLFeatureFactory), pointer :: jtemp22
    class(StringMaker), pointer :: jtemp23
    class(StringMaker), pointer :: jtemp24
    class(StringMaker), pointer :: jtemp25
    class(StringMaker), pointer :: jtemp26
    class(StringMaker), pointer :: jtemp27
    class(GraphicsStrings), pointer :: jtemp28
    class(StringMaker), pointer :: jtemp29
    class(StringMaker), pointer :: jtemp30
    class(StringMaker), pointer :: jtemp31
    class(StringMaker), pointer :: jtemp32
    class(StringMaker), pointer :: jtemp33
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! synchronized
            j_commonSeps => CommonSeps_jm_getInstance_0()
            j_features => Features_jm_getInstance_0()
            j_stringMaker => StringMaker_jnew_0()
            jdiscardRef => j_stringMaker%jm_append_1(this%f_stringUtil%jm_toString_1(this%f_openGlReadydisplayable))
            jtemp13 => OpenGLFeatureFactory_jm_getInstance_0()
            if ((SWTUtil_jstatic_isSWT() .and. (.not. j_features%jm_isDefault_1(jtemp13%f_OPENGL)))) then
                jtemp33 => j_stringMaker%jm_append_1(j_commonSeps%f_SPACE)
                jtemp32 => jtemp33%jm_append_1(SWTUtil_jstatic_SWT())
                jtemp31 => jtemp32%jm_append_1(j_commonSeps%f_SPACE)
                jtemp30 => jtemp31%jm_append_1(this%f_RUNNABLE_u8)
                jtemp29 => jtemp30%jm_append_1(this%f_stringUtil%jm_toString_1(NullRunnable_jm_getInstance_0()))
                call PreLogUtil_jm_put_3(jtemp29%jm_toString_0(), this, this%f_commonStrings%f_UPDATE)
                call this%jm_setUsedRunnable_1(NullWaitGameRunnable_jm_getInstance_0())
            else if (J2MEUtil_jm_isHTML_0()) then
                jtemp28 => GraphicsStrings_jm_getInstance_0()
                jtemp27 => j_stringMaker%jm_append_1(j_commonSeps%f_SPACE)
                jtemp26 => jtemp27%jm_append_1(jtemp28%f_HTML)
                jtemp25 => jtemp26%jm_append_1(j_commonSeps%f_SPACE)
                jtemp24 => jtemp25%jm_append_1(this%f_RUNNABLE_u8)
                jtemp23 => jtemp24%jm_append_1(this%f_stringUtil%jm_toString_1(this%f_runnable_u0))
                call PreLogUtil_jm_put_3(jtemp23%jm_toString_0(), this, this%f_commonStrings%f_UPDATE)
                call this%jm_setUsedRunnable_1(this%f_runnable_u0)
            else if ((((JR_className(this%f_openGlReadydisplayable) == 'DemoCanvas') .or. (JR_className(this%f_openGlReadydisplayable) == 'AllBinaryGameCanvas')) .or. j_features%jm_isDefault_1(jtemp14%f_OPENGL))) then
                jtemp22 => OpenGLFeatureFactory_jm_getInstance_0()
                jtemp21 => j_stringMaker%jm_append_1(j_commonSeps%f_SPACE)
                jtemp20 => jtemp21%jm_append_1(JR_toString(jtemp22%f_OPENGL))
                jtemp19 => jtemp20%jm_append_1(j_commonSeps%f_SPACE)
                jtemp18 => jtemp19%jm_append_1(this%f_RUNNABLE_u8)
                jtemp17 => jtemp18%jm_append_1(this%f_stringUtil%jm_toString_1(this%f_runnable_u0))
                call PreLogUtil_jm_put_3(jtemp17%jm_toString_0(), this, this%f_commonStrings%f_UPDATE)
                call this%jm_setUsedRunnable_1(this%f_runnable_u0)
            else
                jtemp16 => j_stringMaker%jm_append_1(this%f_RUNNABLE_u8)
                jtemp15 => jtemp16%jm_append_1(this%f_stringUtil%jm_toString_1(NullRunnable_jm_getInstance_0()))
                call PreLogUtil_jm_put_3(jtemp15%jm_toString_0(), this, this%f_commonStrings%f_UPDATE)
                call this%jm_setUsedRunnable_1(NullWaitGameRunnable_jm_getInstance_0())
            end if
  end subroutine

  recursive function CurrentDisplayableFactory_jm_getDisplayable_0(this) result(jresult)
    class(CurrentDisplayableFactory), target :: this
    class(Displayable), pointer :: jresult
        jresult => this%f_displayable
        return
  end function

  recursive function CurrentDisplayableFactory_jm_getUsedRunnable_0(this) result(jresult)
    class(CurrentDisplayableFactory), target :: this
    class(GameRunnable), pointer :: jresult
        jresult => this%f_usedRunnable
        return
  end function

  recursive subroutine CurrentDisplayableFactory_jm_setUsedRunnable_1(this, j_usedRunnable)
    class(CurrentDisplayableFactory), target :: this
    class(GameRunnable), target, optional :: j_usedRunnable
    class(StringMaker), pointer :: jtemp34
    class(StringMaker), pointer :: jtemp35
    class(StringMaker), pointer :: jtemp36
    class(StringMaker), pointer :: jtemp37
    class(StringMaker), pointer :: jtemp38
    class(CommonSeps), pointer :: jtemp39
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp38 => StringMaker_jnew_0()
        jtemp39 => CommonSeps_jm_getInstance_0()
        jtemp37 => jtemp38%jm_append_1(this%f_RUNNABLE_u8)
        jtemp36 => jtemp37%jm_append_1(this%f_stringUtil%jm_toString_1(this%f_runnable_u0))
        jtemp35 => jtemp36%jm_append_1(jtemp39%f_COLON_SEP)
        jtemp34 => jtemp35%jm_append_1(this%f_stringUtil%jm_toString_1(j_usedRunnable))
        call PreLogUtil_jm_put_3(jtemp34%jm_toString_0(), this, this%f_SET_USED_RUNNABLE)
        this%f_usedRunnable => j_usedRunnable
  end subroutine
end module CurrentDisplayableFactory_m

