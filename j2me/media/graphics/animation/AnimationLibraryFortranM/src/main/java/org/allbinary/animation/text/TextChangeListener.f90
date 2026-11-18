! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.animation.text
module TextChangeListener_m
  use JR_m
  implicit none

  type, extends(JObject) :: TextChangeListener
  contains
    procedure :: jm_onMeasure_0 => TextChangeListener_jm_onMeasure_0
  end type

  class(TextChangeListener), pointer, save :: TextChangeListener_jcell_instance => null()
  logical, save :: TextChangeListener_jset_instance = .false.

contains

  function TextChangeListener_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TextChangeListener), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TextChangeListener)
      jresult => object
    end select
  end function

  function TextChangeListener_jstatic_instance() result(jresult)
    class(TextChangeListener), pointer :: jresult
    if (.not. TextChangeListener_jset_instance) then
      TextChangeListener_jset_instance = .true.
      TextChangeListener_jcell_instance => TextChangeListener_jnew_0()
    end if
    jresult => TextChangeListener_jcell_instance
  end function

  subroutine TextChangeListener_jsetstatic_instance(jvalue)
    class(TextChangeListener), target, optional :: jvalue
    TextChangeListener_jset_instance = .true.
    if (present(jvalue)) then
      TextChangeListener_jcell_instance => jvalue
    else
      TextChangeListener_jcell_instance => null()
    end if
  end subroutine

  function TextChangeListener_jnew_0() result(this)
    class(TextChangeListener), pointer :: this
    allocate(this)
    this%jclass = 'TextChangeListener'
  end function

  recursive function TextChangeListener_jm_getInstance_0() result(jresult)
    class(TextChangeListener), pointer :: jresult
        jresult => TextChangeListener_jstatic_instance()
        return
  end function

  recursive subroutine TextChangeListener_jm_onMeasure_0(this)
    class(TextChangeListener), target :: this
    continue
  end subroutine
end module TextChangeListener_m

