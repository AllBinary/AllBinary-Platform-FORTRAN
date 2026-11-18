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
! package org.allbinary.game.displayable.canvas
module StartIntermissionProcessor_m
  use JR_m
  use Processor_m
  use LogUtil_m
  use CommonStrings_m
  use AllBinaryGameCanvas_m
  implicit none

  type, extends(Processor) :: StartIntermissionProcessor
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(AllBinaryGameCanvas), pointer :: f_gameCanvas => null()
    integer(8) :: f_WAIT = 0_8
  contains
    procedure :: jm_process_0 => StartIntermissionProcessor_jm_process_0
  end type


contains

  function StartIntermissionProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(StartIntermissionProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (StartIntermissionProcessor)
      jresult => object
    end select
  end function

  recursive function StartIntermissionProcessor_jnew_1(j_gameCanvas) result(this)
    class(AllBinaryGameCanvas), target, optional :: j_gameCanvas
    class(StartIntermissionProcessor), pointer :: this
    allocate(this)
    this%jclass = 'StartIntermissionProcessor'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
    this%f_WAIT = 5000_8
        this%f_gameCanvas => j_gameCanvas
  end function

  recursive subroutine StartIntermissionProcessor_jm_process_0(this)
    class(StartIntermissionProcessor), target :: this
    class(TimeDelayHelper), pointer :: jtemp1
    class(IntermissionInterface), pointer :: jtemp2
    class(IntermissionInterface), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => this%f_gameCanvas%jm_getStartIntermissionInterface_0()
        jtemp1 => jtemp2%jm_getTimeDelayHelper_0()
        if (jtemp1%jm_isElapsedTNT_1(this%f_WAIT)) then
            call this%f_logUtil%jm_putF_3('Intermission End', this, this%f_commonStrings%f_PROCESS)
            jtemp3 => this%f_gameCanvas%jm_getStartIntermissionInterface_0()
            call jtemp3%jm_setEnabled_1(.false.)
        end if
  end subroutine
end module StartIntermissionProcessor_m

