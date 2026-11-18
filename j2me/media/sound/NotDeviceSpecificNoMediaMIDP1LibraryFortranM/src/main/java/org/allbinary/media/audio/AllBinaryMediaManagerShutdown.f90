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
! package org.allbinary.media.audio
module AllBinaryMediaManagerShutdown_m
  use JR_m
  use LogUtil_m
  use CommonStrings_m
  use AllBinaryMediaManager_m
  use SoundsFactoryInterface_m
  implicit none

  type, extends(JObject) :: AllBinaryMediaManagerShutdown
  end type

  class(AllBinaryMediaManagerShutdown), pointer, save :: AllBinaryMediaManagerShutdown_jcell_instance => null()
  logical, save :: AllBinaryMediaManagerShutdown_jset_instance = .false.

contains

  function AllBinaryMediaManagerShutdown_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryMediaManagerShutdown), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryMediaManagerShutdown)
      jresult => object
    end select
  end function

  function AllBinaryMediaManagerShutdown_jstatic_instance() result(jresult)
    class(AllBinaryMediaManagerShutdown), pointer :: jresult
    if (.not. AllBinaryMediaManagerShutdown_jset_instance) then
      AllBinaryMediaManagerShutdown_jset_instance = .true.
      AllBinaryMediaManagerShutdown_jcell_instance => AllBinaryMediaManagerShutdown_jnew_0()
    end if
    jresult => AllBinaryMediaManagerShutdown_jcell_instance
  end function

  subroutine AllBinaryMediaManagerShutdown_jsetstatic_instance(jvalue)
    class(AllBinaryMediaManagerShutdown), target, optional :: jvalue
    AllBinaryMediaManagerShutdown_jset_instance = .true.
    if (present(jvalue)) then
      AllBinaryMediaManagerShutdown_jcell_instance => jvalue
    else
      AllBinaryMediaManagerShutdown_jcell_instance => null()
    end if
  end subroutine

  function AllBinaryMediaManagerShutdown_jnew_0() result(this)
    class(AllBinaryMediaManagerShutdown), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryMediaManagerShutdown'
  end function

  recursive subroutine AllBinaryMediaManagerShutdown_jm_shutdown_1(j_soundsFactoryInterface)
    class(SoundsFactoryInterface), target, optional :: j_soundsFactoryInterface
    class(LogUtil), pointer :: j_logUtil
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_logUtil => LogUtil_jm_getInstance_0()
        j_commonStrings => CommonStrings_jm_getInstance_0()
        call j_logUtil%jm_putF_3(j_commonStrings%f_START, AllBinaryMediaManagerShutdown_jstatic_instance(), 'shutdown')
        call AllBinaryMediaManager_jm_shutdown_1(j_soundsFactoryInterface)
  end subroutine
end module AllBinaryMediaManagerShutdown_m

