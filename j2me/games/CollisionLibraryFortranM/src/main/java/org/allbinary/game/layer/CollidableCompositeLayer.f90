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
module CollidableCompositeLayer_m
  use JR_m
  use ArtificialIntelligence_m
  use ArtificialIntelligenceInterface_m
  use CollidableBaseBehavior_m
  use CollidableBaseBehaviorFactory_m
  use CollidableInterfaceCompositeInterface_m
  use CollidableNeverCollideBehaviorFactory_m
  use Rectangle_m
  use RectangleFactory_m
  use ForcedLogUtil_m
  use StringMaker_m
  use StringUtil_m
  use CommonSeps_m
  use ViewPositionBase_m
  use NullUtil_m
  use AllBinaryGameLayer_m
  implicit none

  type, extends(AllBinaryGameLayer) :: CollidableCompositeLayer
    class(CollidableBaseBehavior), pointer :: f_collidableInferface => null()
  contains
    procedure :: jm_getArtificialIntelligenceInterface_0 => CollidableCompositeLayer_jm_getArtificialIntelligenceInterface_0
    procedure :: jm_getCollidableInferface_0 => CollidableCompositeLayer_jm_getCollidableInferface_0
    procedure :: jm_setCollidableInferface_1 => CollidableCompositeLayer_jm_setCollidableInferface_1
    procedure :: jm_implmentsCollidableInterface_0 => CollidableCompositeLayer_jm_implmentsCollidableInterface_0
    procedure :: jm_toStringAppend_1 => CollidableCompositeLayer_jm_toStringAppend_1
    procedure :: jm_toString_0 => CollidableCompositeLayer_jm_toString_0
  end type

  ! CollidableCompositeLayer used as a CollidableInterfaceCompositeInterface
  type, extends(CollidableInterfaceCompositeInterface) :: CollidableCompositeLayer_jas_CollidableInterfaceCompositeInterface
    class(CollidableCompositeLayer), pointer :: jtarget => null()
  contains
    procedure :: jm_getCollidableInferface_0 => CollidableCompositeLayer_jas_CollidableInterfaceCompositeInterface_jm_getCollidableInferface_0
  end type

  class(JObject), pointer, save :: CollidableCompositeLayer_jcell_NULL_COLLIDABLE_COMPOSITE_LAYER => null()
  logical, save :: CollidableCompositeLayer_jset_NULL_COLLIDABLE_COMPOSITE_LAYER = .false.

