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
! package org.allbinary.game
module NullIntermissionEnableListener_m
  use JR_m
  use IntermissionEnableListenerInterface_m
  implicit none

  type, extends(IntermissionEnableListenerInterface) :: NullIntermissionEnableListener
  contains
    procedure :: jm_notifyIntermission_1 => NullIntermissionEnableListener_jm_notifyIntermission_1
  end type

  class(IntermissionEnableListenerInterface), pointer, save :: NullIntermissionEnableListener_jcell_SINGLETON => null()
  logical, save :: NullIntermissionEnableListener_jset_SINGLETON = .false.

contains

  function NullIntermissionEnableListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullIntermissionEnableListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullIntermissionEnableListener)
      jresult => object
    end select
  end function

  function NullIntermissionEnableListener_jstatic_SINGLETON() result(jresult)
    class(IntermissionEnableListenerInterface), pointer :: jresult
    if (.not. NullIntermissionEnableListener_jset_SINGLETON) then
      NullIntermissionEnableListener_jset_SINGLETON = .true.
      NullIntermissionEnableListener_jcell_SINGLETON => NullIntermissionEnableListener_jnew_0()
    end if
    jresult => NullIntermissionEnableListener_jcell_SINGLETON
  end function

  subroutine NullIntermissionEnableListener_jsetstatic_SINGLETON(jvalue)
    class(IntermissionEnableListenerInterface), target, optional :: jvalue
    NullIntermissionEnableListener_jset_SINGLETON = .true.
    if (present(jvalue)) then
      NullIntermissionEnableListener_jcell_SINGLETON => jvalue
    else
      NullIntermissionEnableListener_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function NullIntermissionEnableListener_jnew_0() result(this)
    class(NullIntermissionEnableListener), pointer :: this
    allocate(this)
    this%jclass = 'NullIntermissionEnableListener'
        continue
  end function

  recursive function NullIntermissionEnableListener_jm_getInstance_0() result(jresult)
    class(IntermissionEnableListenerInterface), pointer :: jresult
        jresult => NullIntermissionEnableListener_jstatic_SINGLETON()
        return
  end function

  recursive subroutine NullIntermissionEnableListener_jm_notifyIntermission_1(this, j_enable)
    class(NullIntermissionEnableListener), target :: this
    logical, value :: j_enable
    continue
  end subroutine
end module NullIntermissionEnableListener_m

