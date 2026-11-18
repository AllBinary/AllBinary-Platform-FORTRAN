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
module ImageCopyUtil_m
  use JR_m
  use Features_m
  use GameFeatureFactory_m
  use Anchor_m
  use LogUtil_m
  use CommonStrings_m
  use ImageCreationUtil_m
  implicit none

  type, extends(JObject) :: ImageCopyUtil
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(ImageCreationUtil), pointer :: f_imageCreationUtil => null()
    integer(4) :: f_anchor = 0
    class(GameFeatureFactory), pointer :: f_gameFeatureFactory => null()
    class(Features), pointer :: f_features => null()
    character(len=:), allocatable :: f_NO_COPY
  contains
    procedure :: jm_createImageForRotation_1 => ImageCopyUtil_jm_createImageForRotation_1
    procedure :: jm_createImage_1 => ImageCopyUtil_jm_createImage_1
    procedure :: jm_createImageScale_3 => ImageCopyUtil_jm_createImageScale_3
  end type

  class(ImageCopyUtil), pointer, save :: ImageCopyUtil_jcell_instance => null()
  logical, save :: ImageCopyUtil_jset_instance = .false.

contains

  function ImageCopyUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageCopyUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageCopyUtil)
      jresult => object
    end select
  end function

  function ImageCopyUtil_jstatic_instance() result(jresult)
    class(ImageCopyUtil), pointer :: jresult
    if (.not. ImageCopyUtil_jset_instance) then
      ImageCopyUtil_jset_instance = .true.
      ImageCopyUtil_jcell_instance => ImageCopyUtil_jnew_0()
    end if
    jresult => ImageCopyUtil_jcell_instance
  end function

  subroutine ImageCopyUtil_jsetstatic_instance(jvalue)
    class(ImageCopyUtil), target, optional :: jvalue
    ImageCopyUtil_jset_instance = .true.
    if (present(jvalue)) then
      ImageCopyUtil_jcell_instance => jvalue
    else
      ImageCopyUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function ImageCopyUtil_jnew_0() result(this)
    class(ImageCopyUtil), pointer :: this
    allocate(this)
    this%jclass = 'ImageCopyUtil'
    this%f_NO_COPY = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_imageCreationUtil => ImageCreationUtil_jm_getInstance_0()
    this%f_anchor = Anchor_jstatic_TOP_LEFT()
    this%f_gameFeatureFactory => GameFeatureFactory_jm_getInstance_0()
    this%f_features => Features_jm_getInstance_0()
    this%f_NO_COPY = 'J2ME does not need to copy images after initial loading'
        continue
  end function

  recursive function ImageCopyUtil_jm_getInstance_0() result(jresult)
    class(ImageCopyUtil), pointer :: jresult
        jresult => ImageCopyUtil_jstatic_instance()
        return
  end function

  recursive function ImageCopyUtil_jm_createImageForRotation_1(this, j_originalImage) result(jresult)
    class(ImageCopyUtil), target :: this
    class(Image), target, optional :: j_originalImage
    class(Image), pointer :: jresult
        jresult => this%jm_createImage_1(j_originalImage)
        return
  end function

  recursive function ImageCopyUtil_jm_createImage_1(this, j_originalImage) result(jresult)
    class(ImageCopyUtil), target :: this
    class(Image), target, optional :: j_originalImage
    class(Image), pointer :: jresult
    class(Image), pointer :: j_image
    class(JObject), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_features%jm_isFeature_1(this%f_gameFeatureFactory%f_POST_IMAGE_LOADING_MODIFICATION))) then
            call this%f_logUtil%jm_put_4(this%f_NO_COPY, this, this%f_commonStrings%f_CONSTRUCTOR, JR_newJObject('Exception'))
            jresult => j_originalImage
            return
        end if
        j_image => this%f_imageCreationUtil%jm_createImageWH_2(j_originalImage%jm_getWidth_0(), j_originalImage%jm_getHeight_0())
        if (j_image%jm_isMutable_0()) then
            jtemp1 => j_image%jm_getGraphics_0()
            call jtemp1%jm_drawImage_4(j_originalImage, 0, 0, this%f_anchor)
            jresult => j_image
            return
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
  end function

  recursive function ImageCopyUtil_jm_createImageScale_3(this, j_originalImage, j_canvasScale, j_resize) result(jresult)
    class(ImageCopyUtil), target :: this
    class(Image), target, optional :: j_originalImage
    real(4), value :: j_canvasScale
    logical, value :: j_resize
    class(Image), pointer :: jresult
    integer(4) :: j_newWidth
    integer(4) :: j_newHeight
    class(Image), pointer :: j_image
    integer(4) :: j_halfWidthDelta
    integer(4) :: j_halfHeightDelta
    class(Graphics), pointer :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((.not. this%f_features%jm_isFeature_1(this%f_gameFeatureFactory%f_POST_IMAGE_LOADING_MODIFICATION))) then
            call this%f_logUtil%jm_put_4(this%f_NO_COPY, this, this%f_commonStrings%f_CONSTRUCTOR, JR_newJObject('Exception'))
            jresult => j_originalImage
            return
        end if
        j_newWidth = ((j_originalImage%jm_getWidth_0() * j_canvasScale))
        j_newHeight = ((j_originalImage%jm_getHeight_0() * j_canvasScale))
        if (j_resize) then
            if ((j_newWidth < j_newHeight)) then
                j_newWidth = j_newHeight
            end if
            if ((j_newHeight < j_newWidth)) then
                j_newHeight = j_newWidth
            end if
        end if
        j_image => this%f_imageCreationUtil%jm_createImageWH_2(j_newWidth, j_newHeight)
        if (j_image%jm_isMutable_0()) then
            j_halfWidthDelta = (((j_newWidth - j_originalImage%jm_getWidth_0())) / 2)
            j_halfHeightDelta = (((j_newHeight - j_originalImage%jm_getHeight_0())) / 2)
            j_graphics => j_image%jm_getGraphics_0()
            call j_graphics%jm_drawImage_4(j_originalImage, j_halfWidthDelta, j_halfHeightDelta, this%f_anchor)
            jresult => j_image
            return
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
  end function
end module ImageCopyUtil_m

