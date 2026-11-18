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
! package org.allbinary.game.displayable.canvas
module TitleResource_m
  use JR_m
  implicit none

  type, extends(JObject) :: TitleResource
  end type

  character(len=:), allocatable, save :: TitleResource_jcell_RESOURCE_TITLE
  logical, save :: TitleResource_jset_RESOURCE_TITLE = .false.

contains

  function TitleResource_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TitleResource), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TitleResource)
      jresult => object
    end select
  end function

  function TitleResource_jstatic_RESOURCE_TITLE() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. TitleResource_jset_RESOURCE_TITLE) then
      TitleResource_jset_RESOURCE_TITLE = .true.
      TitleResource_jcell_RESOURCE_TITLE = '/title_sprite_100_by_100.png'
    end if
    jresult = TitleResource_jcell_RESOURCE_TITLE
  end function

  subroutine TitleResource_jsetstatic_RESOURCE_TITLE(jvalue)
    character(len=*), intent(in) :: jvalue
    TitleResource_jset_RESOURCE_TITLE = .true.
    TitleResource_jcell_RESOURCE_TITLE = jvalue
  end subroutine

  function TitleResource_jnew_0() result(this)
    class(TitleResource), pointer :: this
    allocate(this)
    this%jclass = 'TitleResource'
  end function
end module TitleResource_m

