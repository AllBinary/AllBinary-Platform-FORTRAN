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
module PostLoadPlatformImage_m
  use JR_m
  use PlatformImage_m
  implicit none

  type, extends(PlatformImage) :: PostLoadPlatformImage
  end type

  class(PostLoadPlatformImage), pointer, save :: PostLoadPlatformImage_jcell_instance => null()
  logical, save :: PostLoadPlatformImage_jset_instance = .false.

contains

  function PostLoadPlatformImage_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PostLoadPlatformImage), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PostLoadPlatformImage)
      jresult => object
    end select
  end function

  function PostLoadPlatformImage_jstatic_instance() result(jresult)
    class(PostLoadPlatformImage), pointer :: jresult
    if (.not. PostLoadPlatformImage_jset_instance) then
      PostLoadPlatformImage_jset_instance = .true.
      PostLoadPlatformImage_jcell_instance => PostLoadPlatformImage_jnew_0()
    end if
    jresult => PostLoadPlatformImage_jcell_instance
  end function

  subroutine PostLoadPlatformImage_jsetstatic_instance(jvalue)
    class(PostLoadPlatformImage), target, optional :: jvalue
    PostLoadPlatformImage_jset_instance = .true.
    if (present(jvalue)) then
      PostLoadPlatformImage_jcell_instance => jvalue
    else
      PostLoadPlatformImage_jcell_instance => null()
    end if
  end subroutine

  function PostLoadPlatformImage_jnew_0() result(this)
    class(PostLoadPlatformImage), pointer :: this
    allocate(this)
    this%jclass = 'PostLoadPlatformImage'
  end function

  recursive function PostLoadPlatformImage_jm_getInstance_0() result(jresult)
    class(PostLoadPlatformImage), pointer :: jresult
        jresult => PostLoadPlatformImage_jstatic_instance()
        return
  end function
end module PostLoadPlatformImage_m

function PostLoadPlatformImage_jnew_0_jext() result(this)
  use PostLoadPlatformImage_m, only: JObject, PostLoadPlatformImage_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => PostLoadPlatformImage_jnew_0()
end function

