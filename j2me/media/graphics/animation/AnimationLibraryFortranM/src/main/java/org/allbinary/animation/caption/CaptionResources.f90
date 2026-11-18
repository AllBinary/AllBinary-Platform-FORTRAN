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
! package org.allbinary.animation.caption
module CaptionResources_m
  use JR_m
  implicit none

  type, extends(JObject) :: CaptionResources
  end type

  character(len=:), allocatable, save :: CaptionResources_jcell_RESOURCE
  logical, save :: CaptionResources_jset_RESOURCE = .false.

contains

  function CaptionResources_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CaptionResources), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CaptionResources)
      jresult => object
    end select
  end function

  function CaptionResources_jstatic_RESOURCE() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. CaptionResources_jset_RESOURCE) then
      CaptionResources_jset_RESOURCE = .true.
      CaptionResources_jcell_RESOURCE = '/character_message_bubbled_box.png'
    end if
    jresult = CaptionResources_jcell_RESOURCE
  end function

  subroutine CaptionResources_jsetstatic_RESOURCE(jvalue)
    character(len=*), intent(in) :: jvalue
    CaptionResources_jset_RESOURCE = .true.
    CaptionResources_jcell_RESOURCE = jvalue
  end subroutine

  function CaptionResources_jnew_0() result(this)
    class(CaptionResources), pointer :: this
    allocate(this)
    this%jclass = 'CaptionResources'
  end function
end module CaptionResources_m

