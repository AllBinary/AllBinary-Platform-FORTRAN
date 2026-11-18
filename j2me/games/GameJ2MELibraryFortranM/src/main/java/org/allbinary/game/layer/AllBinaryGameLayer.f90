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
! package org.allbinary.game.layer
module AllBinaryGameLayer_m
  use JR_m
  use GL_m
  use Rectangle_m
  use BasicColor_m
  use BasicColorFactory_m
  use BasicColorSetUtil_m
  use NullPaintable_m
  use Paintable_m
  use OpenGLSurfaceChangedInterface_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use ForcedLogUtil_m
  use AllBinaryEventObject_m
  use EventStrings_m
  use CommonStrings_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use ViewPositionBase_m
  use ViewPositionEvent_m
  use ViewPositionEventListenerInterface_m
  use SWTUtil_m
  use SWTBlackPaintable_m
  use GameLayerUtil_m
  implicit none

  type, extends(AllBinaryLayer) :: AllBinaryGameLayer
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(BasicColorSetUtil), pointer :: f_basicSetColorUtil => null()
    class(BasicColor), pointer :: f_RED => null()
    class(Paintable), pointer :: f_paintable => null()
    class(BasicArrayList), pointer :: f_gameKeyEventList => null()
  contains
    procedure :: jm_set_1 => AllBinaryGameLayer_jm_set_1
    procedure :: jm_move_0 => AllBinaryGameLayer_jm_move_0
    procedure :: jm_getGameKeyEventList_0 => AllBinaryGameLayer_jm_getGameKeyEventList_0
    procedure :: jm_processInput_1 => AllBinaryGameLayer_jm_processInput_1
    procedure :: jm_processTick_1 => AllBinaryGameLayer_jm_processTick_1
    procedure :: jm_onEvent_1 => AllBinaryGameLayer_jm_onEvent_1
    procedure :: jm_onViewPositionChangeEvent_0 => AllBinaryGameLayer_jm_onViewPositionChangeEvent_0
    procedure :: jm_onChangeEvent_1 => AllBinaryGameLayer_jm_onChangeEvent_1
    procedure :: jm_paintFirst_1 => AllBinaryGameLayer_jm_paintFirst_1
    procedure :: jm_paintDebug_1 => AllBinaryGameLayer_jm_paintDebug_1
    procedure :: jm_setWidth_1 => AllBinaryGameLayer_jm_setWidth_1
    procedure :: jm_setHeight_1 => AllBinaryGameLayer_jm_setHeight_1
  end type

  ! AllBinaryGameLayer used as a ViewPositionEventListenerInterface
  type, extends(ViewPositionEventListenerInterface) :: AllBinaryGameLayer_jas_ViewPositionEventListenerInterface
    class(AllBinaryGameLayer), pointer :: jtarget => null()
  contains
    procedure :: jm_onChangeEvent_1 => AllBinaryGameLayer_jas_ViewPositionEventListenerInterface_jm_onChangeEvent_1
  end type

  ! AllBinaryGameLayer used as a OpenGLSurfaceChangedInterface
  type, extends(OpenGLSurfaceChangedInterface) :: AllBinaryGameLayer_jas_OpenGLSurfaceChangedInterface
    class(AllBinaryGameLayer), pointer :: jtarget => null()
  contains
    procedure :: jm_set_1 => AllBinaryGameLayer_jas_OpenGLSurfaceChangedInterface_jm_set_1
  end type


