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
! package org.allbinary.input.motion.button
module TouchButtonVisitor_m
  use JR_m
  use TouchButtonInput_m
  implicit none

  type, extends(JObject) :: TouchButtonVisitor
  contains
    procedure :: jm_process_2 => TouchButtonVisitor_jm_process_2
  end type


contains

  function TouchButtonVisitor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TouchButtonVisitor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TouchButtonVisitor)
      jresult => object
    end select
  end function

  function TouchButtonVisitor_jnew_0() result(this)
    class(TouchButtonVisitor), pointer :: this
    allocate(this)
    this%jclass = 'TouchButtonVisitor'
  end function

  recursive subroutine TouchButtonVisitor_jm_process_2(this, j_touchButtonInput, j_string)
    class(TouchButtonVisitor), target :: this
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    character(len=*), intent(in) :: j_string
    continue
  end subroutine
end module TouchButtonVisitor_m

