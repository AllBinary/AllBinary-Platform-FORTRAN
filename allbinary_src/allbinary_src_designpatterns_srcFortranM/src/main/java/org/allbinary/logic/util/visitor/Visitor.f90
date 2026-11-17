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
! package org.allbinary.logic.util.visitor
module Visitor_m
  use JR_m
  use NullUtil_m
  use VisitorInterface_m
  implicit none

  type, extends(VisitorInterface) :: Visitor
    class(NullUtil), pointer :: f_nullUtil => null()
  contains
    procedure :: jm_visit_1 => Visitor_jm_visit_1
  end type

  class(Visitor), pointer, save :: Visitor_jcell_instance => null()
  logical, save :: Visitor_jset_instance = .false.

contains

  function Visitor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Visitor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Visitor)
      jresult => object
    end select
  end function

  function Visitor_jstatic_instance() result(jresult)
    class(Visitor), pointer :: jresult
    if (.not. Visitor_jset_instance) then
      Visitor_jset_instance = .true.
      Visitor_jcell_instance => Visitor_jnew_0()
    end if
    jresult => Visitor_jcell_instance
  end function

  function Visitor_jnew_0() result(this)
    class(Visitor), pointer :: this
    allocate(this)
    this%jclass = 'Visitor'
    this%f_nullUtil => NullUtil_jm_getInstance_0()
  end function

  recursive function Visitor_jm_visit_1(this, j_anyType) result(jresult)
    class(Visitor), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jresult
        jresult => this%f_nullUtil%f_NULL_OBJECT
        return
  end function

  recursive function Visitor_jm_getInstance_0() result(jresult)
    class(Visitor), pointer :: jresult
        jresult => Visitor_jstatic_instance()
        return
  end function
end module Visitor_m

