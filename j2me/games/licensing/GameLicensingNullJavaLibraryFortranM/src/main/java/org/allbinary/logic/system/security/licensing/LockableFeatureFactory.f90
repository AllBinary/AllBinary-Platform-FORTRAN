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
! package org.allbinary.logic.system.security.licensing
module LockableFeatureFactory_m
  use JR_m
  use BasicArrayList_m
  use BasicArrayListD_m
  implicit none

  type, extends(JObject) :: LockableFeatureFactory
    class(BasicArrayList), pointer :: f_list => null()
  contains
    procedure :: jm_getList_0 => LockableFeatureFactory_jm_getList_0
  end type

  class(LockableFeatureFactory), pointer, save :: LockableFeatureFactory_jcell_instance => null()
  logical, save :: LockableFeatureFactory_jset_instance = .false.

contains

  function LockableFeatureFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LockableFeatureFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LockableFeatureFactory)
      jresult => object
    end select
  end function

  function LockableFeatureFactory_jstatic_instance() result(jresult)
    class(LockableFeatureFactory), pointer :: jresult
    if (.not. LockableFeatureFactory_jset_instance) then
      LockableFeatureFactory_jset_instance = .true.
      LockableFeatureFactory_jcell_instance => LockableFeatureFactory_jnew_0()
    end if
    jresult => LockableFeatureFactory_jcell_instance
  end function

  subroutine LockableFeatureFactory_jsetstatic_instance(jvalue)
    class(LockableFeatureFactory), target, optional :: jvalue
    LockableFeatureFactory_jset_instance = .true.
    if (present(jvalue)) then
      LockableFeatureFactory_jcell_instance => jvalue
    else
      LockableFeatureFactory_jcell_instance => null()
    end if
  end subroutine

  function LockableFeatureFactory_jnew_0() result(this)
    class(LockableFeatureFactory), pointer :: this
    allocate(this)
    this%jclass = 'LockableFeatureFactory'
    this%f_list => BasicArrayListD_jnew_0()
  end function

  recursive function LockableFeatureFactory_jm_getInstance_0() result(jresult)
    class(LockableFeatureFactory), pointer :: jresult
        jresult => LockableFeatureFactory_jstatic_instance()
        return
  end function

  recursive function LockableFeatureFactory_jm_getList_0(this) result(jresult)
    class(LockableFeatureFactory), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_list
        return
  end function
end module LockableFeatureFactory_m

