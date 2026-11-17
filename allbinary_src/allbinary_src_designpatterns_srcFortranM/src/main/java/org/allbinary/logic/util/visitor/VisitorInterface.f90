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
module VisitorInterface_m
  use JR_m
  implicit none

  type, extends(JObject) :: VisitorInterface
  contains
    procedure :: jm_visit_1 => VisitorInterface_jm_visit_1
  end type


contains

  function VisitorInterface_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(VisitorInterface), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (VisitorInterface)
      jresult => object
    end select
  end function

  function VisitorInterface_jnew_0() result(this)
    class(VisitorInterface), pointer :: this
    allocate(this)
    this%jclass = 'VisitorInterface'
  end function

  recursive function VisitorInterface_jm_visit_1(this, j_anyType) result(jresult)
    class(VisitorInterface), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jresult
    error stop 'AbstractMethodError: VisitorInterface.visit'
  end function
end module VisitorInterface_m

