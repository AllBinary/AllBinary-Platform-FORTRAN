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
! package org.allbinary.input.motion.button
module TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_m
  use JR_m
  use AnimationBehaviorFactory_m
  use NullAnimationFactory_m
  use OneRowSpriteIndexedAnimationFactory_m
  use BaseResourceAnimationInterfaceFactoryInterfaceFactory_m
  use Features_m
  use ResourceLoadingLevelFactory_m
  use ProgressCanvas_m
  use ProgressCanvasFactory_m
  use OpenGLFeatureFactory_m
  use ImageCache_m
  use ImageCacheFactory_m
  use StdUtil_m
  use StringMaker_m
  use OperatingSystemFactory_m
  use ImageCompleteUtil_m
  use TouchButtonBlankResource_m
  use TouchButtonResource_m
  use TouchButtonGenericActionResource_m
  use TouchButtonStartResource_m
  use TouchButtonUpResource_m
  use TouchButtonDownResource_m
  use TouchButtonTurnLeftResource_m
  use TouchButtonTurnRightResource_m
  use TouchButtonStrafeLeftResource_m
  use TouchButtonStrafeRightResource_m
  implicit none

  type, extends(BaseResourceAnimationInterfaceFactoryInterfaceFactory) :: TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory
  contains
    procedure :: jm_init_1 => TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_jm_init_1
    procedure :: jm_initImageCache_2 => TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_jm_initImageCache_2
    procedure :: jm_isLoadingLevel_1 => TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_jm_isLoadingLevel_1
    procedure :: jm_isFeature_0 => TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_jm_isFeature_0
  end type


