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
module DemoGameStartupRunnable_m
  use JR_m
  use LogUtil_m
  use CommonStrings_m
  use ABRunnable_m
  use DemoCanvas_m
  implicit none

  type, extends(ABRunnable) :: DemoGameStartupRunnable
    class(LogUtil), pointer :: f_logUtil => null()
    class(DemoCanvas), pointer :: f_demoCanvas => null()
  contains
    procedure :: jm_run_0 => DemoGameStartupRunnable_jm_run_0
    procedure :: jm_getType_0 => DemoGameStartupRunnable_jm_getType_0
  end type

  integer(4), save :: DemoGameStartupRunnable_jcell_TYPE
  logical, save :: DemoGameStartupRunnable_jset_TYPE = .false.

contains

  function DemoGameStartupRunnable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(DemoGameStartupRunnable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (DemoGameStartupRunnable)
      jresult => object
    end select
  end function

  function DemoGameStartupRunnable_jstatic_TYPE() result(jresult)
    integer(4) :: jresult
    if (.not. DemoGameStartupRunnable_jset_TYPE) then
      DemoGameStartupRunnable_jset_TYPE = .true.
      DemoGameStartupRunnable_jcell_TYPE = 4
    end if
    jresult = DemoGameStartupRunnable_jcell_TYPE
  end function

  subroutine DemoGameStartupRunnable_jsetstatic_TYPE(jvalue)
    integer(4), value :: jvalue
    DemoGameStartupRunnable_jset_TYPE = .true.
    DemoGameStartupRunnable_jcell_TYPE = jvalue
  end subroutine

  recursive function DemoGameStartupRunnable_jnew_1(j_demoCanvas) result(this)
    class(DemoCanvas), target, optional :: j_demoCanvas
    class(DemoGameStartupRunnable), pointer :: this
    allocate(this)
    this%jclass = 'DemoGameStartupRunnable'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
        this%f_demoCanvas => j_demoCanvas
  end function

  recursive subroutine DemoGameStartupRunnable_jm_run_0(this)
    class(DemoGameStartupRunnable), target :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            call this%jm_setRunning_1(.true.)
            call this%f_demoCanvas%jm_stopGameDemo_0()
            call this%f_demoCanvas%jm_create_0()
            call this%f_demoCanvas%jm_start_0()
            call this%jm_setRunning_1(.false.)
  end subroutine

  recursive function DemoGameStartupRunnable_jm_getType_0(this) result(jresult)
    class(DemoGameStartupRunnable), target :: this
    integer(4) :: jresult
        jresult = DemoGameStartupRunnable_jstatic_TYPE()
        return
  end function
end module DemoGameStartupRunnable_m

