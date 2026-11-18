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
! package org.allbinary.layer
module AllBinaryLayer_m
  use JR_m
  use BasicGroupFactory_m
  use Group_m
  use GPoint_m
  use Rectangle_m
  use RectangleFactory_m
  use OpenGLFeatureUtil_m
  use TsUtil_m
  use StringMaker_m
  use StringUtil_m
  use PositionStrings_m
  use CommonLabels_m
  use CommonSeps_m
  use ViewPositionBase_m
  use ViewPositionEvent_m
  use Integer_m
  use ABLayer_m
  use LayerInterface_m
  implicit none

  type, extends(ABLayer) :: AllBinaryLayer
    class(ViewPositionEvent), pointer :: f_viewPositionEvent => null()
    integer(4) :: f_halfWidth = 0
    integer(4) :: f_halfHeight = 0
    character(len=:), allocatable :: f_name
    class(ViewPositionBase), pointer :: f_viewPosition => null()
  contains
    procedure :: jm_setPosition_3 => AllBinaryLayer_jm_setPosition_3
    procedure :: jm_moveDXYZ_3 => AllBinaryLayer_jm_moveDXYZ_3
    procedure :: jm_getXP_0 => AllBinaryLayer_jm_getXP_0
    procedure :: jm_getYP_0 => AllBinaryLayer_jm_getYP_0
    procedure :: jm_getZP_0 => AllBinaryLayer_jm_getZP_0
    procedure :: jm_getWidth_0 => AllBinaryLayer_jm_getWidth_0
    procedure :: jm_getHeight_0 => AllBinaryLayer_jm_getHeight_0
    procedure :: jm_setVisible_1 => AllBinaryLayer_jm_setVisible_1
    procedure :: jm_isVisible_0 => AllBinaryLayer_jm_isVisible_0
    procedure :: jm_paint_1 => AllBinaryLayer_jm_paint_1
    procedure :: jm_onChangeEvent_1 => AllBinaryLayer_jm_onChangeEvent_1
    procedure :: jm_paintThreed_1 => AllBinaryLayer_jm_paintThreed_1
    procedure :: jm_getX2_0 => AllBinaryLayer_jm_getX2_0
    procedure :: jm_getY2_0 => AllBinaryLayer_jm_getY2_0
    procedure :: jm_getZ2_0 => AllBinaryLayer_jm_getZ2_0
    procedure :: jm_getName_0 => AllBinaryLayer_jm_getName_0
    procedure :: jm_setHalfWidth_1 => AllBinaryLayer_jm_setHalfWidth_1
    procedure :: jm_getHalfWidth_0 => AllBinaryLayer_jm_getHalfWidth_0
    procedure :: jm_setHalfHeight_1 => AllBinaryLayer_jm_setHalfHeight_1
    procedure :: jm_getHalfHeight_0 => AllBinaryLayer_jm_getHalfHeight_0
    procedure :: jm_getHalfDepth_0 => AllBinaryLayer_jm_getHalfDepth_0
    procedure :: jm_getViewPosition_0 => AllBinaryLayer_jm_getViewPosition_0
    procedure :: jm_setViewPosition_1 => AllBinaryLayer_jm_setViewPosition_1
    procedure :: jm_getGroupInterface_0 => AllBinaryLayer_jm_getGroupInterface_0
    procedure :: jm_implmentsTickableInterface_0 => AllBinaryLayer_jm_implmentsTickableInterface_0
    procedure :: jm_implmentsGameInputInterface_0 => AllBinaryLayer_jm_implmentsGameInputInterface_0
    procedure :: jm_implmentsArtificialIntelligenceCompositeInterface_0 => AllBinaryLayer_jm_implmentsArtificialIntelligenceCompositeInterface_0
    procedure :: jm_implmentsCollidableInterface_0 => AllBinaryLayer_jm_implmentsCollidableInterface_0
    procedure :: jm_implementsThreedInterface_0 => AllBinaryLayer_jm_implementsThreedInterface_0
    procedure :: jm_getType_0 => AllBinaryLayer_jm_getType_0
    procedure :: jm_getMultiPlayerType_0 => AllBinaryLayer_jm_getMultiPlayerType_0
    procedure :: jm_toStringAppend_1 => AllBinaryLayer_jm_toStringAppend_1
    procedure :: jm_toString_0 => AllBinaryLayer_jm_toString_0
  end type

  ! AllBinaryLayer used as a LayerInterface
  type, extends(LayerInterface) :: AllBinaryLayer_jas_LayerInterface
    class(AllBinaryLayer), pointer :: jtarget => null()
  contains
    procedure :: jm_moveDXYZ_3 => AllBinaryLayer_jas_LayerInterface_jm_moveDXYZ_3
    procedure :: jm_getXP_0 => AllBinaryLayer_jas_LayerInterface_jm_getXP_0
    procedure :: jm_getYP_0 => AllBinaryLayer_jas_LayerInterface_jm_getYP_0
    procedure :: jm_getZP_0 => AllBinaryLayer_jas_LayerInterface_jm_getZP_0
    procedure :: jm_getWidth_0 => AllBinaryLayer_jas_LayerInterface_jm_getWidth_0
    procedure :: jm_getHeight_0 => AllBinaryLayer_jas_LayerInterface_jm_getHeight_0
    procedure :: jm_setVisible_1 => AllBinaryLayer_jas_LayerInterface_jm_setVisible_1
    procedure :: jm_isVisible_0 => AllBinaryLayer_jas_LayerInterface_jm_isVisible_0
    procedure :: jm_getX2_0 => AllBinaryLayer_jas_LayerInterface_jm_getX2_0
    procedure :: jm_getY2_0 => AllBinaryLayer_jas_LayerInterface_jm_getY2_0
    procedure :: jm_getZ2_0 => AllBinaryLayer_jas_LayerInterface_jm_getZ2_0
    procedure :: jm_getHalfWidth_0 => AllBinaryLayer_jas_LayerInterface_jm_getHalfWidth_0
    procedure :: jm_getHalfHeight_0 => AllBinaryLayer_jas_LayerInterface_jm_getHalfHeight_0
    procedure :: jm_implmentsTickableInterface_0 => AllBinaryLayer_jas_LayerInterface_jm_implmentsTickableInterface_0
    procedure :: jm_implmentsGameInputInterface_0 => AllBinaryLayer_jas_LayerInterface_jm_implmentsGameInputInterface_0
    procedure :: jm_implmentsArtificialIntelligenceCompositeInterface_0 => AllBinaryLayer_jas_LayerInterface_jm_implmentsArtificialIntelligenceCompositeInterface_0
    procedure :: jm_implmentsCollidableInterface_0 => AllBinaryLayer_jas_LayerInterface_jm_implmentsCollidableInterface_0
    procedure :: jm_getType_0 => AllBinaryLayer_jas_LayerInterface_jm_getType_0
  end type

  class(AllBinaryLayer), pointer, save :: AllBinaryLayer_jcell_NULL_ALLBINARY_LAYER => null()
  logical, save :: AllBinaryLayer_jset_NULL_ALLBINARY_LAYER = .false.
  character(len=:), allocatable, save :: AllBinaryLayer_jcell_TYPE
  logical, save :: AllBinaryLayer_jset_TYPE = .false.

