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
  use BaseResourceAnimationInterfaceFactoryInterfaceFactory_m
  use Features_m
  use ResourceLoadingLevelFactory_m
  use OpenGLFeatureFactory_m
  use ImageCache_m
  use ImageCacheFactory_m
  use StdUtil_m
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
    class(Features), pointer :: jtemp4
    class(OpenGLFeatureFactory), pointer :: jtemp5
        jtemp5 => OpenGLFeatureFactory_jm_getInstance_0()
        jtemp4 => Features_jm_getInstance_0()
        if ((.not. jtemp4%jm_isDefault_1(jtemp5%f_OPENGL))) then
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

