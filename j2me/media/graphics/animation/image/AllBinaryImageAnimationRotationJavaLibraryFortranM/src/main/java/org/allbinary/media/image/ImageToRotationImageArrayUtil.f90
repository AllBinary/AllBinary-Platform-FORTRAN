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
! package org.allbinary.media.image
module ImageToRotationImageArrayUtil_m
  use JR_m
  use ImageRotationUtil_m
  implicit none

  type, extends(JObject) :: ImageToRotationImageArrayUtil
  contains
    procedure :: jm_generate_3 => ImageToRotationImageArrayUtil_jm_generate_3
  end type

  class(ImageToRotationImageArrayUtil), pointer, save :: ImageToRotationImageArrayUtil_jcell_instance => null()
  logical, save :: ImageToRotationImageArrayUtil_jset_instance = .false.

contains

  function ImageToRotationImageArrayUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageToRotationImageArrayUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageToRotationImageArrayUtil)
      jresult => object
    end select
  end function

  function ImageToRotationImageArrayUtil_jstatic_instance() result(jresult)
    class(ImageToRotationImageArrayUtil), pointer :: jresult
    if (.not. ImageToRotationImageArrayUtil_jset_instance) then
      ImageToRotationImageArrayUtil_jset_instance = .true.
      ImageToRotationImageArrayUtil_jcell_instance => ImageToRotationImageArrayUtil_jnew_0()
    end if
    jresult => ImageToRotationImageArrayUtil_jcell_instance
  end function

  subroutine ImageToRotationImageArrayUtil_jsetstatic_instance(jvalue)
    class(ImageToRotationImageArrayUtil), target, optional :: jvalue
    ImageToRotationImageArrayUtil_jset_instance = .true.
    if (present(jvalue)) then
      ImageToRotationImageArrayUtil_jcell_instance => jvalue
    else
      ImageToRotationImageArrayUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function ImageToRotationImageArrayUtil_jnew_0() result(this)
    class(ImageToRotationImageArrayUtil), pointer :: this
    allocate(this)
    this%jclass = 'ImageToRotationImageArrayUtil'
        continue
  end function

  recursive function ImageToRotationImageArrayUtil_jm_getInstance_0() result(jresult)
    class(ImageToRotationImageArrayUtil), pointer :: jresult
        jresult => ImageToRotationImageArrayUtil_jstatic_instance()
        return
  end function

  recursive function ImageToRotationImageArrayUtil_jm_generate_3(this, j_image, j_angleIncrement, j_totalAngle) result(jresult)
    class(ImageToRotationImageArrayUtil), target :: this
    class(Image), target, optional :: j_image
    integer(4), value :: j_angleIncrement
    integer(4), value :: j_totalAngle
    type(JRef), allocatable :: jresult(:)
    class(ImageRotationUtil), pointer :: j_imageRotationUtil
    integer(4) :: j_totalFrames
    type(JRef), allocatable :: j_imageArray(:)
    integer(4) :: j_index
        j_imageRotationUtil => ImageRotationUtil_jm_getInstance_0()
        j_totalFrames = (j_totalAngle / j_angleIncrement)
        j_imageArray = JR_newRefArray(j_totalFrames)
        j_imageArray((0) + 1)%v => j_image
        j_index = 1
        do while ((j_index < j_totalFrames))
            j_imageArray((j_index) + 1)%v => j_imageRotationUtil%jm_createRotatedImage_2(j_image, (j_index * j_angleIncrement))
            j_index = j_index + 1
        end do
        jresult = j_imageArray
        return
  end function
end module ImageToRotationImageArrayUtil_m