contains

  function AllBinaryLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryLayer)
      jresult => object
    end select
  end function

  function AllBinaryLayer_jas_LayerInterface_jnew(object) result(jresult)
    class(AllBinaryLayer), target :: object
    class(AllBinaryLayer_jas_LayerInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'AllBinaryLayer'
    jresult%jtarget => object
  end function

  recursive subroutine AllBinaryLayer_jas_LayerInterface_jm_moveDXYZ_3(this, j_dx, j_dy, j_dz)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4), value :: j_dz
    call this%jtarget%jm_moveDXYZ_3(j_dx, j_dy, j_dz)
  end subroutine

  recursive function AllBinaryLayer_jas_LayerInterface_jm_getXP_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getXP_0()
  end function

  recursive function AllBinaryLayer_jas_LayerInterface_jm_getYP_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getYP_0()
  end function

  recursive function AllBinaryLayer_jas_LayerInterface_jm_getZP_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getZP_0()
  end function

  recursive function AllBinaryLayer_jas_LayerInterface_jm_getWidth_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getWidth_0()
  end function

  recursive function AllBinaryLayer_jas_LayerInterface_jm_getHeight_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getHeight_0()
  end function

  recursive subroutine AllBinaryLayer_jas_LayerInterface_jm_setVisible_1(this, j_visible)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    logical, value :: j_visible
    call this%jtarget%jm_setVisible_1(j_visible)
  end subroutine

  recursive function AllBinaryLayer_jas_LayerInterface_jm_isVisible_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_isVisible_0()
  end function

  recursive function AllBinaryLayer_jas_LayerInterface_jm_getX2_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getX2_0()
  end function

  recursive function AllBinaryLayer_jas_LayerInterface_jm_getY2_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getY2_0()
  end function

  recursive function AllBinaryLayer_jas_LayerInterface_jm_getZ2_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getZ2_0()
  end function

  recursive function AllBinaryLayer_jas_LayerInterface_jm_getHalfWidth_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getHalfWidth_0()
  end function

  recursive function AllBinaryLayer_jas_LayerInterface_jm_getHalfHeight_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getHalfHeight_0()
  end function

  recursive function AllBinaryLayer_jas_LayerInterface_jm_implmentsTickableInterface_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_implmentsTickableInterface_0()
  end function

  recursive function AllBinaryLayer_jas_LayerInterface_jm_implmentsGameInputInterface_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_implmentsGameInputInterface_0()
  end function

  recursive function AllBinaryLayer_jas_LayerInterface_jm_implmentsArtificialIntelligenceCompositeInterface_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_implmentsArtificialIntelligenceCompositeInterface_0()
  end function

  recursive function AllBinaryLayer_jas_LayerInterface_jm_implmentsCollidableInterface_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    logical :: jresult
    jresult = this%jtarget%jm_implmentsCollidableInterface_0()
  end function

  recursive function AllBinaryLayer_jas_LayerInterface_jm_getType_0(this) result(jresult)
    class(AllBinaryLayer_jas_LayerInterface), target :: this
    integer(4) :: jresult
    jresult = this%jtarget%jm_getType_0()
  end function

  function AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER() result(jresult)
    class(AllBinaryLayer), pointer :: jresult
    class(StringUtil), pointer :: jtemp1
    if (.not. AllBinaryLayer_jset_NULL_ALLBINARY_LAYER) then
      AllBinaryLayer_jset_NULL_ALLBINARY_LAYER = .true.
      jtemp1 => StringUtil_jm_getInstance_0()
    AllBinaryLayer_jcell_NULL_ALLBINARY_LAYER => AllBinaryLayer_jnew_3(jtemp1%f_EMPTY_STRING, RectangleFactory_jstatic_SINGLETON(), ViewPositionBase_jstatic_NULL_VIEW_POSITION())
    end if
    jresult => AllBinaryLayer_jcell_NULL_ALLBINARY_LAYER
  end function

  subroutine AllBinaryLayer_jsetstatic_NULL_ALLBINARY_LAYER(jvalue)
    class(AllBinaryLayer), target, optional :: jvalue
    AllBinaryLayer_jset_NULL_ALLBINARY_LAYER = .true.
    if (present(jvalue)) then
      AllBinaryLayer_jcell_NULL_ALLBINARY_LAYER => jvalue
    else
      AllBinaryLayer_jcell_NULL_ALLBINARY_LAYER => null()
    end if
  end subroutine

  function AllBinaryLayer_jstatic_TYPE() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. AllBinaryLayer_jset_TYPE) then
      AllBinaryLayer_jset_TYPE = .true.
      AllBinaryLayer_jcell_TYPE = 'Type: '
    end if
    jresult = AllBinaryLayer_jcell_TYPE
  end function

  subroutine AllBinaryLayer_jsetstatic_TYPE(jvalue)
    character(len=*), intent(in) :: jvalue
    AllBinaryLayer_jset_TYPE = .true.
    AllBinaryLayer_jcell_TYPE = jvalue
  end subroutine

  recursive function AllBinaryLayer_jnew_3(j_name, j_rectangle, j_viewPosition) result(this)
    character(len=*), intent(in) :: j_name
    class(Rectangle), target, optional :: j_rectangle
    class(ViewPositionBase), target, optional :: j_viewPosition
    class(AllBinaryLayer), pointer :: this
    character(len=:), allocatable :: j_localName
    class(GPoint), pointer :: j_point
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(CommonSeps), pointer :: jtemp6
    class(TsUtil), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'AllBinaryLayer'
    this%f_name = ''
    this%f_viewPositionEvent => ViewPositionEvent_jnew_1(this)
    
    
    
    this%f_viewPosition => ViewPositionBase_jstatic_NULL_VIEW_POSITION()
        continue ! super()
        continue
        jtemp7 => TsUtil_jm_getInstance_0()
        jtemp6 => CommonSeps_jm_getInstance_0()
        jtemp5 => StringMaker_jnew_0()
        jtemp4 => jtemp5%jm_append_1(j_name)
        jtemp3 => jtemp4%jm_append_1(jtemp6%f_COLON)
        jtemp2 => jtemp3%jm_append_1(Integer_jm_toHexString_1(jtemp7%jm_hashCode_1(this)))
        j_localName = jtemp2%jm_toString_0()
        this%f_name = j_localName
        j_point => j_rectangle%jm_getPoint_0()
        call this%jm_setPosition_3(j_point%jm_getX_0(), j_point%jm_getY_0(), j_point%jm_getZ_0())
        call this%jm_setHalfWidth_1((shifta(this%jm_getWidth_0(), iand(1, 31))))
        call this%jm_setHalfHeight_1((shifta(this%jm_getHeight_0(), iand(1, 31))))
        this%f_viewPosition => j_viewPosition
        call this%f_viewPosition%jm_setAllbinaryLayer_1(this)
  end function

  recursive subroutine AllBinaryLayer_jm_setPosition_3(this, j_x, j_y, j_z)
    class(AllBinaryLayer), target :: this
    integer(4), value :: j_x
    integer(4), value :: j_y
    integer(4), value :: j_z
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%ABLayer%jm_setPosition_3(j_x, j_y, j_z)
  end subroutine

  recursive subroutine AllBinaryLayer_jm_moveDXYZ_3(this, j_dx, j_dy, j_dz)
    class(AllBinaryLayer), target :: this
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4), value :: j_dz
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%ABLayer%jm_moveDXYZ_3(j_dx, j_dy, j_dz)
  end subroutine

  recursive function AllBinaryLayer_jm_getXP_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    integer(4) :: jresult
        jresult = this%ABLayer%jm_getXP_0()
        return
  end function

  recursive function AllBinaryLayer_jm_getYP_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    integer(4) :: jresult
        jresult = this%ABLayer%jm_getYP_0()
        return
  end function

  recursive function AllBinaryLayer_jm_getZP_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    integer(4) :: jresult
        jresult = this%ABLayer%jm_getZP_0()
        return
  end function

  recursive function AllBinaryLayer_jm_getWidth_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    integer(4) :: jresult
        jresult = this%ABLayer%jm_getWidth_0()
        return
  end function

  recursive function AllBinaryLayer_jm_getHeight_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    integer(4) :: jresult
        jresult = this%ABLayer%jm_getHeight_0()
        return
  end function

  recursive subroutine AllBinaryLayer_jm_setVisible_1(this, j_visible)
    class(AllBinaryLayer), target :: this
    logical, value :: j_visible
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%ABLayer%jm_setVisible_1(j_visible)
  end subroutine

  recursive function AllBinaryLayer_jm_isVisible_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    logical :: jresult
        jresult = this%ABLayer%jm_isVisible_0()
        return
  end function

  recursive subroutine AllBinaryLayer_jm_paint_1(this, j_graphics)
    class(AllBinaryLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%ABLayer%jm_paint_1(j_graphics)
  end subroutine

  recursive subroutine AllBinaryLayer_jm_onChangeEvent_1(this, j_layerManagerEvent)
    class(AllBinaryLayer), target :: this
    class(ViewPositionEvent), target, optional :: j_layerManagerEvent
    continue
  end subroutine

  recursive subroutine AllBinaryLayer_jm_paintThreed_1(this, j_graphics)
    class(AllBinaryLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine

  recursive function AllBinaryLayer_jm_getX2_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    integer(4) :: jresult
        jresult = (this%jm_getXP_0() + this%jm_getWidth_0())
        return
  end function

  recursive function AllBinaryLayer_jm_getY2_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    integer(4) :: jresult
        jresult = (this%jm_getYP_0() + this%jm_getHeight_0())
        return
  end function

  recursive function AllBinaryLayer_jm_getZ2_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    integer(4) :: jresult
        jresult = ((this%jm_getZP_0() + this%jm_getDepth_0()))
        return
  end function

  recursive function AllBinaryLayer_jm_getName_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive subroutine AllBinaryLayer_jm_setHalfWidth_1(this, j_halfWidth)
    class(AllBinaryLayer), target :: this
    integer(4), value :: j_halfWidth
        this%f_halfWidth = j_halfWidth
  end subroutine

  recursive function AllBinaryLayer_jm_getHalfWidth_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    integer(4) :: jresult
        jresult = this%f_halfWidth
        return
  end function

  recursive subroutine AllBinaryLayer_jm_setHalfHeight_1(this, j_halfHeight)
    class(AllBinaryLayer), target :: this
    integer(4), value :: j_halfHeight
        this%f_halfHeight = j_halfHeight
  end subroutine

  recursive function AllBinaryLayer_jm_getHalfHeight_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    integer(4) :: jresult
        jresult = this%f_halfHeight
        return
  end function

  recursive function AllBinaryLayer_jm_getHalfDepth_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    integer(4) :: jresult
        jresult = (this%jm_getDepth_0() / 2)
        return
  end function

  recursive function AllBinaryLayer_jm_getViewPosition_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    class(ViewPositionBase), pointer :: jresult
        jresult => this%f_viewPosition
        return
  end function

  recursive subroutine AllBinaryLayer_jm_setViewPosition_1(this, j_viewPosition)
    class(AllBinaryLayer), target :: this
    class(ViewPositionBase), target, optional :: j_viewPosition
        this%f_viewPosition => j_viewPosition
  end subroutine

  recursive function AllBinaryLayer_jm_getGroupInterface_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    type(JRef), allocatable :: jresult(:)
    class(BasicGroupFactory), pointer :: jtemp8
        jtemp8 => BasicGroupFactory_jm_getInstance_0()
        jresult = jtemp8%f_NONE_ARRAY
        return
  end function

  recursive function AllBinaryLayer_jm_implmentsTickableInterface_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function AllBinaryLayer_jm_implmentsGameInputInterface_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function AllBinaryLayer_jm_implmentsArtificialIntelligenceCompositeInterface_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function AllBinaryLayer_jm_implmentsCollidableInterface_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function AllBinaryLayer_jm_implementsThreedInterface_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    logical :: jresult
    class(OpenGLFeatureUtil), pointer :: jtemp9
        jtemp9 => OpenGLFeatureUtil_jm_getInstance_0()
        jresult = jtemp9%jm_isAnyThreed_0()
        return
  end function

  recursive function AllBinaryLayer_jm_getType_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    integer(4) :: jresult
        jresult = (-1)
        return
  end function

  recursive function AllBinaryLayer_jm_getMultiPlayerType_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    integer(4) :: jresult
        jresult = (-1)
        return
  end function

  recursive subroutine AllBinaryLayer_jm_toStringAppend_1(this, j_stringBuffer)
    class(AllBinaryLayer), target :: this
    class(StringMaker), target, optional :: j_stringBuffer
    class(CommonSeps), pointer :: j_commonSeps
    class(PositionStrings), pointer :: j_positionStrings
    class(CommonLabels), pointer :: j_commonLabels
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonSeps => CommonSeps_jm_getInstance_0()
        j_positionStrings => PositionStrings_jm_getInstance_0()
        j_commonLabels => CommonLabels_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(this%jm_getName_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_COLON)
        jdiscardRef => j_stringBuffer%jm_append_1(AllBinaryLayer_jstatic_TYPE())
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%jm_getType_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_positionStrings%f_X_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%jm_getXP_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_positionStrings%f_Y_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%jm_getYP_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_positionStrings%f_Z_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%jm_getZP_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonLabels%f_WIDTH_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%jm_getWidth_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonLabels%f_HEIGHT_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%jm_getHeight_0())
  end subroutine

  recursive function AllBinaryLayer_jm_toString_0(this) result(jresult)
    class(AllBinaryLayer), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        call this%jm_toStringAppend_1(j_stringBuffer)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module AllBinaryLayer_m

