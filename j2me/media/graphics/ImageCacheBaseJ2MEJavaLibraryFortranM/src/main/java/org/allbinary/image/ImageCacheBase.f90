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
module ImageCacheBase_m
  use JR_m
  use InputStream_m
  use NullImage_m
  use StdUtil_m
  use LogUtil_m
  use StringMaker_m
  use CommonLabels_m
  use CommonSeps_m
  use ABHashtable_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use ImageFactory_m
  implicit none

  type, extends(JObject) :: ImageCacheBase
    class(LogUtil), pointer :: f_logUtil => null()
    class(ImageFactory), pointer :: f_imageFactory => null()
    class(ABHashtable), pointer :: f_hashtable => null()
    integer(4) :: f_SIZE = 0
    integer(4), allocatable :: f_widths(:)
    integer(4), allocatable :: f_heights(:)
    type(JRef), allocatable :: f_listOfList(:)
    type(JRef), allocatable :: f_availableListOfList(:)
    integer(4) :: f_volume = 0
    integer(4) :: f_nextIndex = 0
  contains
    procedure :: jm_getImage_1 => ImageCacheBase_jm_getImage_1
    procedure :: jm_releaseAll_0 => ImageCacheBase_jm_releaseAll_0
    procedure :: jm_getIndexWH_2 => ImageCacheBase_jm_getIndexWH_2
    procedure :: jm_getFromAvailable_3 => ImageCacheBase_jm_getFromAvailable_3
    procedure :: jm_get_3 => ImageCacheBase_jm_get_3
    procedure :: jm_getWithKey_1 => ImageCacheBase_jm_getWithKey_1
    procedure :: jm_createImage_3 => ImageCacheBase_jm_createImage_3
    procedure :: jm_createImageFromInputStream_2 => ImageCacheBase_jm_createImageFromInputStream_2
    procedure :: jm_toString_0 => ImageCacheBase_jm_toString_0
    procedure :: jm_getHashtableP_0 => ImageCacheBase_jm_getHashtableP_0
    procedure :: jm_init_1 => ImageCacheBase_jm_init_1
    procedure :: jm_initProgress_0 => ImageCacheBase_jm_initProgress_0
  end type


