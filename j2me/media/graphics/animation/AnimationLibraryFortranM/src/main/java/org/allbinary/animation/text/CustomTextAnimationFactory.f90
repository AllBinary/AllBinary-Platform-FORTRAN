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
! package org.allbinary.animation.text
module CustomTextAnimationFactory_m
  use JR_m
  use Animation_m
  use AnimationBehaviorFactory_m
  use AnimationInterfaceFactoryInterface_m
  use BasicColor_m
  use BasicColorFactory_m
  use LogUtil_m
  use ScaleProperties_m
  use CustomTextAnimation_m
  use AdjustCustomTextAnimation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: CustomTextAnimationFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(AnimationBehaviorFactory), pointer :: f_animationBehaviorFactory => null()
    class(BasicColor), pointer :: f_basicColor => null()
    character(len=:), allocatable :: f_text
    integer(4) :: f_initScaleHeight = 0
    integer(4) :: f_dx = 0
    integer(4) :: f_dy = 0
    class(Font), pointer :: f_font => null()
    class(ScaleProperties), pointer :: f_scaleProperties => null()
  contains
    procedure :: jm_getInstance_1 => CustomTextAnimationFactory_jm_getInstance_1
    procedure :: jm_setInitialScale_1 => CustomTextAnimationFactory_jm_setInitialScale_1
    procedure :: jm_getWidth_0 => CustomTextAnimationFactory_jm_getWidth_0
    procedure :: jm_getHeight_0 => CustomTextAnimationFactory_jm_getHeight_0
  end type


contains

  function CustomTextAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CustomTextAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CustomTextAnimationFactory)
      jresult => object
    end select
  end function

  recursive function CustomTextAnimationFactory_jnew_3(j_text, j_fontSize, j_animationBehaviorFactory) result(this)
    character(len=*), intent(in) :: j_text
    integer(4), value :: j_fontSize
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(CustomTextAnimationFactory), pointer :: this
    class(BasicColorFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'CustomTextAnimationFactory'
    this%f_text = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    jtemp1 => BasicColorFactory_jm_getInstance_0()
    this%f_basicColor => jtemp1%f_BLACK
    
    
    this%f_dx = 0
    this%f_dy = 0
    
    
        this%f_scaleProperties => ScaleProperties_jnew_0()
        this%f_text = j_text
        this%f_scaleProperties%f_scaleHeight = (j_fontSize - ((j_fontSize / 4)))
        this%f_initScaleHeight = this%f_scaleProperties%f_scaleHeight
        this%f_animationBehaviorFactory => j_animationBehaviorFactory
        this%f_font => Font_jm_getFont_3(Font_jstatic_FACE_SYSTEM(), Font_jstatic_STYLE_PLAIN(), this%f_initScaleHeight)
  end function

  recursive function CustomTextAnimationFactory_jm_createDXY_5(j_text, j_fontSize, j_dx, j_dy, j_animationBehaviorFactory) result(jresult)
    character(len=*), intent(in) :: j_text
    integer(4), value :: j_fontSize
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    class(AnimationBehaviorFactory), target, optional :: j_animationBehaviorFactory
    class(CustomTextAnimationFactory), pointer :: jresult
    class(CustomTextAnimationFactory), pointer :: j_customTextAnimationFactory
        j_customTextAnimationFactory => CustomTextAnimationFactory_jnew_3(j_text, j_fontSize, j_animationBehaviorFactory)
        j_customTextAnimationFactory%f_dx = j_dx
        j_customTextAnimationFactory%f_dy = j_dy
        jresult => j_customTextAnimationFactory
        return
  end function

  recursive function CustomTextAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(CustomTextAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    class(CustomTextAnimation), pointer :: j_customTextAnimation
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue
        if (((this%f_dx /= 0) .or. (this%f_dy /= 0))) then
            j_customTextAnimation => AdjustCustomTextAnimation_jnew_5(this%f_text, this%f_scaleProperties%f_scaleHeight, this%f_dx, this%f_dy, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
        else
            j_customTextAnimation => CustomTextAnimation_jnew_3(this%f_text, this%f_scaleProperties%f_scaleHeight, this%f_animationBehaviorFactory%jm_getOrCreateInstance_0())
        end if
        call j_customTextAnimation%jm_setBasicColorP_1(this%f_basicColor)
        jresult => j_customTextAnimation
        return
  end function

  recursive subroutine CustomTextAnimationFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(CustomTextAnimationFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    continue
  end subroutine

  recursive function CustomTextAnimationFactory_jm_getWidth_0(this) result(jresult)
    class(CustomTextAnimationFactory), target :: this
    integer(4) :: jresult
        jresult = this%f_font%jm_stringWidth_1(this%f_text)
        return
  end function

  recursive function CustomTextAnimationFactory_jm_getHeight_0(this) result(jresult)
    class(CustomTextAnimationFactory), target :: this
    integer(4) :: jresult
        jresult = this%f_font%jm_getHeight_0()
        return
  end function
end module CustomTextAnimationFactory_m

