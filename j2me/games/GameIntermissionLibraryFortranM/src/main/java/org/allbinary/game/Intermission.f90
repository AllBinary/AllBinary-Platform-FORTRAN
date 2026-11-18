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
! package org.allbinary.game
module Intermission_m
  use JR_m
  use TimeDelayHelper_m
  use IntermissionInterface_m
  use NullIntermissionEnableListener_m
  use IntermissionEnableListenerInterface_m
  implicit none

  type, extends(IntermissionInterface) :: Intermission
    logical :: f_enabled = .false.
    class(TimeDelayHelper), pointer :: f_timeElapsedHelper => null()
    class(IntermissionEnableListenerInterface), pointer :: f_intermissionEnableListener => null()
  contains
    procedure :: jm_setListener_1 => Intermission_jm_setListener_1
    procedure :: jm_getTimeDelayHelper_0 => Intermission_jm_getTimeDelayHelper_0
    procedure :: jm_setEnabled_1 => Intermission_jm_setEnabled_1
    procedure :: jm_isEnabled_0 => Intermission_jm_isEnabled_0
  end type


contains

  function Intermission_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Intermission), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Intermission)
      jresult => object
    end select
  end function

  recursive function Intermission_jnew_0() result(this)
    class(Intermission), pointer :: this
    allocate(this)
    this%jclass = 'Intermission'
    
    this%f_timeElapsedHelper => TimeDelayHelper_jnew_1(0)
    this%f_intermissionEnableListener => NullIntermissionEnableListener_jm_getInstance_0()
        continue
  end function

  recursive subroutine Intermission_jm_setListener_1(this, j_enableListener)
    class(Intermission), target :: this
    class(IntermissionEnableListenerInterface), target, optional :: j_enableListener
        this%f_intermissionEnableListener => j_enableListener
  end subroutine

  recursive function Intermission_jm_getTimeDelayHelper_0(this) result(jresult)
    class(Intermission), target :: this
    class(TimeDelayHelper), pointer :: jresult
        jresult => this%f_timeElapsedHelper
        return
  end function

  recursive subroutine Intermission_jm_setEnabled_1(this, j_value)
    class(Intermission), target :: this
    logical, value :: j_value
    class(TimeDelayHelper), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        this%f_enabled = j_value
        if (this%jm_isEnabled_0()) then
            jtemp1 => this%jm_getTimeDelayHelper_0()
            call jtemp1%jm_setStartTimeTNT_0()
        end if
        call this%f_intermissionEnableListener%jm_notifyIntermission_1(j_value)
  end subroutine

  recursive function Intermission_jm_isEnabled_0(this) result(jresult)
    class(Intermission), target :: this
    logical :: jresult
        jresult = this%f_enabled
        return
  end function
end module Intermission_m

