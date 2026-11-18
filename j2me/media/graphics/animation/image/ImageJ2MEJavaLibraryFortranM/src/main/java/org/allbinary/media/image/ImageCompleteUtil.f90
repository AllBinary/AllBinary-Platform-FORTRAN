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
module ImageCompleteUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: ImageCompleteUtil
  contains
    procedure :: jm_waitForImage_2 => ImageCompleteUtil_jm_waitForImage_2
  end type

  class(ImageCompleteUtil), pointer, save :: ImageCompleteUtil_jcell_instance => null()
  logical, save :: ImageCompleteUtil_jset_instance = .false.

contains

  function ImageCompleteUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ImageCompleteUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ImageCompleteUtil)
      jresult => object
    end select
  end function

  function ImageCompleteUtil_jstatic_instance() result(jresult)
    class(ImageCompleteUtil), pointer :: jresult
    if (.not. ImageCompleteUtil_jset_instance) then
      ImageCompleteUtil_jset_instance = .true.
      ImageCompleteUtil_jcell_instance => ImageCompleteUtil_jnew_0()
    end if
    jresult => ImageCompleteUtil_jcell_instance
  end function

  subroutine ImageCompleteUtil_jsetstatic_instance(jvalue)
    class(ImageCompleteUtil), target, optional :: jvalue
    ImageCompleteUtil_jset_instance = .true.
    if (present(jvalue)) then
      ImageCompleteUtil_jcell_instance => jvalue
    else
      ImageCompleteUtil_jcell_instance => null()
    end if
  end subroutine

  function ImageCompleteUtil_jnew_0() result(this)
    class(ImageCompleteUtil), pointer :: this
    allocate(this)
    this%jclass = 'ImageCompleteUtil'
  end function

  recursive function ImageCompleteUtil_jm_getInstance_0() result(jresult)
    class(ImageCompleteUtil), pointer :: jresult
        jresult => ImageCompleteUtil_jstatic_instance()
        return
  end function

  recursive subroutine ImageCompleteUtil_jm_waitForImage_2(this, j_image, j_name)
    class(ImageCompleteUtil), target :: this
    class(Image), target, optional :: j_image
    character(len=*), intent(in) :: j_name
    continue
  end subroutine
end module ImageCompleteUtil_m

