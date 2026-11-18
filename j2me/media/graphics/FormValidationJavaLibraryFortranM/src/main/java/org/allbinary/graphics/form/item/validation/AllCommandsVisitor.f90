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
! package org.allbinary.graphics.form.item.validation
module AllCommandsVisitor_m
  use JR_m
  use BooleanFactory_m
  use Visitor_m
  implicit none

  type, extends(Visitor) :: AllCommandsVisitor
  contains
    procedure :: jm_visit_1 => AllCommandsVisitor_jm_visit_1
  end type


contains

  function AllCommandsVisitor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllCommandsVisitor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllCommandsVisitor)
      jresult => object
    end select
  end function

  recursive function AllCommandsVisitor_jnew_0() result(this)
    class(AllCommandsVisitor), pointer :: this
    allocate(this)
    this%jclass = 'AllCommandsVisitor'
        continue
  end function

  recursive function AllCommandsVisitor_jm_visit_1(this, j_anyType) result(jresult)
    class(AllCommandsVisitor), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jresult
    class(BooleanFactory), pointer :: jtemp1
        jtemp1 => BooleanFactory_jm_getInstance_0()
        jresult => jtemp1%f_TRUE
        return
  end function
end module AllCommandsVisitor_m

function AllCommandsVisitor_jnew_0_jext() result(this)
  use AllCommandsVisitor_m, only: JObject, AllCommandsVisitor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => AllCommandsVisitor_jnew_0()
end function

