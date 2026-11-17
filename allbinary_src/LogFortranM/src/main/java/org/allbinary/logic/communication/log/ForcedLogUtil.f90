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
module ForcedLogUtil_m
  use JR_m
  use CommonStrings_m
  use PreLogUtil_m
  implicit none

  type, extends(JObject) :: ForcedLogUtil
  end type


contains

  function ForcedLogUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ForcedLogUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ForcedLogUtil)
      jresult => object
    end select
  end function

  function ForcedLogUtil_jnew_0() result(this)
    class(ForcedLogUtil), pointer :: this
    allocate(this)
    this%jclass = 'ForcedLogUtil'
  end function

  recursive subroutine ForcedLogUtil_jm_log_2(j_message, j_anyType)
    character(len=*), intent(in) :: j_message
    class(JObject), target, optional :: j_anyType
    class(CommonStrings), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            error stop JR_toString(JR_newJObject('Exception'))
  end subroutine
end module ForcedLogUtil_m

