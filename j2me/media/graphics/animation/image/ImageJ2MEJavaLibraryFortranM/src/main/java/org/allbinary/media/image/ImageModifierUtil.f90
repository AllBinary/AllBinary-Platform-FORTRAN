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
! package org.allbinary.media.image
module ImageModifierUtil_m
  use JR_m
  use BasicColor_m
  implicit none

  type, extends(JObject) :: ImageModifierUtil
  contains
    procedure :: jm_setColor_4 => ImageModifierUtil_jm_setColor_4
    procedure :: jm_changeColor_4 => ImageModifierUtil_jm_changeColor_4
    procedure :: jm_setAlpha_4 => ImageModifierUtil_jm_setAlpha_4
    procedure :: jm_getImageArray_1 => ImageModifierUtil_jm_getImageArray_1
    procedure :: jm_handleImage_3 => ImageModifierUtil_jm_handleImage_3
    procedure :: jm_reset_0 => ImageModifierUtil_jm_reset_0
  end type

  class(ImageModifierUtil), pointer, save :: ImageModifierUtil_jcell_instance => null()
  logical, save :: ImageModifierUtil_jset_instance = .false.

contains

  function ImageModifierUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageModifierUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageModifierUtil)
      jresult => object
    end select
  end function

  function ImageModifierUtil_jstatic_instance() result(jresult)
    class(ImageModifierUtil), pointer :: jresult
    if (.not. ImageModifierUtil_jset_instance) then
      ImageModifierUtil_jset_instance = .true.
      ImageModifierUtil_jcell_instance => ImageModifierUtil_jnew_0()
    end if
    jresult => ImageModifierUtil_jcell_instance
  end function

  subroutine ImageModifierUtil_jsetstatic_instance(jvalue)
    class(ImageModifierUtil), target, optional :: jvalue
    ImageModifierUtil_jset_instance = .true.
    if (present(jvalue)) then
      ImageModifierUtil_jcell_instance => jvalue
    else
      ImageModifierUtil_jcell_instance => null()
    end if
  end subroutine

  function ImageModifierUtil_jnew_0() result(this)
    class(ImageModifierUtil), pointer :: this
    allocate(this)
    this%jclass = 'ImageModifierUtil'
  end function

  recursive function ImageModifierUtil_jm_getInstanceOrCreate_0() result(jresult)
    class(ImageModifierUtil), pointer :: jresult
        jresult => ImageModifierUtil_jstatic_instance()
        return
  end function

  recursive subroutine ImageModifierUtil_jm_setColor_4(this, j_unusedOriginalImage, j_image, j_imageIndex, j_basicColor)
    class(ImageModifierUtil), target :: this
    class(Image), target, optional :: j_unusedOriginalImage
    class(Image), target, optional :: j_image
    integer(4), value :: j_imageIndex
    class(BasicColor), target, optional :: j_basicColor
    continue
  end subroutine

  recursive subroutine ImageModifierUtil_jm_changeColor_4(this, j_unusedOriginalImage, j_image, j_imageIndex, j_basicColor)
    class(ImageModifierUtil), target :: this
    class(Image), target, optional :: j_unusedOriginalImage
    class(Image), target, optional :: j_image
    integer(4), value :: j_imageIndex
    class(BasicColor), target, optional :: j_basicColor
    continue
  end subroutine

  recursive subroutine ImageModifierUtil_jm_setAlpha_4(this, j_originalImage, j_image, j_imageIndex, j_alphaInt)
    class(ImageModifierUtil), target :: this
    class(Image), target, optional :: j_originalImage
    class(Image), target, optional :: j_image
    integer(4), value :: j_imageIndex
    integer(4), value :: j_alphaInt
    continue
  end subroutine

  recursive function ImageModifierUtil_jm_getImageArray_1(this, j_originalImageArray) result(jresult)
    class(ImageModifierUtil), target :: this
    type(JRef) :: j_originalImageArray(:)
    type(JRef), allocatable :: jresult(:)
        jresult = j_originalImageArray
        return
  end function

  recursive subroutine ImageModifierUtil_jm_handleImage_3(this, j_imageArray, j_index, j_image)
    class(ImageModifierUtil), target :: this
    type(JRef) :: j_imageArray(:)
    integer(4), value :: j_index
    class(Image), target, optional :: j_image
    continue
  end subroutine

  recursive subroutine ImageModifierUtil_jm_reset_0(this)
    class(ImageModifierUtil), target :: this
    continue
  end subroutine
end module ImageModifierUtil_m