contains

  function AllBinaryGameLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryGameLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryGameLayer)
      jresult => object
    end select
  end function

  function AllBinaryGameLayer_jas_ViewPositionEventListenerInterface_jnew(object) result(jresult)
    class(AllBinaryGameLayer), target :: object
    class(AllBinaryGameLayer_jas_ViewPositionEventListenerInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'AllBinaryGameLayer'
    jresult%jtarget => object
  end function

  recursive subroutine AllBinaryGameLayer_jas_ViewPositionEventListenerInterface_jm_onChangeEvent_1(this, j_layerManagerEvent)
    class(AllBinaryGameLayer_jas_ViewPositionEventListenerInterface), target :: this
    class(ViewPositionEvent), target, optional :: j_layerManagerEvent
    call this%jtarget%jm_onChangeEvent_1(j_layerManagerEvent)
  end subroutine

  function AllBinaryGameLayer_jas_OpenGLSurfaceChangedInterface_jnew(object) result(jresult)
    class(AllBinaryGameLayer), target :: object
    class(AllBinaryGameLayer_jas_OpenGLSurfaceChangedInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'AllBinaryGameLayer'
    jresult%jtarget => object
  end function

  recursive subroutine AllBinaryGameLayer_jas_OpenGLSurfaceChangedInterface_jm_set_1(this, j_gl)
    class(AllBinaryGameLayer_jas_OpenGLSurfaceChangedInterface), target :: this
    class(GL), target, optional :: j_gl
    call this%jtarget%jm_set_1(j_gl)
  end subroutine

  recursive function AllBinaryGameLayer_jnew_3(j_name, j_layerInfo, j_viewPosition) result(this)
    character(len=*), intent(in) :: j_name
    class(Rectangle), target, optional :: j_layerInfo
    class(ViewPositionBase), target, optional :: j_viewPosition
    class(AllBinaryGameLayer), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'AllBinaryGameLayer'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_basicSetColorUtil => BasicColorSetUtil_jm_getInstance_0()
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_RED => jtemp1%f_RED
    this%f_paintable => AllBinaryGameLayer_jm_createPaintable_0()
    this%f_gameKeyEventList => BasicArrayListD_jnew_0()
        continue ! super()
  end function

  recursive function AllBinaryGameLayer_jm_createPaintable_0() result(jresult)
    class(Paintable), pointer :: jresult
        if (SWTUtil_jstatic_isSWT()) then
            jresult => SWTBlackPaintable_jnew_0()
            return
        end if
        jresult => NullPaintable_jm_getInstance_0()
        return
  end function

  recursive subroutine AllBinaryGameLayer_jm_set_1(this, j_gl)
    class(AllBinaryGameLayer), target :: this
    class(GL), target, optional :: j_gl
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive subroutine AllBinaryGameLayer_jm_move_0(this)
    class(AllBinaryGameLayer), target :: this
    continue
  end subroutine

  recursive function AllBinaryGameLayer_jm_getGameKeyEventList_0(this) result(jresult)
    class(AllBinaryGameLayer), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_gameKeyEventList
        return
  end function

  recursive subroutine AllBinaryGameLayer_jm_processInput_1(this, j_allBinaryLayerManager)
    class(AllBinaryGameLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive subroutine AllBinaryGameLayer_jm_processTick_1(this, j_allBinaryLayerManager)
    class(AllBinaryGameLayer), target :: this
    class(AllBinaryLayerManager), target, optional :: j_allBinaryLayerManager
        error stop JR_toString(JR_newJObject('Exception'))
  end subroutine

  recursive subroutine AllBinaryGameLayer_jm_onEvent_1(this, j_eventObject)
    class(AllBinaryGameLayer), target :: this
    class(AllBinaryEventObject), target, optional :: j_eventObject
    class(EventStrings), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => EventStrings_jm_getInstance_0()
        call ForcedLogUtil_jm_log_2(jtemp2%f_PERFORMANCE_MESSAGE, this)
  end subroutine

  recursive subroutine AllBinaryGameLayer_jm_onViewPositionChangeEvent_0(this)
    class(AllBinaryGameLayer), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_onChangeEvent_1(this%f_viewPositionEvent)
  end subroutine

  recursive subroutine AllBinaryGameLayer_jm_onChangeEvent_1(this, j_layerManagerEvent)
    class(AllBinaryGameLayer), target :: this
    class(ViewPositionEvent), target, optional :: j_layerManagerEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (GameLayerUtil_jm_isOnScreen_1(this)) then
            call this%jm_setVisible_1(.true.)
        else
            call this%jm_setVisible_1(.false.)
        end if
  end subroutine

  recursive subroutine AllBinaryGameLayer_jm_paintFirst_1(this, j_graphics)
    class(AllBinaryGameLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_paintable%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine AllBinaryGameLayer_jm_paintDebug_1(this, j_graphics)
    class(AllBinaryGameLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    class(ViewPositionBase), pointer :: j_viewPosition
    integer(4) :: j_viewX
    integer(4) :: j_viewY
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_viewPosition => this%jm_getViewPosition_0()
        j_viewX = j_viewPosition%jm_getX_0()
        j_viewY = j_viewPosition%jm_getY_0()
        call this%f_basicSetColorUtil%jm_setBasicColorP_2(j_graphics, this%f_RED)
        call j_graphics%jm_drawRect_4(j_viewX, j_viewY, this%jm_getWidth_0(), this%jm_getHeight_0())
  end subroutine

  recursive subroutine AllBinaryGameLayer_jm_setWidth_1(this, j_width)
    class(AllBinaryGameLayer), target :: this
    integer(4), value :: j_width
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%AllBinaryLayer%jm_setLayerWidth_1(j_width)
        call this%jm_setHalfWidth_1(shifta(j_width, iand(1, 31)))
  end subroutine

  recursive subroutine AllBinaryGameLayer_jm_setHeight_1(this, j_height)
    class(AllBinaryGameLayer), target :: this
    integer(4), value :: j_height
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%AllBinaryLayer%jm_setLayerHeight_1(j_height)
        call this%jm_setHalfHeight_1(shifta(j_height, iand(1, 31)))
  end subroutine
end module AllBinaryGameLayer_m

