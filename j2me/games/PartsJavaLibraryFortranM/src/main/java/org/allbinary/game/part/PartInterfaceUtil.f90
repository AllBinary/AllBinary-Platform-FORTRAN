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
! package org.allbinary.game.part
module PartInterfaceUtil_m
  use JR_m
  use PartInterface_m
  implicit none

  type, extends(JObject) :: PartInterfaceUtil
  end type

  type(JRef), allocatable, save :: PartInterfaceUtil_jcell_SINGLETON(:)
  logical, save :: PartInterfaceUtil_jset_SINGLETON = .false.

contains

  function PartInterfaceUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PartInterfaceUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PartInterfaceUtil)
      jresult => object
    end select
  end function

  function PartInterfaceUtil_jstatic_SINGLETON() result(jresult)
    type(JRef), allocatable :: jresult(:)
    if (.not. PartInterfaceUtil_jset_SINGLETON) then
      PartInterfaceUtil_jset_SINGLETON = .true.
      PartInterfaceUtil_jcell_SINGLETON = JR_newRefArray(0)
    end if
    jresult = PartInterfaceUtil_jcell_SINGLETON
  end function

  subroutine PartInterfaceUtil_jsetstatic_SINGLETON(jvalue)
    type(JRef) :: jvalue(:)
    PartInterfaceUtil_jset_SINGLETON = .true.
    PartInterfaceUtil_jcell_SINGLETON = jvalue
  end subroutine

  function PartInterfaceUtil_jnew_0() result(this)
    class(PartInterfaceUtil), pointer :: this
    allocate(this)
    this%jclass = 'PartInterfaceUtil'
  end function

  recursive function PartInterfaceUtil_jm_getZeroArray_0() result(jresult)
    type(JRef), allocatable :: jresult(:)
        jresult = PartInterfaceUtil_jstatic_SINGLETON()
        return
  end function
end module PartInterfaceUtil_m

