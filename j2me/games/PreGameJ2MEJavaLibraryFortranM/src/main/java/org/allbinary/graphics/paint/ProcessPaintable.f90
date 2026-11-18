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
! package org.allbinary.graphics.paint
module ProcessPaintable_m
  use JR_m
  use Paintable_m
  implicit none

  type, extends(Paintable) :: ProcessPaintable
  contains
    procedure :: jm_process_0 => ProcessPaintable_jm_process_0
  end type


contains

  function ProcessPaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ProcessPaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ProcessPaintable)
      jresult => object
    end select
  end function

  function ProcessPaintable_jnew_0() result(this)
    class(ProcessPaintable), pointer :: this
    allocate(this)
    this%jclass = 'ProcessPaintable'
  end function

  recursive subroutine ProcessPaintable_jm_process_0(this)
    class(ProcessPaintable), target :: this
    continue
  end subroutine
end module ProcessPaintable_m

function ProcessPaintable_jnew_0_jext() result(this)
  use ProcessPaintable_m, only: JObject, ProcessPaintable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => ProcessPaintable_jnew_0()
end function

