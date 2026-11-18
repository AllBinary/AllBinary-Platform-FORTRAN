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
module MidletStrings_m
  use JR_m
  implicit none

  type, extends(JObject) :: MidletStrings
    character(len=:), allocatable :: f_COMMAND_ACTION
  end type

  class(MidletStrings), pointer, save :: MidletStrings_jcell_instance => null()
  logical, save :: MidletStrings_jset_instance = .false.

contains

  function MidletStrings_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MidletStrings), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MidletStrings)
      jresult => object
    end select
  end function

  function MidletStrings_jstatic_instance() result(jresult)
    class(MidletStrings), pointer :: jresult
    if (.not. MidletStrings_jset_instance) then
      MidletStrings_jset_instance = .true.
      MidletStrings_jcell_instance => MidletStrings_jnew_0()
    end if
    jresult => MidletStrings_jcell_instance
  end function

  subroutine MidletStrings_jsetstatic_instance(jvalue)
    class(MidletStrings), target, optional :: jvalue
    MidletStrings_jset_instance = .true.
    if (present(jvalue)) then
      MidletStrings_jcell_instance => jvalue
    else
      MidletStrings_jcell_instance => null()
    end if
  end subroutine

  function MidletStrings_jnew_0() result(this)
    class(MidletStrings), pointer :: this
    allocate(this)
    this%jclass = 'MidletStrings'
    this%f_COMMAND_ACTION = ''
    this%f_COMMAND_ACTION = 'commandAction'
  end function

  recursive function MidletStrings_jm_getInstance_0() result(jresult)
    class(MidletStrings), pointer :: jresult
        jresult => MidletStrings_jstatic_instance()
        return
  end function
end module MidletStrings_m

