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
module TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_m
  use JR_m
  use Features_m
  use OpenGLFeatureFactory_m
  use OpenGLImageCacheFactory_m
  use TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory_m
  implicit none

  type, extends(TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory) :: TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory
  contains
    procedure :: jm_init_1 => TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_jm_init_1
    procedure :: jm_isFeature_0 => TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_jm_isFeature_0
  end type


contains

  function TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory)
      jresult => object
    end select
  end function

  recursive function TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_jnew_0() result(this)
    class(TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory'
        continue ! super()
  end function

  recursive subroutine TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_jm_init_1(this, j_level)
    class(TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory), target :: this
    integer(4), value :: j_level
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%TouchButtonResourceAnimationInterfaceFactoryInterfaceFactory%jm_initImageCache_2(OpenGLImageCacheFactory_jm_getInstance_0(), j_level)
  end subroutine

  recursive function TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_jm_isFeature_0(this) result(jresult)
    class(TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory), target :: this
    logical :: jresult
    class(Features), pointer :: jtemp1
    class(OpenGLFeatureFactory), pointer :: jtemp2
        jtemp2 => OpenGLFeatureFactory_jm_getInstance_0()
        jtemp1 => Features_jm_getInstance_0()
        if (jtemp1%jm_isDefault_1(jtemp2%f_OPENGL)) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function
end module TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_m

function TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_jnew_0_jext() result(this)
  use TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_m, only: JObject, TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TouchButtonResourceOpenGLESAnimationInterfaceFactoryInterfaceFactory_jnew_0()
end function

