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
! package org.allbinary.layer
module NullLayer_m
  use JR_m
  use ABLayer_m
  implicit none

  type, extends(ABLayer) :: NullLayer
  contains
    procedure :: jm_paint_1 => NullLayer_jm_paint_1
  end type

  class(NullLayer), pointer, save :: NullLayer_jcell_instance => null()
  logical, save :: NullLayer_jset_instance = .false.

contains

  function NullLayer_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NullLayer), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NullLayer)
      jresult => object
    end select
  end function

  function NullLayer_jstatic_instance() result(jresult)
    class(NullLayer), pointer :: jresult
    if (.not. NullLayer_jset_instance) then
      NullLayer_jset_instance = .true.
      NullLayer_jcell_instance => NullLayer_jnew_0()
    end if
    jresult => NullLayer_jcell_instance
  end function

  subroutine NullLayer_jsetstatic_instance(jvalue)
    class(NullLayer), target, optional :: jvalue
    NullLayer_jset_instance = .true.
    if (present(jvalue)) then
      NullLayer_jcell_instance => jvalue
    else
      NullLayer_jcell_instance => null()
    end if
  end subroutine

  recursive function NullLayer_jnew_0() result(this)
    class(NullLayer), pointer :: this
    allocate(this)
    this%jclass = 'NullLayer'
        continue ! super()
  end function

  recursive function NullLayer_jm_getInstance_0() result(jresult)
    class(NullLayer), pointer :: jresult
        jresult => NullLayer_jstatic_instance()
        return
  end function

  recursive subroutine NullLayer_jm_paint_1(this, j_graphics)
    class(NullLayer), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module NullLayer_m

function NullLayer_jnew_0_jext() result(this)
  use NullLayer_m, only: JObject, NullLayer_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NullLayer_jnew_0()
end function

