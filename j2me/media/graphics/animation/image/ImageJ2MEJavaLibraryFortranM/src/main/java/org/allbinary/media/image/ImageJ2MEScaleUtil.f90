!
! AllBinary Open License Version 1
! Copyright (c) 2023 AllBinary
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
module ImageJ2MEScaleUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: ImageJ2MEScaleUtil
  contains
    procedure :: jm_scaleArray_3 => ImageJ2MEScaleUtil_jm_scaleArray_3
    procedure :: jm_scale_3 => ImageJ2MEScaleUtil_jm_scale_3
  end type

  class(ImageJ2MEScaleUtil), pointer, save :: ImageJ2MEScaleUtil_jcell_instance => null()
  logical, save :: ImageJ2MEScaleUtil_jset_instance = .false.

contains

  function ImageJ2MEScaleUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageJ2MEScaleUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageJ2MEScaleUtil)
      jresult => object
    end select
  end function

  function ImageJ2MEScaleUtil_jstatic_instance() result(jresult)
    class(ImageJ2MEScaleUtil), pointer :: jresult
    if (.not. ImageJ2MEScaleUtil_jset_instance) then
      ImageJ2MEScaleUtil_jset_instance = .true.
      ImageJ2MEScaleUtil_jcell_instance => ImageJ2MEScaleUtil_jnew_0()
    end if
    jresult => ImageJ2MEScaleUtil_jcell_instance
  end function

  subroutine ImageJ2MEScaleUtil_jsetstatic_instance(jvalue)
    class(ImageJ2MEScaleUtil), target, optional :: jvalue
    ImageJ2MEScaleUtil_jset_instance = .true.
    if (present(jvalue)) then
      ImageJ2MEScaleUtil_jcell_instance => jvalue
    else
      ImageJ2MEScaleUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function ImageJ2MEScaleUtil_jnew_0() result(this)
    class(ImageJ2MEScaleUtil), pointer :: this
    allocate(this)
    this%jclass = 'ImageJ2MEScaleUtil'
        continue
  end function

  recursive function ImageJ2MEScaleUtil_jm_getInstance_0() result(jresult)
    class(ImageJ2MEScaleUtil), pointer :: jresult
        jresult => ImageJ2MEScaleUtil_jstatic_instance()
        return
  end function

  recursive function ImageJ2MEScaleUtil_jm_scaleArray_3(this, j_images, j_width, j_height) result(jresult)
    class(ImageJ2MEScaleUtil), target :: this
    type(JRef) :: j_images(:)
    integer(4), value :: j_width
    integer(4), value :: j_height
    type(JRef), allocatable :: jresult(:)
    type(JRef), allocatable :: j_scaledImages(:)
    integer(4) :: j_index
    integer(4) :: jtemp1
        j_scaledImages = JR_newRefArray(size(j_images, 1))
        j_index = j_index - 1
        jtemp1 = j_index
        j_index = size(j_images, 1)
        do while ((jtemp1 >= 0))
            j_scaledImages((j_index) + 1)%v => this%jm_scale_3(Image_jcast(j_images((j_index) + 1)%v), j_width, j_height)
        end do
        jresult = j_scaledImages
        return
  end function

  recursive function ImageJ2MEScaleUtil_jm_scale_3(this, j_image, j_width, j_height) result(jresult)
    class(ImageJ2MEScaleUtil), target :: this
    class(Image), target, optional :: j_image
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(Image), pointer :: jresult
    integer(4) :: j_sourceWidth
    integer(4) :: j_sourceHeight
    integer(4), allocatable :: j_originalData(:)
    integer(4), allocatable :: j_scaledData(:)
    integer(4) :: j_heightRatioFactor
    integer(4) :: j_widthRatioFactor
    integer(4) :: j_scaledIndex
    integer(4) :: j_dx
    integer(4) :: j_dy
    integer(4) :: j_index2
    integer(4) :: j_index
    class(Image), pointer :: j_scaledImage
    integer(4) :: jtemp2
    integer(4) :: jtemp3
    integer(4) :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_sourceWidth = j_image%jm_getWidth_0()
        j_sourceHeight = j_image%jm_getHeight_0()
        j_originalData = JR_newIntArray((j_image%jm_getWidth_0() * j_image%jm_getHeight_0()))
        call j_image%jm_getRGB_7(j_originalData, 0, j_image%jm_getWidth_0(), 0, 0, j_image%jm_getWidth_0(), j_image%jm_getHeight_0())
        j_scaledData = JR_newIntArray((j_width * j_height))
        j_heightRatioFactor = (((8 * j_sourceHeight)) / j_height)
        j_widthRatioFactor = (((8 * j_sourceWidth)) / j_width)
        j_scaledIndex = (size(j_scaledData, 1) - 1)
        continue
        continue
        j_index = j_index - 1
        jtemp4 = j_index
        j_index = j_height
        do while ((jtemp4 >= 0))
            j_dy = shifta(((j_index * j_heightRatioFactor)), iand(3, 31))
            j_index2 = j_index2 - 1
            jtemp3 = j_index2
            j_index2 = j_width
            do while ((jtemp3 >= 0))
                j_dx = shifta(((j_index2 * j_widthRatioFactor)), iand(3, 31))
                jtemp2 = j_scaledIndex
                j_scaledIndex = j_scaledIndex - 1
                j_scaledData((jtemp2) + 1) = j_originalData(((((j_sourceWidth * j_dy)) + j_dx)) + 1)
            end do
        end do
        j_scaledImage => Image_jm_createRGBImage_4(j_scaledData, j_width, j_height, .true.)
        jresult => j_scaledImage
        return
  end function
end module ImageJ2MEScaleUtil_m

