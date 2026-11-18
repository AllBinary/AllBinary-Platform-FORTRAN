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
! package org.allbinary.input.motion.button
module NoButtonsBuilder_m
  use JR_m
  use LogUtil_m
  use BasicArrayList_m
  use BasicArrayListUtil_m
  use BaseTouchInput_m
  implicit none

  type, extends(BaseTouchInput) :: NoButtonsBuilder
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_getList_0 => NoButtonsBuilder_jm_getList_0
  end type


contains

  function NoButtonsBuilder_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoButtonsBuilder), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoButtonsBuilder)
      jresult => object
    end select
  end function

  function NoButtonsBuilder_jnew_0() result(this)
    class(NoButtonsBuilder), pointer :: this
    allocate(this)
    this%jclass = 'NoButtonsBuilder'
    this%f_logUtil => LogUtil_jm_getInstance_0()
  end function

  recursive function NoButtonsBuilder_jm_getList_0(this) result(jresult)
    class(NoButtonsBuilder), target :: this
    class(BasicArrayList), pointer :: jresult
    class(BasicArrayList), pointer :: j_list
    class(BasicArrayListUtil), pointer :: jtemp1
    class(BasicArrayListUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_CONSTRUCTOR)
            jtemp1 => BasicArrayListUtil_jm_getInstance_0()
            j_list => jtemp1%jm_getImmutableInstance_0()
            jresult => j_list
            return
  end function
end module NoButtonsBuilder_m

function NoButtonsBuilder_jnew_0_jext() result(this)
  use NoButtonsBuilder_m, only: JObject, NoButtonsBuilder_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => NoButtonsBuilder_jnew_0()
end function

