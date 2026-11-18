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
module ImageTypeUtil_m
  use JR_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: ImageTypeUtil
    character(len=:), allocatable :: f_PNG
    character(len=:), allocatable :: f_JPG
    character(len=:), allocatable :: f_GIF
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_isSupported_1 => ImageTypeUtil_jm_isSupported_1
  end type

  class(ImageTypeUtil), pointer, save :: ImageTypeUtil_jcell_SINGLETON => null()
  logical, save :: ImageTypeUtil_jset_SINGLETON = .false.

contains

  function ImageTypeUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageTypeUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageTypeUtil)
      jresult => object
    end select
  end function

  function ImageTypeUtil_jstatic_SINGLETON() result(jresult)
    class(ImageTypeUtil), pointer :: jresult
    if (.not. ImageTypeUtil_jset_SINGLETON) then
      ImageTypeUtil_jset_SINGLETON = .true.
      ImageTypeUtil_jcell_SINGLETON => ImageTypeUtil_jnew_0()
    end if
    jresult => ImageTypeUtil_jcell_SINGLETON
  end function

  subroutine ImageTypeUtil_jsetstatic_SINGLETON(jvalue)
    class(ImageTypeUtil), target, optional :: jvalue
    ImageTypeUtil_jset_SINGLETON = .true.
    if (present(jvalue)) then
      ImageTypeUtil_jcell_SINGLETON => jvalue
    else
      ImageTypeUtil_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function ImageTypeUtil_jnew_0() result(this)
    class(ImageTypeUtil), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ImageTypeUtil'
    this%f_PNG = ''
    this%f_JPG = ''
    this%f_GIF = ''
    this%f_PNG = 'png'
    this%f_JPG = 'jpg'
    this%f_GIF = 'gif'
    this%f_list => BasicArrayListD_jnew_0()
        jdiscardBoolean = this%f_list%jm_add_1(JR_boxString(this%f_JPG))
        jdiscardBoolean = this%f_list%jm_add_1(JR_boxString(this%f_GIF))
        jdiscardBoolean = this%f_list%jm_add_1(JR_boxString(this%f_PNG))
  end function

  recursive function ImageTypeUtil_jm_isSupported_1(this, j_mediaFileType) result(jresult)
    class(ImageTypeUtil), target :: this
    character(len=*), intent(in) :: j_mediaFileType
    logical :: jresult
    character(len=:), allocatable :: j_name
    integer(4) :: j_index
        j_mediaFileType = JR_toLowerCase(j_mediaFileType)
        j_index = (this%f_list%jm_size_0() - 1)
        do while ((j_index >= 0))
            j_name = this%f_list%jm_get_1(j_index)
            if ((JR_compareTo(j_mediaFileType, j_name) == 0)) then
                jresult = .true.
                return
            end if
            j_index = j_index - 1
        end do
        jresult = .false.
        return
  end function

  recursive function ImageTypeUtil_jm_getInstance_0() result(jresult)
    class(ImageTypeUtil), pointer :: jresult
        jresult => ImageTypeUtil_jstatic_SINGLETON()
        return
  end function
end module ImageTypeUtil_m

