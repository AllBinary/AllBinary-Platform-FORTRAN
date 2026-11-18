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
module ImageCache_m
  use JR_m
  use InputStream_m
  use NullImage_m
  use J2MEUtil_m
  use TsUtil_m
  use ResourceUtil_m
  use GDResources_m
  use StringMaker_m
  use StringUtil_m
  use CommonStrings_m
  use Memory_m
  use Thread_m
  use ImageCacheBase_m
  implicit none

  type, extends(ImageCacheBase) :: ImageCache
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(TsUtil), pointer :: f_tsUtil => null()
  contains
    procedure :: jm_addListener_1 => ImageCache_jm_addListener_1
    procedure :: jm_getIndex_1 => ImageCache_jm_getIndex_1
    procedure :: jm_get_3 => ImageCache_jm_get_3
    procedure :: jm_getWithKey_1 => ImageCache_jm_getWithKey_1
    procedure :: jm_loadImageForAnimation_0 => ImageCache_jm_loadImageForAnimation_0
    procedure :: jm_progressEnded_0 => ImageCache_jm_progressEnded_0
    procedure :: jm_runTask_0 => ImageCache_jm_runTask_0
    procedure :: jm_isLazy_0 => ImageCache_jm_isLazy_0
  end type

  class(ImageCache), pointer, save :: ImageCache_jcell_NULL_IMAGE_CACHE => null()
  logical, save :: ImageCache_jset_NULL_IMAGE_CACHE = .false.

contains

  function ImageCache_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageCache), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageCache)
      jresult => object
    end select
  end function

  function ImageCache_jstatic_NULL_IMAGE_CACHE() result(jresult)
    class(ImageCache), pointer :: jresult
    if (.not. ImageCache_jset_NULL_IMAGE_CACHE) then
      ImageCache_jset_NULL_IMAGE_CACHE = .true.
      ImageCache_jcell_NULL_IMAGE_CACHE => ImageCache_jnew_0()
    end if
    jresult => ImageCache_jcell_NULL_IMAGE_CACHE
  end function

  subroutine ImageCache_jsetstatic_NULL_IMAGE_CACHE(jvalue)
    class(ImageCache), target, optional :: jvalue
    ImageCache_jset_NULL_IMAGE_CACHE = .true.
    if (present(jvalue)) then
      ImageCache_jcell_NULL_IMAGE_CACHE => jvalue
    else
      ImageCache_jcell_NULL_IMAGE_CACHE => null()
    end if
  end subroutine

  recursive function ImageCache_jnew_0() result(this)
    class(ImageCache), pointer :: this
    allocate(this)
    this%jclass = 'ImageCache'
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_tsUtil => TsUtil_jm_getInstance_0()
        continue
  end function

  recursive subroutine ImageCache_jm_addListener_1(this, j_renderer)
    class(ImageCache), target :: this
    class(JObject), target, optional :: j_renderer
    continue
  end subroutine

  recursive function ImageCache_jm_getIndex_1(this, j_key) result(jresult)
    class(ImageCache), target :: this
    class(JObject), target, optional :: j_key
    integer(4) :: jresult
    class(GDResources), pointer :: j_gdResources
    type(JString), allocatable :: j_resourceStringArray(:)
    integer(4) :: j_size
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringUtil), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gdResources => GDResources_jm_getInstance_0()
        j_resourceStringArray = j_gdResources%f_resourceStringArray
        j_size = size(j_resourceStringArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            if (JR_same(j_resourceStringArray((j_index) + 1)%v, j_key)) then
                jresult = j_index
                return
            end if
            j_index = j_index + 1
        end do
        jtemp4 => StringUtil_jm_getInstance_0()
        jtemp3 => StringMaker_jnew_0()
        jtemp2 => jtemp3%jm_append_1('unable to find key: ')
        jtemp1 => jtemp2%jm_append_1(jtemp4%jm_toString_1(j_key))
        call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, this%f_commonStrings%f_RUN)
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function ImageCache_jm_get_3(this, j_caller, j_width, j_height) result(jresult)
    class(ImageCache), target :: this
    character(len=*), intent(in) :: j_caller
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(Image), pointer :: jresult
    integer(4) :: j_foundIndex
    class(Image), pointer :: j_image
    integer(4), allocatable :: j_widths(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_foundIndex = this%jm_getIndexWH_2(j_width, j_height)
        j_image => this%jm_getFromAvailable_3(j_foundIndex, j_width, j_height)
        if (JR_same(j_image, NullImage_jstatic_NULL_IMAGE())) then
            this%f_volume = (this%f_volume + (j_width * j_height))
            if ((this%f_volume > 32000)) then
                call this%f_tsUtil%jm_gc_0()
                this%f_volume = 0
            end if
            j_image => this%jm_createImage_3(j_caller, j_width, j_height)
            j_widths = this%f_widths
            if ((this%f_nextIndex > (size(j_widths, 1) - 1))) then
                if ((j_foundIndex == (-1))) then
                    j_foundIndex = this%f_nextIndex
                    j_widths((this%f_nextIndex) + 1) = j_width
                    this%f_heights((this%f_nextIndex) + 1) = j_height
                    this%f_nextIndex = this%f_nextIndex + 1
                end if
                associate (jstaticref1 => BasicArrayList_jcast(this%f_listOfList((j_foundIndex) + 1)%v))
                jdiscardBoolean = jstaticref1%jm_add_1(j_image)
                end associate
            end if
        end if
        jresult => j_image
        return
  end function

  recursive function ImageCache_jm_getWithKey_1(this, j_key) result(jresult)
    class(ImageCache), target :: this
    class(JObject), target, optional :: j_key
    class(Image), pointer :: jresult
    class(Image), pointer :: j_image
    class(ResourceUtil), pointer :: j_resourceUtil
    class(InputStream), pointer :: j_resourceInputStream
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringUtil), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringUtil), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_image => this%jm_getImage_1(j_key)
        if (JR_same(j_image, NullImage_jstatic_NULL_IMAGE())) then
            j_resourceUtil => ResourceUtil_jm_getInstance_0()
            j_resourceInputStream => j_resourceUtil%jm_getResourceAsStream_1(j_key)
            if ((.not. associated(j_resourceInputStream))) then
                jtemp8 => StringUtil_jm_getInstance_0()
                jtemp7 => StringMaker_jnew_0()
                jtemp6 => jtemp7%jm_append_1('Image resource is not available for key: ')
                jtemp5 => jtemp6%jm_append_1(jtemp8%jm_toString_1(j_key))
                error stop JR_toString(JR_newJObject('RuntimeException'))
            end if
            continue ! try
                j_image => this%jm_createImageFromInputStream_2(j_key, j_resourceInputStream)
            if (J2MEUtil_jm_isHTML_0()) then
                continue
            else
                call j_resourceInputStream%jm_close_0()
            end if
            jdiscardRef => this%f_hashtable%jm_put_2(j_key, j_image)
        end if
        jresult => j_image
        return
  end function

  recursive subroutine ImageCache_jm_loadImageForAnimation_0(this)
    class(ImageCache), target :: this
    continue
  end subroutine

  recursive subroutine ImageCache_jm_progressEnded_0(this)
    class(ImageCache), target :: this
    continue
  end subroutine

  recursive subroutine ImageCache_jm_runTask_0(this)
    class(ImageCache), target :: this
    continue
  end subroutine

  recursive function ImageCache_jm_isLazy_0(this) result(jresult)
    class(ImageCache), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function
end module ImageCache_m

function ImageCache_jnew_0_jext() result(this)
  use ImageCache_m, only: JObject, ImageCache_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ImageCache_jnew_0()
end function