contains

  function CollidableCompositeLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CollidableCompositeLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CollidableCompositeLayer)
      jresult => object
    end select
  end function

  function CollidableCompositeLayer_jas_CollidableInterfaceCompositeInterface_jnew(object) result(jresult)
    class(CollidableCompositeLayer), target :: object
    class(CollidableCompositeLayer_jas_CollidableInterfaceCompositeInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'CollidableCompositeLayer'
    jresult%jtarget => object
  end function

  recursive function CollidableCompositeLayer_jas_CollidableInterfaceCompositeInterface_jm_getCollidableInferface_0(this) result(jresult)
    class(CollidableCompositeLayer_jas_CollidableInterfaceCompositeInterface), target :: this
    class(CollidableBaseBehavior), pointer :: jresult
    jresult => this%jtarget%jm_getCollidableInferface_0()
  end function

  function CollidableCompositeLayer_jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. CollidableCompositeLayer_jset_NULL_COLLIDABLE_COMPOSITE_LAYER) then
      CollidableCompositeLayer_jset_NULL_COLLIDABLE_COMPOSITE_LAYER = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    CollidableCompositeLayer_jcell_NULL_COLLIDABLE_COMPOSITE_LAYER => jtemp1%f_NULL_OBJECT
    end if
    jresult => CollidableCompositeLayer_jcell_NULL_COLLIDABLE_COMPOSITE_LAYER
  end function

  subroutine CollidableCompositeLayer_jsetstatic_NULL_COLLIDABLE_COMPOSITE_LAYER(jvalue)
    class(JObject), target, optional :: jvalue
    CollidableCompositeLayer_jset_NULL_COLLIDABLE_COMPOSITE_LAYER = .true.
    if (present(jvalue)) then
      CollidableCompositeLayer_jcell_NULL_COLLIDABLE_COMPOSITE_LAYER => jvalue
    else
      CollidableCompositeLayer_jcell_NULL_COLLIDABLE_COMPOSITE_LAYER => null()
    end if
  end subroutine

  recursive function CollidableCompositeLayer_jnew_4(j_name, j_layerInfo, j_viewPosition, j_collidableBaseBehaviorFactory) result(this)
    character(len=*), intent(in) :: j_name
    class(Rectangle), target, optional :: j_layerInfo
    class(ViewPositionBase), target, optional :: j_viewPosition
    class(CollidableBaseBehaviorFactory), target, optional :: j_collidableBaseBehaviorFactory
    class(CollidableCompositeLayer), pointer :: this
    class(CollidableNeverCollideBehaviorFactory), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'CollidableCompositeLayer'
    jtemp4 => CollidableNeverCollideBehaviorFactory_jm_getInstance_0()
    this%f_collidableInferface => jtemp4%jm_createBehavior_0()
        continue ! super()
        if ((.not. JR_same(j_collidableBaseBehaviorFactory, CollidableNeverCollideBehaviorFactory_jm_getInstance_0()))) then
            call this%jm_setCollidableInferface_1(j_collidableBaseBehaviorFactory%jm_createBehavior_0())
        end if
  end function

  recursive function CollidableCompositeLayer_jm_getNullInstance_0() result(jresult)
    class(CollidableCompositeLayer), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
    class(StringUtil), pointer :: jtemp3
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(CollidableCompositeLayer_jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER(), jtemp2%f_NULL_OBJECT)) then
            jtemp3 => StringUtil_jm_getInstance_0()
            call CollidableCompositeLayer_jsetstatic_NULL_COLLIDABLE_COMPOSITE_LAYER(CollidableCompositeLayer_jnew_4(jtemp3%f_EMPTY_STRING, RectangleFactory_jstatic_SINGLETON(), ViewPositionBase_jstatic_NULL_VIEW_POSITION(), CollidableNeverCollideBehaviorFactory_jm_getInstance_0()))
        end if
        jresult => CollidableCompositeLayer_jcast(CollidableCompositeLayer_jstatic_NULL_COLLIDABLE_COMPOSITE_LAYER())
        return
  end function

  recursive function CollidableCompositeLayer_jm_getArtificialIntelligenceInterface_0(this) result(jresult)
    class(CollidableCompositeLayer), target :: this
    class(ArtificialIntelligenceInterface), pointer :: jresult
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call ForcedLogUtil_jm_log_2(this%f_commonStrings%f_NOT_IMPLEMENTED, this)
        jresult => ArtificialIntelligence_jm_getInstance_0()
        return
  end function

  recursive function CollidableCompositeLayer_jm_getCollidableInferface_0(this) result(jresult)
    class(CollidableCompositeLayer), target :: this
    class(CollidableBaseBehavior), pointer :: jresult
        jresult => this%f_collidableInferface
        return
  end function

  recursive subroutine CollidableCompositeLayer_jm_setCollidableInferface_1(this, j_collidableInferface)
    class(CollidableCompositeLayer), target :: this
    class(CollidableBaseBehavior), target, optional :: j_collidableInferface
        this%f_collidableInferface => j_collidableInferface
  end subroutine

  recursive function CollidableCompositeLayer_jm_implmentsCollidableInterface_0(this) result(jresult)
    class(CollidableCompositeLayer), target :: this
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive subroutine CollidableCompositeLayer_jm_toStringAppend_1(this, j_stringBuffer)
    class(CollidableCompositeLayer), target :: this
    class(StringMaker), target, optional :: j_stringBuffer
    class(CommonSeps), pointer :: j_commonSeps
    class(CollidableBaseBehavior), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonSeps => CommonSeps_jm_getInstance_0()
        call this%AllBinaryGameLayer%jm_toStringAppend_1(j_stringBuffer)
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_NEW_LINE)
        jtemp5 => this%jm_getCollidableInferface_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp5%jm_toString_0())
  end subroutine

  recursive function CollidableCompositeLayer_jm_toString_0(this) result(jresult)
    class(CollidableCompositeLayer), target :: this
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
end module CollidableCompositeLayer_m

