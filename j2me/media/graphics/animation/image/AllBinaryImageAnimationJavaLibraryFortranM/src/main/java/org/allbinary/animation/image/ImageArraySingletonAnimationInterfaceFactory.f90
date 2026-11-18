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
module ImageArraySingletonAnimationInterfaceFactory_m
  use JR_m
  use AnimationBehavior_m
  use SingletonAnimationInterfaceFactory_m
  use ImageArrayAnimation_m
  implicit none

  type, extends(SingletonAnimationInterfaceFactory) :: ImageArraySingletonAnimationInterfaceFactory
  end type


contains

  function ImageArraySingletonAnimationInterfaceFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageArraySingletonAnimationInterfaceFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageArraySingletonAnimationInterfaceFactory)
      jresult => object
    end select
  end function

  recursive function ImageArraySingletonAnimationInterfaceFactory_jnew_1(j_imageArray) result(this)
    type(JRef) :: j_imageArray(:)
    class(ImageArraySingletonAnimationInterfaceFactory), pointer :: this
    allocate(this)
    this%jclass = 'ImageArraySingletonAnimationInterfaceFactory'
        continue ! super()
  end function
end module ImageArraySingletonAnimationInterfaceFactory_m