contains

  function ImageCacheBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageCacheBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageCacheBase)
      jresult => object
    end select
  end function

  recursive function ImageCacheBase_jnew_0() result(this)
    class(ImageCacheBase), pointer :: this
    integer(4) :: j_index
    class(StdUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'ImageCacheBase'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_imageFactory => ImageFactory_jm_getInstance_0()
    jtemp1 => StdUtil_jm_getInstance_0()
    this%f_hashtable => jtemp1%jm_createHashtable_0()
    this%f_SIZE = 128
    this%f_widths = JR_newIntArray(this%f_SIZE)
    this%f_heights = JR_newIntArray(this%f_SIZE)
    this%f_listOfList = JR_newRefArray(this%f_SIZE)
    this%f_availableListOfList = JR_newRefArray(this%f_SIZE)
    this%f_volume = 0
    this%f_nextIndex = 0
        j_index = (size(this%f_listOfList, 1) - 1)
        do while ((j_index >= 0))
            this%f_listOfList((j_index) + 1)%v => BasicArrayListD_jnew_0()
            j_index = j_index - 1
        end do
        j_index = (size(this%f_availableListOfList, 1) - 1)
        do while ((j_index >= 0))
            this%f_availableListOfList((j_index) + 1)%v => BasicArrayListD_jnew_0()
            j_index = j_index - 1
        end do
  end function

  recursive function ImageCacheBase_jm_getImage_1(this, j_resourceId) result(jresult)
    class(ImageCacheBase), target :: this
    class(JObject), target, optional :: j_resourceId
    class(Image), pointer :: jresult
    class(JObject), pointer :: j_imageCanBeNull
        j_imageCanBeNull => this%f_hashtable%jm_get_1(j_resourceId)
        if ((.not. associated(j_imageCanBeNull))) then
            jresult => NullImage_jstatic_NULL_IMAGE()
            return
        end if
        jresult => Image_jcast(j_imageCanBeNull)
        return
  end function

  recursive subroutine ImageCacheBase_jm_releaseAll_0(this)
    class(ImageCacheBase), target :: this
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_index = (size(this%f_listOfList, 1) - 1)
        do while ((j_index >= 0))
            associate (jstaticref1 => BasicArrayList_jcast(this%f_availableListOfList((j_index) + 1)%v))
            call jstaticref1%jm_clear_0()
            end associate
            associate (jstaticref2 => BasicArrayList_jcast(this%f_availableListOfList((j_index) + 1)%v))
            jdiscardBoolean = jstaticref2%jm_addAllList_1(BasicArrayList_jcast(this%f_listOfList((j_index) + 1)%v))
            end associate
            j_index = j_index - 1
        end do
        jtemp4 => StringMaker_jnew_0()
        jtemp3 => jtemp4%jm_append_1('ImageCache: ')
        jtemp2 => jtemp3%jm_append_1(this%jm_toString_0())
        call this%f_logUtil%jm_putF_3(jtemp2%jm_toString_0(), this, 'releaseAll')
  end subroutine

  recursive function ImageCacheBase_jm_getIndexWH_2(this, j_width, j_height) result(jresult)
    class(ImageCacheBase), target :: this
    integer(4), value :: j_width
    integer(4), value :: j_height
    integer(4) :: jresult
    integer(4) :: j_foundIndex
    integer(4) :: j_size
    integer(4) :: j_index
        j_foundIndex = (-1)
        j_size = size(this%f_widths, 1)
        j_index = 0
        do while ((j_index < j_size))
            if (((this%f_widths((j_index) + 1) == j_width) .and. (this%f_heights((j_index) + 1) == j_height))) then
                j_foundIndex = j_index
                jresult = j_foundIndex
                return
            end if
            j_index = j_index + 1
        end do
        jresult = j_foundIndex
        return
  end function

  recursive function ImageCacheBase_jm_getFromAvailable_3(this, j_foundIndex, j_width, j_height) result(jresult)
    class(ImageCacheBase), target :: this
    integer(4), value :: j_foundIndex
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(Image), pointer :: jresult
    class(BasicArrayList), pointer :: j_list
        if ((j_foundIndex /= (-1))) then
            associate (jstaticref3 => BasicArrayList_jcast(this%f_availableListOfList((j_foundIndex) + 1)%v))
            if ((jstaticref3%jm_size_0() > 0)) then
                j_list => BasicArrayList_jcast(this%f_availableListOfList((j_foundIndex) + 1)%v)
                jresult => Image_jcast(j_list%jm_removeAt_1((j_list%jm_size_0() - 1)))
                return
            end if
            end associate
        end if
        jresult => NullImage_jstatic_NULL_IMAGE()
        return
  end function

  recursive function ImageCacheBase_jm_get_3(this, j_caller, j_width, j_height) result(jresult)
    class(ImageCacheBase), target :: this
    character(len=*), intent(in) :: j_caller
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(Image), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function ImageCacheBase_jm_getWithKey_1(this, j_key) result(jresult)
    class(ImageCacheBase), target :: this
    class(JObject), target, optional :: j_key
    class(Image), pointer :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function ImageCacheBase_jm_createImage_3(this, j_caller, j_width, j_height) result(jresult)
    class(ImageCacheBase), target :: this
    character(len=*), intent(in) :: j_caller
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(Image), pointer :: jresult
        jresult => this%f_imageFactory%jm_createImage_3(j_caller, j_width, j_height)
        return
  end function

  recursive function ImageCacheBase_jm_createImageFromInputStream_2(this, j_key, j_inputStream) result(jresult)
    class(ImageCacheBase), target :: this
    class(JObject), target, optional :: j_key
    class(InputStream), target, optional :: j_inputStream
    class(Image), pointer :: jresult
        jresult => this%f_imageFactory%jm_createImageFromInputStream_2(j_key, j_inputStream)
        return
  end function

  recursive function ImageCacheBase_jm_toString_0(this) result(jresult)
    class(ImageCacheBase), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    integer(4) :: j_width
    integer(4) :: j_height
    integer(4) :: j_total
    integer(4) :: j_totalAvailable
    integer(4) :: j_index
    class(CommonSeps), pointer :: jtemp5
    class(CommonLabels), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_index = (this%f_nextIndex - 1)
        do while ((j_index >= 0))
            j_width = this%f_widths((j_index) + 1)
            j_height = this%f_heights((j_index) + 1)
            associate (jstaticref4 => BasicArrayList_jcast(this%f_listOfList((j_index) + 1)%v))
            j_total = jstaticref4%jm_size_0()
            end associate
            associate (jstaticref5 => BasicArrayList_jcast(this%f_availableListOfList((j_index) + 1)%v))
            j_totalAvailable = jstaticref5%jm_size_0()
            end associate
            jdiscardRef => j_stringBuffer%jm_append_1(' w: ')
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_width)
            jdiscardRef => j_stringBuffer%jm_append_1(' h: ')
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_height)
            jtemp5 => CommonSeps_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp5%f_SPACE)
            jtemp6 => CommonLabels_jm_getInstance_0()
            jdiscardRef => j_stringBuffer%jm_append_1(jtemp6%f_TOTAL_LABEL)
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_total)
            jdiscardRef => j_stringBuffer%jm_append_1(' available: ')
            jdiscardRef => j_stringBuffer%jm_appendint_1(j_totalAvailable)
            j_index = j_index - 1
        end do
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function ImageCacheBase_jm_getHashtableP_0(this) result(jresult)
    class(ImageCacheBase), target :: this
    class(ABHashtable), pointer :: jresult
        jresult => this%f_hashtable
        return
  end function

  recursive subroutine ImageCacheBase_jm_init_1(this, j_image)
    class(ImageCacheBase), target :: this
    class(Image), target, optional :: j_image
    continue
  end subroutine

  recursive subroutine ImageCacheBase_jm_initProgress_0(this)
    class(ImageCacheBase), target :: this
    continue
  end subroutine
end module ImageCacheBase_m

