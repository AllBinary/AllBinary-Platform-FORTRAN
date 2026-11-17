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
! package org.allbinary.logic.communication.log
module PreLogUtil_m
  use JR_m
  use NullUtil_m
  implicit none

  type, extends(JObject) :: PreLogUtil
  end type


contains

  function PreLogUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PreLogUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PreLogUtil)
      jresult => object
    end select
  end function

  recursive function PreLogUtil_jnew_0() result(this)
    class(PreLogUtil), pointer :: this
    allocate(this)
    this%jclass = 'PreLogUtil'
        continue
  end function

  recursive subroutine PreLogUtil_jm_put_3(j_specialMessage, j_anyType, j_functionName)
    character(len=*), intent(in) :: j_specialMessage
    class(JObject), target, optional :: j_anyType
    character(len=*), intent(in) :: j_functionName
    class(NullUtil), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => NullUtil_jm_getInstance_0()
        call PreLogUtil_jm_putOE_4(j_specialMessage, j_anyType, j_functionName, jtemp1%f_NULL_OBJECT)
  end subroutine

  recursive subroutine PreLogUtil_jm_putOE_4(j_specialMessage, j_anyType, j_functionName, j_exception)
    character(len=*), intent(in) :: j_specialMessage
    class(JObject), target, optional :: j_anyType
    character(len=*), intent(in) :: j_functionName
    class(JObject), target, optional :: j_exception
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end subroutine

  recursive subroutine PreLogUtil_jm_putSE_4(j_specialMessage, j_className, j_functionName, j_exception)
    character(len=*), intent(in) :: j_specialMessage
    character(len=*), intent(in) :: j_className
    character(len=*), intent(in) :: j_functionName
    class(JObject), target, optional :: j_exception
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end subroutine
end module PreLogUtil_m

