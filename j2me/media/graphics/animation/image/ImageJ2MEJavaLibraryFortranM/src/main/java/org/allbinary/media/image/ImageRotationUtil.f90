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
module ImageRotationUtil_m
  use JR_m
  use Anchor_m
  implicit none

  type, extends(JObject) :: ImageRotationUtil
    integer(4) :: f_anchor = 0
  contains
    procedure :: jm_createRotatedImage_2 => ImageRotationUtil_jm_createRotatedImage_2
  end type

  class(ImageRotationUtil), pointer, save :: ImageRotationUtil_jcell_instance => null()
  logical, save :: ImageRotationUtil_jset_instance = .false.

contains

  function ImageRotationUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageRotationUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageRotationUtil)
      jresult => object
    end select
  end function

  function ImageRotationUtil_jstatic_instance() result(jresult)
    class(ImageRotationUtil), pointer :: jresult
    if (.not. ImageRotationUtil_jset_instance) then
      ImageRotationUtil_jset_instance = .true.
      ImageRotationUtil_jcell_instance => ImageRotationUtil_jnew_0()
    end if
    jresult => ImageRotationUtil_jcell_instance
  end function

  subroutine ImageRotationUtil_jsetstatic_instance(jvalue)
    class(ImageRotationUtil), target, optional :: jvalue
    ImageRotationUtil_jset_instance = .true.
    if (present(jvalue)) then
      ImageRotationUtil_jcell_instance => jvalue
    else
      ImageRotationUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function ImageRotationUtil_jnew_0() result(this)
    class(ImageRotationUtil), pointer :: this
    allocate(this)
    this%jclass = 'ImageRotationUtil'
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
        continue
  end function

  recursive function ImageRotationUtil_jm_getInstance_0() result(jresult)
    class(ImageRotationUtil), pointer :: jresult
        jresult => ImageRotationUtil_jstatic_instance()
        return
  end function

  recursive function ImageRotationUtil_jm_createRotatedImage_2(this, j_originalImage, j_rotationInDegrees) result(jresult)
    class(ImageRotationUtil), target :: this
    class(Image), target, optional :: j_originalImage
    integer(4), value :: j_rotationInDegrees
    class(Image), pointer :: jresult
        jresult => j_originalImage
        return
  end function
end module ImageRotationUtil_m

