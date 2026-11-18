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
! package org.allbinary.canvas
module Processor_m
  use JR_m
  implicit none

  type, extends(JObject) :: Processor
  contains
    procedure :: jm_process_0 => Processor_jm_process_0
    procedure :: jm_processt_1 => Processor_jm_processt_1
  end type

  class(Processor), pointer, save :: Processor_jcell_SINGLETON => null()
  logical, save :: Processor_jset_SINGLETON = .false.

contains

  function Processor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Processor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Processor)
      jresult => object
    end select
  end function

  function Processor_jstatic_SINGLETON() result(jresult)
    class(Processor), pointer :: jresult
    if (.not. Processor_jset_SINGLETON) then
      Processor_jset_SINGLETON = .true.
      Processor_jcell_SINGLETON => Processor_jnew_0()
    end if
    jresult => Processor_jcell_SINGLETON
  end function

  subroutine Processor_jsetstatic_SINGLETON(jvalue)
    class(Processor), target, optional :: jvalue
    Processor_jset_SINGLETON = .true.
    if (present(jvalue)) then
      Processor_jcell_SINGLETON => jvalue
    else
      Processor_jcell_SINGLETON => null()
    end if
  end subroutine

  function Processor_jnew_0() result(this)
    class(Processor), pointer :: this
    allocate(this)
    this%jclass = 'Processor'
  end function

  recursive function Processor_jm_getInstance_0() result(jresult)
    class(Processor), pointer :: jresult
        jresult => Processor_jstatic_SINGLETON()
        return
  end function

  recursive subroutine Processor_jm_process_0(this)
    class(Processor), target :: this
    continue
  end subroutine

  recursive subroutine Processor_jm_processt_1(this, j_timeDelta)
    class(Processor), target :: this
    integer(8), value :: j_timeDelta
    continue
  end subroutine
end module Processor_m

