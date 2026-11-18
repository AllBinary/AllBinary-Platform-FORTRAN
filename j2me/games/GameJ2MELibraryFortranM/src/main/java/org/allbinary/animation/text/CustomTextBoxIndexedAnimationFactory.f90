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
module CustomTextBoxIndexedAnimationFactory_m
  use JR_m
  use CustomTextBox_m
  use Animation_m
  use AnimationInterfaceFactoryInterface_m
  use ABToGBUtil_m
  use AllBinaryGameCanvas_m
  use LogUtil_m
  use StringUtil_m
  use ScaleProperties_m
  use CustomTextBox2_m
  use CustomTextBoxIndexedAnimation_m
  implicit none

  type, extends(AnimationInterfaceFactoryInterface) :: CustomTextBoxIndexedAnimationFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(ScaleProperties), pointer :: f_scaleProperties => null()
    integer(4) :: f_maxLength = 0
  contains
    procedure :: jm_getInstance_1 => CustomTextBoxIndexedAnimationFactory_jm_getInstance_1
    procedure :: jm_setInitialScale_1 => CustomTextBoxIndexedAnimationFactory_jm_setInitialScale_1
  end type


contains

  function CustomTextBoxIndexedAnimationFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CustomTextBoxIndexedAnimationFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CustomTextBoxIndexedAnimationFactory)
      jresult => object
    end select
  end function

  recursive function CustomTextBoxIndexedAnimationFactory_jnew_2(j_fontSize, j_maxLength) result(this)
    integer(4), value :: j_fontSize
    integer(4), value :: j_maxLength
    class(CustomTextBoxIndexedAnimationFactory), pointer :: this
    allocate(this)
    this%jclass = 'CustomTextBoxIndexedAnimationFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    
        this%f_scaleProperties => ScaleProperties_jnew_0()
        this%f_scaleProperties%f_scaleHeight = j_fontSize
        this%f_maxLength = j_maxLength
  end function

  recursive function CustomTextBoxIndexedAnimationFactory_jm_getInstance_1(this, j_instanceId) result(jresult)
    class(CustomTextBoxIndexedAnimationFactory), target :: this
    integer(4), value :: j_instanceId
    class(Animation), pointer :: jresult
    class(ABToGBUtil), pointer :: j_abToGBUtil
    class(AllBinaryGameCanvas), pointer :: j_abCanvas
    class(Font), pointer :: j_font
    class(CustomTextBox), pointer :: j_customTextBox
    class(StringUtil), pointer :: jtemp1
    class(StringUtil), pointer :: jtemp2
    class(AllBinaryGameLayerManager), pointer :: jtemp3
    class(AllBinaryGameLayerManager), pointer :: jtemp4
        j_abToGBUtil => ABToGBUtil_jm_getInstance_0()
        j_abCanvas => AllBinaryGameCanvas_jcast(j_abToGBUtil%f_abCanvas)
        j_font => Font_jm_getFont_3(Font_jstatic_FACE_SYSTEM(), Font_jstatic_STYLE_PLAIN(), this%f_scaleProperties%f_scaleHeight)
        jtemp1 => StringUtil_jm_getInstance_0()
        jtemp2 => StringUtil_jm_getInstance_0()
        jtemp3 => j_abCanvas%jm_getLayerManager_0()
        jtemp4 => j_abCanvas%jm_getLayerManager_0()
        j_customTextBox => CustomTextBox2_jnew_8(j_abCanvas%jm_getCustomCommandListener_0(), jtemp1%f_EMPTY_STRING, jtemp2%f_EMPTY_STRING, this%f_maxLength, TextField_jstatic_ANY(), j_font, jtemp3%jm_getBackgroundBasicColor_0(), jtemp4%jm_getForegroundBasicColor_0())
        jresult => CustomTextBoxIndexedAnimation_jnew_1(j_customTextBox)
        return
  end function

  recursive subroutine CustomTextBoxIndexedAnimationFactory_jm_setInitialScale_1(this, j_scaleProperties)
    class(CustomTextBoxIndexedAnimationFactory), target :: this
    class(ScaleProperties), target, optional :: j_scaleProperties
    integer(4) :: j_fontSize
        j_fontSize = this%f_scaleProperties%f_scaleHeight
        this%f_scaleProperties => j_scaleProperties
        if ((this%f_scaleProperties%f_scaleHeight < 6)) then
            this%f_scaleProperties%f_scaleHeight = j_fontSize
        end if
  end subroutine
end module CustomTextBoxIndexedAnimationFactory_m

