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
! package org.allbinary.game.ag.ai
module LastKeyAIVisitor_m
  use JR_m
  use BasicAI_m
  use LogUtil_m
  use BooleanFactory_m
  use Visitor_m
  use CommonStrings_m
  use Boolean_m
  implicit none

  type, extends(Visitor) :: LastKeyAIVisitor
    class(LogUtil), pointer :: f_logUtil => null()
    logical :: f_TRUE = .false.
  contains
    procedure :: jm_visit_1 => LastKeyAIVisitor_jm_visit_1
  end type


contains

  function LastKeyAIVisitor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LastKeyAIVisitor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LastKeyAIVisitor)
      jresult => object
    end select
  end function

  recursive function LastKeyAIVisitor_jnew_0() result(this)
    class(LastKeyAIVisitor), pointer :: this
    class(BooleanFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'LastKeyAIVisitor'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    jtemp1 => BooleanFactory_jm_getInstance_0()
    this%f_TRUE = jtemp1%f_TRUE
        continue
  end function

  recursive function LastKeyAIVisitor_jm_visit_1(this, j_anyType) result(jresult)
    class(LastKeyAIVisitor), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jresult
    class(BasicAI), pointer :: j_basicAI
    integer(4) :: j_key
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_basicAI => BasicAI_jcast(j_anyType)
            j_key = j_basicAI%jm_getLastKey_0()
            if ((j_key /= (-1))) then
                call j_basicAI%jm_processKeyAI_1(j_key)
            end if
        jresult => this%f_TRUE
        return
  end function
end module LastKeyAIVisitor_m

function LastKeyAIVisitor_jnew_0_jext() result(this)
  use LastKeyAIVisitor_m, only: JObject, LastKeyAIVisitor_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => LastKeyAIVisitor_jnew_0()
end function

