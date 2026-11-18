! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
module PreLoadPlatformImage_m
  use JR_m
  use PlatformImage_m
  implicit none

  type, extends(PlatformImage) :: PreLoadPlatformImage
  end type

  class(PreLoadPlatformImage), pointer, save :: PreLoadPlatformImage_jcell_instance => null()
  logical, save :: PreLoadPlatformImage_jset_instance = .false.

contains

  function PreLoadPlatformImage_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PreLoadPlatformImage), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PreLoadPlatformImage)
      jresult => object
    end select
  end function

  function PreLoadPlatformImage_jstatic_instance() result(jresult)
    class(PreLoadPlatformImage), pointer :: jresult
    if (.not. PreLoadPlatformImage_jset_instance) then
      PreLoadPlatformImage_jset_instance = .true.
      PreLoadPlatformImage_jcell_instance => PreLoadPlatformImage_jnew_0()
    end if
    jresult => PreLoadPlatformImage_jcell_instance
  end function

  subroutine PreLoadPlatformImage_jsetstatic_instance(jvalue)
    class(PreLoadPlatformImage), target, optional :: jvalue
    PreLoadPlatformImage_jset_instance = .true.
    if (present(jvalue)) then
      PreLoadPlatformImage_jcell_instance => jvalue
    else
      PreLoadPlatformImage_jcell_instance => null()
    end if
  end subroutine

  function PreLoadPlatformImage_jnew_0() result(this)
    class(PreLoadPlatformImage), pointer :: this
    allocate(this)
    this%jclass = 'PreLoadPlatformImage'
  end function

  recursive function PreLoadPlatformImage_jm_getInstance_0() result(jresult)
    class(PreLoadPlatformImage), pointer :: jresult
        jresult => PreLoadPlatformImage_jstatic_instance()
        return
  end function
end module PreLoadPlatformImage_m

function PreLoadPlatformImage_jnew_0_jext() result(this)
  use PreLoadPlatformImage_m, only: JObject, PreLoadPlatformImage_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => PreLoadPlatformImage_jnew_0()
end function

