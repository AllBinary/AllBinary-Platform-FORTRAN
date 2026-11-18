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
! package org.allbinary.graphics
module Anchor_m
  use JR_m
  implicit none

  type, extends(JObject) :: Anchor
  end type

  integer(4), save :: Anchor_jcell_TOP_LEFT
  logical, save :: Anchor_jset_TOP_LEFT = .false.

contains

  function Anchor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Anchor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Anchor)
      jresult => object
    end select
  end function

  function Anchor_jstatic_TOP_LEFT() result(jresult)
    integer(4) :: jresult
    if (.not. Anchor_jset_TOP_LEFT) then
      Anchor_jset_TOP_LEFT = .true.
      Anchor_jcell_TOP_LEFT = iand(Graphics_jstatic_TOP(), Graphics_jstatic_LEFT())
    end if
    jresult = Anchor_jcell_TOP_LEFT
  end function

  subroutine Anchor_jsetstatic_TOP_LEFT(jvalue)
    integer(4), value :: jvalue
    Anchor_jset_TOP_LEFT = .true.
    Anchor_jcell_TOP_LEFT = jvalue
  end subroutine

  function Anchor_jnew_0() result(this)
    class(Anchor), pointer :: this
    allocate(this)
    this%jclass = 'Anchor'
  end function
end module Anchor_m

