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
! package org.allbinary.content
module NotificationUtil_m
  use JR_m
  implicit none

  type, extends(JObject) :: NotificationUtil
  contains
    procedure :: jm_notify_3 => NotificationUtil_jm_notify_3
  end type

  class(NotificationUtil), pointer, save :: NotificationUtil_jcell_SINGLETON => null()
  logical, save :: NotificationUtil_jset_SINGLETON = .false.

contains

  function NotificationUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NotificationUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NotificationUtil)
      jresult => object
    end select
  end function

  function NotificationUtil_jstatic_SINGLETON() result(jresult)
    class(NotificationUtil), pointer :: jresult
    if (.not. NotificationUtil_jset_SINGLETON) then
      NotificationUtil_jset_SINGLETON = .true.
      NotificationUtil_jcell_SINGLETON => NotificationUtil_jnew_0()
    end if
    jresult => NotificationUtil_jcell_SINGLETON
  end function

  subroutine NotificationUtil_jsetstatic_SINGLETON(jvalue)
    class(NotificationUtil), target, optional :: jvalue
    NotificationUtil_jset_SINGLETON = .true.
    if (present(jvalue)) then
      NotificationUtil_jcell_SINGLETON => jvalue
    else
      NotificationUtil_jcell_SINGLETON => null()
    end if
  end subroutine

  function NotificationUtil_jnew_0() result(this)
    class(NotificationUtil), pointer :: this
    allocate(this)
    this%jclass = 'NotificationUtil'
  end function

  recursive function NotificationUtil_jm_getInstance_0() result(jresult)
    class(NotificationUtil), pointer :: jresult
        jresult => NotificationUtil_jstatic_SINGLETON()
        return
  end function

  recursive subroutine NotificationUtil_jm_notify_3(this, j_command, j_resource, j_message)
    class(NotificationUtil), target :: this
    class(Command), target, optional :: j_command
    character(len=*), intent(in) :: j_resource
    character(len=*), intent(in) :: j_message
    continue
  end subroutine
end module NotificationUtil_m

