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
! package org.allbinary.animation.image
module BaseImageAnimationFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use AnimationInterfaceFactoryInterface_m
  use NullAnimationFactory_m
  use AnimationFactoryImageScaleUtil_m
  use StringMaker_m
  use ScaleProperties_m
  use CommonLabels_m
  use CommonSeps_m
  use AnimationFactoryInitializationVisitor_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: BaseImageAnimationFactory
    class(AnimationFactoryImageScaleUtil), pointer :: f_animationFactoryImageScaleUtil => null()
    class(Image), pointer :: f_image => null()
    class(AnimationBehaviorFactory), pointer :: f_animationBehaviorFactory => null()
    integer(4), allocatable :: f_sequenceArray(:)
    class(AnimationFactoryInitializationVisitor), pointer :: f_animationFactoryInitializationVisitor => null()
    class(ScaleProperties), pointer :: f_scaleProperties => null()
  contains
    procedure :: jm_getInstance_1 => BaseImageAnimationFactory_jm_getInstance_1
    procedure :: jm_getImage_0 => BaseImageAnimationFactory_jm_getImage_0
    procedure :: jm_getSequenceArray_0 => BaseImageAnimationFactory_jm_getSequenceArray_0
    procedure :: jm_setInitialScale_1 => BaseImageAnimationFactory_jm_setInitialScale_1
    procedure :: jm_getAnimationFactoryInitializationVisitorP_0 => BaseImageAnimationFactory_jm_getAnimationFactoryInitializationVisitorP_0
    procedure :: jm_getScalePropertiesP_0 => BaseImageAnimationFactory_jm_getScalePropertiesP_0
    procedure :: jm_toString_0 => BaseImageAnimationFactory_jm_toString_0
  end type


contains

  function BaseImageAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BaseImageAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BaseImageAnimationFactory)
      jresult => object
    end select
  end function

  recursive function BaseImageAnimationFactory_jnew_7(j_image, j_sequenceArray, j_width, j_height, j_dx, j_dy, j_animationBehaviorFactory) result(this)
    class(Image), target, optional :: j_image
    integer(4) :: j_sequenceArray(:)
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(BaseImageAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'BaseImageAnimationFactory'
    this%f_animationFactoryImageScaleUtil => AnimationFactoryImageScaleUtil_jm_getInstance_0()
    
    
    
    
    this%f_scaleProperties => ScaleProperties_jstatic_instance()
        this%f_animationFactoryInitializationVisitor => AnimationFactoryInitializationVisitor_jnew_0()
        this%f_image => j_image
        this%f_animationFactoryInitializationVisitor%f_width = j_width
        this%f_animationFactoryInitializationVisitor%f_height = j_height
        this%f_animationBehaviorFactory => j_animationBehaviorFactory
        this%f_sequenceArray = j_sequenceArray
        this%f_animationFactoryInitializationVisitor%f_dx = j_dx
        this%f_animationFactoryInitializationVisitor%f_dy = j_dy
  end function

  recursive function BaseImageAnimationFactory_jm_createFactoryBase_5(j_image, j_sequenceArray, j_width, j_height, j_animationBehaviorFactory) result(jresult)
    class(Image), target, optional :: j_image
    integer(4) :: j_sequenceArray(:)
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(BaseImageAnimationFactory), pointer :: jresult
        jresult => BaseImageAnimationFactory_jnew_7(j_image, j_sequenceArray, j_width, j_height, 0, 0, j_animationBehaviorFactory)
        return
  end function

  recursive function BaseImageAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(BaseImageAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    class(NullAnimationFactory), pointer :: jtemp1
        jtemp1 => NullAnimationFactory_jm_getFactoryInstance_0()
        jresult => jtemp1%jm_getInstance_1(j_instanceId)
        return
  end function

  recursive function BaseImageAnimationFactory_jm_getImage_0(this) result(jresult)
    class(BaseImageAnimationFactory), target :: this
    class(Image), pointer :: jresult
        jresult => this%f_image
        return
  end function

  recursive function BaseImageAnimationFactory_jm_getSequenceArray_0(this) result(jresult)
    class(BaseImageAnimationFactory), target :: this
    integer(4), allocatable :: jresult(:)
        jresult = this%f_sequenceArray
        return
  end function

  recursive subroutine BaseImageAnimationFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(BaseImageAnimationFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
        this%f_scaleProperties => j_scaleProperties
        if (this%f_scaleProperties%f_shouldScale) then
            this%f_scaleProperties%f_scaleWidth = JR_d2i(real(((real(this%f_animationFactoryInitializationVisitor%f_width, 4) * this%f_scaleProperties%f_scaleX)), 8))
            this%f_scaleProperties%f_scaleHeight = JR_d2i(real(((real(this%f_animationFactoryInitializationVisitor%f_height, 4) * this%f_scaleProperties%f_scaleY)), 8))
        else
            continue
        end if
  end subroutine

  recursive function BaseImageAnimationFactory_jm_getAnimationFactoryInitializationVisitorP_0(this) result(jresult)
    class(BaseImageAnimationFactory), target :: this
    class(AnimationFactoryInitializationVisitor), pointer :: jresult
        jresult => this%f_animationFactoryInitializationVisitor
        return
  end function

  recursive function BaseImageAnimationFactory_jm_getScalePropertiesP_0(this) result(jresult)
    class(BaseImageAnimationFactory), target :: this
    class(ScaleProperties), pointer :: jresult
        jresult => this%f_scaleProperties
        return
  end function

  recursive function BaseImageAnimationFactory_jm_toString_0(this) result(jresult)
    class(BaseImageAnimationFactory), target :: this
    character(len=:), allocatable :: jresult
    class(CommonSeps), pointer :: j_commonSeps
    class(CommonLabels), pointer :: j_commonLabels
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_commonSeps => CommonSeps_jm_getInstance_0()
        j_commonLabels => CommonLabels_jm_getInstance_0()
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(this%AnimationInterfaceFactoryInterface%jm_toString_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonLabels%f_HEIGHT_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_image%jm_getHeight_0())
        jdiscardRef => j_stringBuffer%jm_append_1(j_commonSeps%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_animationFactoryInitializationVisitor%jm_toString_0())
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module BaseImageAnimationFactory_m

