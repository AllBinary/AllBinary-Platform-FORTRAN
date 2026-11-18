! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
module ImageFactory_m
  use JR_m
  use InputStream_m
  use MIDPUtil_m
  implicit none

  type, extends(JObject) :: ImageFactory
  contains
    procedure :: jm_createImageUrl_1 => ImageFactory_jm_createImageUrl_1
    procedure :: jm_createImage_3 => ImageFactory_jm_createImage_3
    procedure :: jm_createImageFromInputStream_2 => ImageFactory_jm_createImageFromInputStream_2
    procedure :: jm_createImageFromInputStream_1 => ImageFactory_jm_createImageFromInputStream_1
  end type

  class(ImageFactory), pointer, save :: ImageFactory_jcell_instance => null()
  logical, save :: ImageFactory_jset_instance = .false.

contains

  function ImageFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageFactory)
      jresult => object
    end select
  end function

  function ImageFactory_jstatic_instance() result(jresult)
    class(ImageFactory), pointer :: jresult
    if (.not. ImageFactory_jset_instance) then
      ImageFactory_jset_instance = .true.
      ImageFactory_jcell_instance => ImageFactory_jnew_0()
    end if
    jresult => ImageFactory_jcell_instance
  end function

  subroutine ImageFactory_jsetstatic_instance(jvalue)
    class(ImageFactory), target, optional :: jvalue
    ImageFactory_jset_instance = .true.
    if (present(jvalue)) then
      ImageFactory_jcell_instance => jvalue
    else
      ImageFactory_jcell_instance => null()
    end if
  end subroutine

  function ImageFactory_jnew_0() result(this)
    class(ImageFactory), pointer :: this
    allocate(this)
    this%jclass = 'ImageFactory'
  end function

  recursive function ImageFactory_jm_getInstance_0() result(jresult)
    class(ImageFactory), pointer :: jresult
        jresult => ImageFactory_jstatic_instance()
        return
  end function

  recursive function ImageFactory_jm_createImageUrl_1(this, j_url) result(jresult)
    class(ImageFactory), target :: this
    character(len=*), intent(in) :: j_url
    class(Image), pointer :: jresult
        jresult => Image_jm_createImage_1(j_url)
        return
  end function

  recursive function ImageFactory_jm_createImage_3(this, j_caller, j_width, j_height) result(jresult)
    class(ImageFactory), target :: this
    character(len=*), intent(in) :: j_caller
    integer(4), value :: j_width
    integer(4), value :: j_height
    class(Image), pointer :: jresult
    class(MIDPUtil), pointer :: jtemp1
        jtemp1 => MIDPUtil_jm_getInstance_0()
        jresult => jtemp1%jm_createImageWH_2(j_width, j_height)
        return
  end function

  recursive function ImageFactory_jm_createImageFromInputStream_2(this, j_key, j_inputStream) result(jresult)
    class(ImageFactory), target :: this
    class(JObject), target, optional :: j_key
    class(InputStream), target, optional :: j_inputStream
    class(Image), pointer :: jresult
    class(Image), pointer :: j_image
    class(MIDPUtil), pointer :: jtemp2
        jtemp2 => MIDPUtil_jm_getInstance_0()
        j_image => jtemp2%jm_createImageFromInputStream_1(j_inputStream)
        jresult => j_image
        return
  end function

  recursive function ImageFactory_jm_createImageFromInputStream_1(this, j_inputStream) result(jresult)
    class(ImageFactory), target :: this
    class(InputStream), target, optional :: j_inputStream
    class(Image), pointer :: jresult
    class(MIDPUtil), pointer :: jtemp3
        jtemp3 => MIDPUtil_jm_getInstance_0()
        jresult => jtemp3%jm_createImageFromInputStream_1(j_inputStream)
        return
  end function
end module ImageFactory_m

