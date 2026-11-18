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
module TextItemVisitor_m
  use JR_m
  use BooleanFactory_m
  use Visitor_m
  implicit none

  type, extends(Visitor) :: TextItemVisitor
  contains
    procedure :: jm_visit_1 => TextItemVisitor_jm_visit_1
  end type


contains

  function TextItemVisitor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TextItemVisitor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TextItemVisitor)
      jresult => object
    end select
  end function

  recursive function TextItemVisitor_jnew_0() result(this)
    class(TextItemVisitor), pointer :: this
    allocate(this)
    this%jclass = 'TextItemVisitor'
        continue
  end function

  recursive function TextItemVisitor_jm_visit_1(this, j_anyType) result(jresult)
    class(TextItemVisitor), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jresult
    character(len=:), allocatable :: j_value
    class(BooleanFactory), pointer :: jtemp1
    class(BooleanFactory), pointer :: jtemp2
        j_value = j_anyType
        if ((len(j_value) < 2)) then
            jtemp2 => BooleanFactory_jm_getInstance_0()
            jresult => jtemp2%f_TRUE
            return
        else
            jtemp1 => BooleanFactory_jm_getInstance_0()
            jresult => jtemp1%f_FALSE
            return
        end if
  end function
end module TextItemVisitor_m

function TextItemVisitor_jnew_0_jext() result(this)
  use TextItemVisitor_m, only: JObject, TextItemVisitor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => TextItemVisitor_jnew_0()
end function