contains

  function TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory)
      jresult => object
    end select
  end function

  recursive function TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_jnew_1(j_name) result(this)
    character(len=*), intent(in) :: j_name
    class(TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory), pointer :: this
    class(StdUtil), pointer :: jtemp1
    class(StdUtil), pointer :: jtemp2
    class(StdUtil), pointer :: jtemp3
    allocate(this)
    this%jclass = 'TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory'
        jtemp1 => StdUtil_jm_getInstance_0()
        jtemp2 => StdUtil_jm_getInstance_0()
        jtemp3 => StdUtil_jm_getInstance_0()
        continue ! super()
  end function

  recursive function TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_jm_createFactory_0() result(jresult)
    class(TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory), pointer :: jresult
        jresult => TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_jnew_1('TouchButton Animations')
        return
  end function

  recursive subroutine TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_jm_init_1(this, j_level)
    class(TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    integer(4), value :: j_level
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_initImageCache_2(ImageCacheFactory_jm_getInstance_0(), j_level)
  end subroutine

  recursive subroutine TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_jm_initImageCache_2(this, j_imageCache, j_level)
    class(TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    class(ImageCache), target, optional :: j_imageCache
    integer(4), value :: j_level
    integer(4) :: j_portion
    character(len=:), allocatable :: j_loadingString
    integer(4) :: j_index
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(TouchButtonResource), pointer :: j_touchButtonBlankResource
    class(TouchButtonResource), pointer :: j_touchButtonGenericActionResource
    class(TouchButtonResource), pointer :: j_touchButtonStartResource
    class(TouchButtonResource), pointer :: j_touchButtonUpResource
    class(TouchButtonResource), pointer :: j_touchButtonDownResource
    class(TouchButtonResource), pointer :: j_touchButtonTurnLeftResource
    class(TouchButtonResource), pointer :: j_touchButtonTurnRightResource
    class(TouchButtonResource), pointer :: j_touchButtonStrafeLeftResource
    class(TouchButtonResource), pointer :: j_touchButtonStrafeRightResource
    class(Image), pointer :: j_touchButtonBlankResourceImage
    class(Image), pointer :: j_touchButtonGenericActionResourceImage
    class(Image), pointer :: j_touchButtonStartResourceImage
    class(Image), pointer :: j_touchButtonUpResourceImage
    class(Image), pointer :: j_touchButtonDownResourceImage
    class(Image), pointer :: j_touchButtonTurnLeftResourceImage
    class(Image), pointer :: j_touchButtonTurnRightResourceImage
    class(Image), pointer :: j_touchButtonStrafeLeftResourceImage
    class(Image), pointer :: j_touchButtonStrafeRightResourceImage
    class(NullAnimationFactory), pointer :: j_nullAnimationFactory
    class(ImageCompleteUtil), pointer :: j_imageCompleteUtil
    class(Image), pointer :: j_touchButtonStartHintResource
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    integer(4) :: jtemp7
    class(GenericOperatingSystem), pointer :: jtemp8
    class(OperatingSystemFactory), pointer :: jtemp9
    class(TouchButtonStartResource), pointer :: jtemp10
    integer(4) :: jtemp11
    integer(4) :: jtemp12
    integer(4) :: jtemp13
    integer(4) :: jtemp14
    integer(4) :: jtemp15
    integer(4) :: jtemp16
    integer(4) :: jtemp17
    integer(4) :: jtemp18
    integer(4) :: jtemp19
    integer(4) :: jtemp20
    class(GenericOperatingSystem), pointer :: jtemp21
    class(OperatingSystemFactory), pointer :: jtemp22
    class(TouchButtonStartResource), pointer :: jtemp23
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%jm_isInitialized_0()) then
            return
        end if
        j_portion = 140
        jtemp6 => StringMaker_jnew_0()
        jtemp5 => jtemp6%jm_append_1(this%jm_toString_0())
        jtemp4 => jtemp5%jm_append_1(' Loading: ')
        j_loadingString = jtemp4%jm_toString_0()
        j_index = 0
        j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
        jtemp7 = j_index
        j_index = j_index + 1
        call j_progressCanvas%jm_addPortion_3(j_portion, j_loadingString, jtemp7)
        j_touchButtonBlankResource => TouchButtonBlankResource_jm_getInstance_0()
        j_touchButtonGenericActionResource => TouchButtonGenericActionResource_jm_getInstance_0()
        j_touchButtonStartResource => TouchButtonStartResource_jm_getInstance_0()
        j_touchButtonUpResource => TouchButtonUpResource_jm_getInstance_0()
        j_touchButtonDownResource => TouchButtonDownResource_jm_getInstance_0()
        j_touchButtonTurnLeftResource => TouchButtonTurnLeftResource_jm_getInstance_0()
        j_touchButtonTurnRightResource => TouchButtonTurnRightResource_jm_getInstance_0()
        j_touchButtonStrafeLeftResource => TouchButtonStrafeLeftResource_jm_getInstance_0()
        j_touchButtonStrafeRightResource => TouchButtonStrafeRightResource_jm_getInstance_0()
        j_touchButtonBlankResourceImage => j_imageCache%jm_getWithKey_1(JR_boxString(j_touchButtonBlankResource%f_RESOURCE))
        j_touchButtonGenericActionResourceImage => j_imageCache%jm_getWithKey_1(JR_boxString(j_touchButtonGenericActionResource%f_RESOURCE))
        j_touchButtonStartResourceImage => j_imageCache%jm_getWithKey_1(JR_boxString(j_touchButtonStartResource%f_RESOURCE))
        j_touchButtonUpResourceImage => j_imageCache%jm_getWithKey_1(JR_boxString(j_touchButtonUpResource%f_RESOURCE))
        j_touchButtonDownResourceImage => j_imageCache%jm_getWithKey_1(JR_boxString(j_touchButtonDownResource%f_RESOURCE))
        j_touchButtonTurnLeftResourceImage => j_imageCache%jm_getWithKey_1(JR_boxString(j_touchButtonTurnLeftResource%f_RESOURCE))
        j_touchButtonTurnRightResourceImage => j_imageCache%jm_getWithKey_1(JR_boxString(j_touchButtonTurnRightResource%f_RESOURCE))
        j_touchButtonStrafeLeftResourceImage => j_imageCache%jm_getWithKey_1(JR_boxString(j_touchButtonStrafeLeftResource%f_RESOURCE))
        j_touchButtonStrafeRightResourceImage => j_imageCache%jm_getWithKey_1(JR_boxString(j_touchButtonStrafeRightResource%f_RESOURCE))
        j_nullAnimationFactory => NullAnimationFactory_jm_getFactoryInstance_0()
        jtemp9 => OperatingSystemFactory_jm_getInstance_0()
        jtemp8 => jtemp9%jm_getOperatingSystemInstance_0()
        if (jtemp8%jm_isOverScan_0()) then
            jtemp10 => TouchButtonStartResource_jm_getInstance_0()
            jdiscardRef => j_imageCache%jm_getWithKey_1(JR_boxString(jtemp10%f_HINT))
        end if
        jtemp11 = j_index
        j_index = j_index + 1
        call j_progressCanvas%jm_addPortion_3(j_portion, j_loadingString, jtemp11)
        j_imageCompleteUtil => ImageCompleteUtil_jm_getInstance_0()
        jtemp12 = j_index
        j_index = j_index + 1
        call j_progressCanvas%jm_addPortion_3(j_portion, j_loadingString, jtemp12)
        call j_imageCompleteUtil%jm_waitForImage_2(j_touchButtonBlankResourceImage, j_touchButtonBlankResource%f_RESOURCE)
        call this%jm_add_2(j_touchButtonBlankResource%f_RESOURCE, OneRowSpriteIndexedAnimationFactory_jm_createFactory_2(j_touchButtonBlankResourceImage, AnimationBehaviorFactory_jm_getInstance_0()))
        call this%jm_add_2(j_touchButtonBlankResource%f_HINT, j_nullAnimationFactory)
        jtemp13 = j_index
        j_index = j_index + 1
        call j_progressCanvas%jm_addPortion_3(j_portion, j_loadingString, jtemp13)
        call j_imageCompleteUtil%jm_waitForImage_2(j_touchButtonGenericActionResourceImage, j_touchButtonGenericActionResource%f_RESOURCE)
        call this%jm_add_2(j_touchButtonGenericActionResource%f_RESOURCE, OneRowSpriteIndexedAnimationFactory_jm_createFactory_2(j_touchButtonGenericActionResourceImage, AnimationBehaviorFactory_jm_getInstance_0()))
        call this%jm_add_2(j_touchButtonGenericActionResource%f_HINT, j_nullAnimationFactory)
        jtemp14 = j_index
        j_index = j_index + 1
        call j_progressCanvas%jm_addPortion_3(j_portion, j_loadingString, jtemp14)
        call j_imageCompleteUtil%jm_waitForImage_2(j_touchButtonStartResourceImage, j_touchButtonStartResource%f_RESOURCE)
        call this%jm_add_2(j_touchButtonStartResource%f_RESOURCE, OneRowSpriteIndexedAnimationFactory_jm_createFactory_2(j_touchButtonStartResourceImage, AnimationBehaviorFactory_jm_getInstance_0()))
        jtemp15 = j_index
        j_index = j_index + 1
        call j_progressCanvas%jm_addPortion_3(j_portion, j_loadingString, jtemp15)
        call j_imageCompleteUtil%jm_waitForImage_2(j_touchButtonUpResourceImage, j_touchButtonUpResource%f_RESOURCE)
        call this%jm_add_2(j_touchButtonUpResource%f_RESOURCE, OneRowSpriteIndexedAnimationFactory_jm_createFactory_2(j_touchButtonUpResourceImage, AnimationBehaviorFactory_jm_getInstance_0()))
        call this%jm_add_2(j_touchButtonUpResource%f_HINT, j_nullAnimationFactory)
        jtemp16 = j_index
        j_index = j_index + 1
        call j_progressCanvas%jm_addPortion_3(j_portion, j_loadingString, jtemp16)
        call j_imageCompleteUtil%jm_waitForImage_2(j_touchButtonDownResourceImage, j_touchButtonDownResource%f_RESOURCE)
        call this%jm_add_2(j_touchButtonDownResource%f_RESOURCE, OneRowSpriteIndexedAnimationFactory_jm_createFactory_2(j_touchButtonDownResourceImage, AnimationBehaviorFactory_jm_getInstance_0()))
        call this%jm_add_2(j_touchButtonDownResource%f_HINT, j_nullAnimationFactory)
        jtemp17 = j_index
        j_index = j_index + 1
        call j_progressCanvas%jm_addPortion_3(j_portion, j_loadingString, jtemp17)
        call j_imageCompleteUtil%jm_waitForImage_2(j_touchButtonTurnLeftResourceImage, j_touchButtonTurnLeftResource%f_RESOURCE)
        call this%jm_add_2(j_touchButtonTurnLeftResource%f_RESOURCE, OneRowSpriteIndexedAnimationFactory_jm_createFactory_2(j_touchButtonTurnLeftResourceImage, AnimationBehaviorFactory_jm_getInstance_0()))
        call this%jm_add_2(j_touchButtonTurnLeftResource%f_HINT, j_nullAnimationFactory)
        jtemp18 = j_index
        j_index = j_index + 1
        call j_progressCanvas%jm_addPortion_3(j_portion, j_loadingString, jtemp18)
        call j_imageCompleteUtil%jm_waitForImage_2(j_touchButtonTurnRightResourceImage, j_touchButtonTurnRightResource%f_RESOURCE)
        call this%jm_add_2(j_touchButtonTurnRightResource%f_RESOURCE, OneRowSpriteIndexedAnimationFactory_jm_createFactory_2(j_touchButtonTurnRightResourceImage, AnimationBehaviorFactory_jm_getInstance_0()))
        call this%jm_add_2(j_touchButtonTurnRightResource%f_HINT, j_nullAnimationFactory)
        jtemp19 = j_index
        j_index = j_index + 1
        call j_progressCanvas%jm_addPortion_3(j_portion, j_loadingString, jtemp19)
        call j_imageCompleteUtil%jm_waitForImage_2(j_touchButtonStrafeLeftResourceImage, j_touchButtonStrafeLeftResource%f_RESOURCE)
        call this%jm_add_2(j_touchButtonStrafeLeftResource%f_RESOURCE, OneRowSpriteIndexedAnimationFactory_jm_createFactory_2(j_touchButtonStrafeLeftResourceImage, AnimationBehaviorFactory_jm_getInstance_0()))
        call this%jm_add_2(j_touchButtonStrafeLeftResource%f_HINT, j_nullAnimationFactory)
        jtemp20 = j_index
        j_index = j_index + 1
        call j_progressCanvas%jm_addPortion_3(j_portion, j_loadingString, jtemp20)
        call j_imageCompleteUtil%jm_waitForImage_2(j_touchButtonStrafeRightResourceImage, j_touchButtonStrafeRightResource%f_RESOURCE)
        call this%jm_add_2(j_touchButtonStrafeRightResource%f_RESOURCE, OneRowSpriteIndexedAnimationFactory_jm_createFactory_2(j_touchButtonStrafeRightResourceImage, AnimationBehaviorFactory_jm_getInstance_0()))
        call this%jm_add_2(j_touchButtonStrafeRightResource%f_HINT, j_nullAnimationFactory)
        jtemp22 => OperatingSystemFactory_jm_getInstance_0()
        jtemp21 => jtemp22%jm_getOperatingSystemInstance_0()
        if (jtemp21%jm_isOverScan_0()) then
            jtemp23 => TouchButtonStartResource_jm_getInstance_0()
            j_touchButtonStartHintResource => j_imageCache%jm_getWithKey_1(JR_boxString(jtemp23%f_HINT))
            call this%jm_add_2(j_touchButtonStartResource%f_HINT, OneRowSpriteIndexedAnimationFactory_jm_createFactory_2(j_touchButtonStartHintResource, AnimationBehaviorFactory_jm_getInstance_0()))
        else
            call this%jm_add_2(j_touchButtonStartResource%f_HINT, j_nullAnimationFactory)
        end if
        call this%BaseResourceAnimationInterfaceFactoryInterfaceFactory%jm_init_1(j_level)
  end subroutine

  recursive function TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_jm_isLoadingLevel_1(this, j_level) result(jresult)
    class(TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    integer(4), value :: j_level
    logical :: jresult
    class(ResourceLoadingLevelFactory), pointer :: j_resourceLoadingLevelFactory
        j_resourceLoadingLevelFactory => ResourceLoadingLevelFactory_jm_getInstance_0()
        if ((j_level == j_resourceLoadingLevelFactory%f_LOAD_TOUCH%jm_getLevel_0())) then
            jresult = .true.
            return
        else
            jresult = this%BaseResourceAnimationInterfaceFactoryInterfaceFactory%jm_isLoadingLevel_1(j_level)
            return
        end if
  end function

  recursive function TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_jm_isFeature_0(this) result(jresult)
    class(TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory), target :: this
    logical :: jresult
    class(Features), pointer :: jtemp24
    class(OpenGLFeatureFactory), pointer :: jtemp25
        jtemp25 => OpenGLFeatureFactory_jm_getInstance_0()
        jtemp24 => Features_jm_getInstance_0()
        if ((.not. jtemp24%jm_isDefault_1(jtemp25%f_OPENGL))) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function
end module TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_m

function TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_jnew_1_jext(p1) result(this)
  use TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_m, only: JObject, TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_jnew_1
  implicit none
      character(len=*), intent(in) :: p1
  class(JObject), pointer :: this
  this => TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_jnew_1(p1)
end function

