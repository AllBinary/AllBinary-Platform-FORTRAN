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
! package javax.microedition.lcdui
module NullImage_m
  use JR_m
  use Image_m
  implicit none

  type, extends(JObject) :: NullImage
  end type

  type(JRef), allocatable, save :: NullImage_jcell_NULL_IMAGE_ARRAY(:)
  logical, save :: NullImage_jset_NULL_IMAGE_ARRAY = .false.
  class(Image), pointer, save :: NullImage_jcell_NULL_IMAGE => null()
  logical, save :: NullImage_jset_NULL_IMAGE = .false.

contains

  function NullImage_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullImage), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullImage)
      jresult => object
    end select
  end function

  function NullImage_jstatic_NULL_IMAGE_ARRAY() result(jresult)
    type(JRef), allocatable :: jresult(:)
    if (.not. NullImage_jset_NULL_IMAGE_ARRAY) then
      NullImage_jset_NULL_IMAGE_ARRAY = .true.
      NullImage_jcell_NULL_IMAGE_ARRAY = JR_newRefArray(0)
    end if
    jresult = NullImage_jcell_NULL_IMAGE_ARRAY
  end function

  subroutine NullImage_jsetstatic_NULL_IMAGE_ARRAY(jvalue)
    type(JRef) :: jvalue(:)
    NullImage_jset_NULL_IMAGE_ARRAY = .true.
    NullImage_jcell_NULL_IMAGE_ARRAY = jvalue
  end subroutine

  function NullImage_jstatic_NULL_IMAGE() result(jresult)
    class(Image), pointer :: jresult
    if (.not. NullImage_jset_NULL_IMAGE) then
      NullImage_jset_NULL_IMAGE = .true.
      NullImage_jcell_NULL_IMAGE => Image_jnew_0()
    end if
    jresult => NullImage_jcell_NULL_IMAGE
  end function

  subroutine NullImage_jsetstatic_NULL_IMAGE(jvalue)
    class(Image), target, optional :: jvalue
    NullImage_jset_NULL_IMAGE = .true.
    if (present(jvalue)) then
      NullImage_jcell_NULL_IMAGE => jvalue
    else
      NullImage_jcell_NULL_IMAGE => null()
    end if
  end subroutine

  function NullImage_jnew_0() result(this)
    class(NullImage), pointer :: this
    allocate(this)
    this%jclass = 'NullImage'
  end function
end module NullImage_m

