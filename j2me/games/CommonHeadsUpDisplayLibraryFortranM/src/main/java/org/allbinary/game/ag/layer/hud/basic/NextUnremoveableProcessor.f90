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
! package org.allbinary.game.ag.layer.hud.basic
module NextUnremoveableProcessor_m
  use JR_m
  use Processor_m
  use PlayerGameNotificationHud_m
  implicit none

  type, extends(Processor) :: NextUnremoveableProcessor
    class(PlayerGameNotificationHud), pointer :: f_updateMeasurementProcessor => null()
  contains
    procedure :: jm_process_0 => NextUnremoveableProcessor_jm_process_0
  end type


contains

  function NextUnremoveableProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NextUnremoveableProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NextUnremoveableProcessor)
      jresult => object
    end select
  end function

  recursive function NextUnremoveableProcessor_jnew_1(j_updateMeasurementProcessor) result(this)
    class(PlayerGameNotificationHud), target, optional :: j_updateMeasurementProcessor
    class(NextUnremoveableProcessor), pointer :: this
    allocate(this)
    this%jclass = 'NextUnremoveableProcessor'
    
        this%f_updateMeasurementProcessor => j_updateMeasurementProcessor
  end function

  recursive subroutine NextUnremoveableProcessor_jm_process_0(this)
    class(NextUnremoveableProcessor), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_updateMeasurementProcessor%jm_setNextUnremoveableProcess_0()
  end subroutine
end module NextUnremoveableProcessor_m

