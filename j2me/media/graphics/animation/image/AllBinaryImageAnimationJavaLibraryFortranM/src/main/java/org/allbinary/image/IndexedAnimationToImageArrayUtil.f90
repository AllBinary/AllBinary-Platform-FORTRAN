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
! package org.allbinary.image
module IndexedAnimationToImageArrayUtil_m
  use JR_m
  use IndexedAnimation_m
  use AnimationFrameToImageUtil_m
  implicit none

  type, extends(JObject) :: IndexedAnimationToImageArrayUtil
  end type


contains

  function IndexedAnimationToImageArrayUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(IndexedAnimationToImageArrayUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (IndexedAnimationToImageArrayUtil)
      jresult => object
    end select
  end function

  function IndexedAnimationToImageArrayUtil_jnew_0() result(this)
    class(IndexedAnimationToImageArrayUtil), pointer :: this
    allocate(this)
    this%jclass = 'IndexedAnimationToImageArrayUtil'
  end function

  recursive function IndexedAnimationToImageArrayUtil_jm_getInstance_3(j_width, j_height, j_sequentialAnimationInterface) result(jresult)
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(IndexedAnimation), target, optional :: j_sequentialAnimationInterface
    type(JRef), allocatable :: jresult(:)
    integer(4) :: j_size
    type(JRef), allocatable :: j_imageArray(:)
    integer(4) :: j_index
    class(AnimationFrameToImageUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_size = j_sequentialAnimationInterface%jm_getAnimationSize_0()
        j_imageArray = JR_newRefArray(j_size)
        j_index = 0
        do while ((j_index < j_size))
            call j_sequentialAnimationInterface%jm_setFrame_1(j_index)
            jtemp1 => AnimationFrameToImageUtil_jm_getInstance_0()
            j_imageArray((j_index) + 1)%v => jtemp1%jm_getInstanceWH_3(j_width, j_height, j_sequentialAnimationInterface)
            j_index = j_index + 1
        end do
        jresult = j_imageArray
        return
  end function
end module IndexedAnimationToImageArrayUtil_m

