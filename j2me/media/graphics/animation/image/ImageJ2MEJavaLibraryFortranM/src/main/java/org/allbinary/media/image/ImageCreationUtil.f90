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
module ImageCreationUtil_m
  use JR_m
  use GameFeatureImageCacheFactory_m
  implicit none

  type, extends(JObject) :: ImageCreationUtil
  contains
    procedure :: jm_createImageWH_2 => ImageCreationUtil_jm_createImageWH_2
    procedure :: jm_createImage_4 => ImageCreationUtil_jm_createImage_4
  end type

  class(ImageCreationUtil), pointer, save :: ImageCreationUtil_jcell_instance => null()
  logical, save :: ImageCreationUtil_jset_instance = .false.

contains

  function ImageCreationUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageCreationUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageCreationUtil)
      jresult => object
    end select
  end function

  function ImageCreationUtil_jstatic_instance() result(jresult)
    class(ImageCreationUtil), pointer :: jresult
    if (.not. ImageCreationUtil_jset_instance) then
      ImageCreationUtil_jset_instance = .true.
      ImageCreationUtil_jcell_instance => ImageCreationUtil_jnew_0()
    end if
    jresult => ImageCreationUtil_jcell_instance
  end function

  subroutine ImageCreationUtil_jsetstatic_instance(jvalue)
    class(ImageCreationUtil), target, optional :: jvalue
    ImageCreationUtil_jset_instance = .true.
    if (present(jvalue)) then
      ImageCreationUtil_jcell_instance => jvalue
    else
      ImageCreationUtil_jcell_instance => null()
    end if
  end subroutine

  recursive function ImageCreationUtil_jnew_0() result(this)
    class(ImageCreationUtil), pointer :: this
    allocate(this)
    this%jclass = 'ImageCreationUtil'
        continue
  end function

  recursive function ImageCreationUtil_jm_getInstance_0() result(jresult)
    class(ImageCreationUtil), pointer :: jresult
        jresult => ImageCreationUtil_jstatic_instance()
        return
  end function

  recursive function ImageCreationUtil_jm_createImageWH_2(this, j_width, j_height) result(jresult)
    class(ImageCreationUtil), target :: this
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(Image), pointer :: jresult
    class(Image), pointer :: j_image
    class(GameFeatureImageCacheFactory), pointer :: jtemp1
    character(len=:), allocatable :: jtemp2
        jtemp2 = JR_className(this)
        jtemp1 => GameFeatureImageCacheFactory_jm_getInstance_0()
        j_image => jtemp1%jm_get_3(jtemp2, j_width, j_height)
        jresult => j_image
        return
  end function

  recursive function ImageCreationUtil_jm_createImage_4(this, j_width, j_height, j_maxScaleX, j_maxScaleY) result(jresult)
    class(ImageCreationUtil), target :: this
    integer(4), value :: j_width
    integer(4), value :: j_height
    real(4), value :: j_maxScaleX
    real(4), value :: j_maxScaleY
    class(Image), pointer :: jresult
    class(Image), pointer :: j_image
    class(GameFeatureImageCacheFactory), pointer :: jtemp3
    character(len=:), allocatable :: jtemp4
        jtemp4 = JR_className(this)
        jtemp3 => GameFeatureImageCacheFactory_jm_getInstance_0()
        j_image => jtemp3%jm_get_3(jtemp4, (JR_d2i(real(((real(j_width, 4) * j_maxScaleX)), 8)) + 1), (JR_d2i(real(((real(j_height, 4) * j_maxScaleY)), 8)) + 1))
        jresult => j_image
        return
  end function
end module ImageCreationUtil_m

