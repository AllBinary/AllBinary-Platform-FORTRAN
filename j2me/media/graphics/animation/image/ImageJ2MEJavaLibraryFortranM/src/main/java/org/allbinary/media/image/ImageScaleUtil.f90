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
module ImageScaleUtil_m
  use JR_m
  use ImageCache_m
  implicit none

  type, extends(JObject) :: ImageScaleUtil
  contains
    procedure :: jm_createImage2_7 => ImageScaleUtil_jm_createImage2_7
    procedure :: jm_createImage3_8 => ImageScaleUtil_jm_createImage3_8
  end type

  class(ImageScaleUtil), pointer, save :: ImageScaleUtil_jcell_instance => null()
  logical, save :: ImageScaleUtil_jset_instance = .false.

contains

  function ImageScaleUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageScaleUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageScaleUtil)
      jresult => object
    end select
  end function

  function ImageScaleUtil_jstatic_instance() result(jresult)
    class(ImageScaleUtil), pointer :: jresult
    if (.not. ImageScaleUtil_jset_instance) then
      ImageScaleUtil_jset_instance = .true.
      ImageScaleUtil_jcell_instance => ImageScaleUtil_jnew_0()
    end if
    jresult => ImageScaleUtil_jcell_instance
  end function

  subroutine ImageScaleUtil_jsetstatic_instance(jvalue)
    class(ImageScaleUtil), target, optional :: jvalue
    ImageScaleUtil_jset_instance = .true.
    if (present(jvalue)) then
      ImageScaleUtil_jcell_instance => jvalue
    else
      ImageScaleUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function ImageScaleUtil_jnew_0() result(this)
    class(ImageScaleUtil), pointer :: this
    allocate(this)
    this%jclass = 'ImageScaleUtil'
        continue
  end function

  recursive function ImageScaleUtil_jm_getInstance_0() result(jresult)
    class(ImageScaleUtil), pointer :: jresult
        jresult => ImageScaleUtil_jstatic_instance()
        return
  end function

  recursive function ImageScaleUtil_jm_createImage2_7(this, j_imageCache, j_originalImage, j_scaleNominatorX, j_scaleDenominatorX, j_scaleNominatorY, j_scaleDenominatorY, j_cached) result(jresult)
    class(ImageScaleUtil), target :: this
    class(ImageCache), target, optional :: j_imageCache
    class(Image), target, optional :: j_originalImage
    real(4), value :: j_scaleNominatorX
    real(4), value :: j_scaleDenominatorX
    real(4), value :: j_scaleNominatorY
    real(4), value :: j_scaleDenominatorY
    logical, value :: j_cached
    class(Image), pointer :: jresult
        jresult => this%jm_createImage3_8(j_imageCache, j_originalImage, j_scaleNominatorX, j_scaleDenominatorX, j_scaleNominatorY, j_scaleDenominatorY, j_cached, .true.)
        return
  end function

  recursive function ImageScaleUtil_jm_createImage3_8(this, j_imageCache, j_originalImage, j_scaleNominatorX, j_scaleDenominatorX, j_scaleNominatorY, j_scaleDenominatorY, j_cached, j_mutable) result(jresult)
    class(ImageScaleUtil), target :: this
    class(ImageCache), target, optional :: j_imageCache
    class(Image), target, optional :: j_originalImage
    real(4), value :: j_scaleNominatorX
    real(4), value :: j_scaleDenominatorX
    real(4), value :: j_scaleNominatorY
    real(4), value :: j_scaleDenominatorY
    logical, value :: j_cached
    logical, value :: j_mutable
    class(Image), pointer :: jresult
        jresult => j_originalImage
        return
  end function
end module ImageScaleUtil_m

