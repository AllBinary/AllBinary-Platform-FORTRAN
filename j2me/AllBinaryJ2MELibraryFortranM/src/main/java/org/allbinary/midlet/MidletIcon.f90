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
! package org.allbinary.midlet
module MidletIcon_m
  use JR_m
  implicit none

  type, extends(JObject) :: MidletIcon
  end type

  character(len=:), allocatable, save :: MidletIcon_jcell_RESOURCE
  logical, save :: MidletIcon_jset_RESOURCE = .false.

contains

  function MidletIcon_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MidletIcon), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MidletIcon)
      jresult => object
    end select
  end function

  function MidletIcon_jstatic_RESOURCE() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. MidletIcon_jset_RESOURCE) then
      MidletIcon_jset_RESOURCE = .true.
      MidletIcon_jcell_RESOURCE = 'icon'
    end if
    jresult = MidletIcon_jcell_RESOURCE
  end function

  subroutine MidletIcon_jsetstatic_RESOURCE(jvalue)
    character(len=*), intent(in) :: jvalue
    MidletIcon_jset_RESOURCE = .true.
    MidletIcon_jcell_RESOURCE = jvalue
  end subroutine

  function MidletIcon_jnew_0() result(this)
    class(MidletIcon), pointer :: this
    allocate(this)
    this%jclass = 'MidletIcon'
  end function
end module MidletIcon_m

