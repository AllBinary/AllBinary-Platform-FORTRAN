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
module SetAndRemoveProcessor_m
  use JR_m
  use Processor_m
  use PlayerGameNotificationHud_m
  implicit none

  type, extends(Processor) :: SetAndRemoveProcessor
    class(PlayerGameNotificationHud), pointer :: f_updateMeasurementProcessor => null()
  contains
    procedure :: jm_process_0 => SetAndRemoveProcessor_jm_process_0
  end type


contains

  function SetAndRemoveProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SetAndRemoveProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SetAndRemoveProcessor)
      jresult => object
    end select
  end function

  recursive function SetAndRemoveProcessor_jnew_1(j_updateMeasurementProcessor) result(this)
    class(PlayerGameNotificationHud), target, optional :: j_updateMeasurementProcessor
    class(SetAndRemoveProcessor), pointer :: this
    allocate(this)
    this%jclass = 'SetAndRemoveProcessor'
    
        this%f_updateMeasurementProcessor => j_updateMeasurementProcessor
  end function

  recursive subroutine SetAndRemoveProcessor_jm_process_0(this)
    class(SetAndRemoveProcessor), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_updateMeasurementProcessor%jm_setAndRemoveProcess_0()
  end subroutine
end module SetAndRemoveProcessor_m

