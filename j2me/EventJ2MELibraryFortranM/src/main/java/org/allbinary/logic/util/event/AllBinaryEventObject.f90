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
! package org.allbinary.logic.util.event
module AllBinaryEventObject_m
  use JR_m
  use NullUtil_m
  implicit none

  type, extends(JObject) :: AllBinaryEventObject
    class(JObject), pointer :: f_source => null()
  contains
    procedure :: jm_getSource_0 => AllBinaryEventObject_jm_getSource_0
    procedure :: jm_setSource_1 => AllBinaryEventObject_jm_setSource_1
  end type

  class(AllBinaryEventObject), pointer, save :: AllBinaryEventObject_jcell_NULL_EVENT => null()
  logical, save :: AllBinaryEventObject_jset_NULL_EVENT = .false.

contains

  function AllBinaryEventObject_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryEventObject), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryEventObject)
      jresult => object
    end select
  end function

  function AllBinaryEventObject_jstatic_NULL_EVENT() result(jresult)
    class(AllBinaryEventObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. AllBinaryEventObject_jset_NULL_EVENT) then
      AllBinaryEventObject_jset_NULL_EVENT = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    AllBinaryEventObject_jcell_NULL_EVENT => AllBinaryEventObject_jnew_1(jtemp1%f_NULL_OBJECT)
    end if
    jresult => AllBinaryEventObject_jcell_NULL_EVENT
  end function

  subroutine AllBinaryEventObject_jsetstatic_NULL_EVENT(jvalue)
    class(AllBinaryEventObject), target, optional :: jvalue
    AllBinaryEventObject_jset_NULL_EVENT = .true.
    if (present(jvalue)) then
      AllBinaryEventObject_jcell_NULL_EVENT => jvalue
    else
      AllBinaryEventObject_jcell_NULL_EVENT => null()
    end if
  end subroutine

  recursive function AllBinaryEventObject_jnew_1(j_anyType) result(this)
    class(JObject), target, optional :: j_anyType
    class(AllBinaryEventObject), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryEventObject'
    
        this%f_source => j_anyType
  end function

  recursive function AllBinaryEventObject_jm_getSource_0(this) result(jresult)
    class(AllBinaryEventObject), target :: this
    class(JObject), pointer :: jresult
        jresult => this%f_source
        return
  end function

  recursive subroutine AllBinaryEventObject_jm_setSource_1(this, j_source)
    class(AllBinaryEventObject), target :: this
    class(JObject), target, optional :: j_source
        this%f_source => j_source
  end subroutine
end module AllBinaryEventObject_m

