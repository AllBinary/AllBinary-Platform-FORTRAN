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
! package org.allbinary.canvas
module FullScreenUtil_m
  use JR_m
  use Features_m
  use MainFeatureFactory_m
  implicit none

  type, extends(JObject) :: FullScreenUtil
  contains
    procedure :: jm_initOnRun_2 => FullScreenUtil_jm_initOnRun_2
    procedure :: jm_init_1 => FullScreenUtil_jm_init_1
    procedure :: jm_isScreenChange_1 => FullScreenUtil_jm_isScreenChange_1
    procedure :: jm_isScreenChangeCanvas_1 => FullScreenUtil_jm_isScreenChangeCanvas_1
  end type

  class(FullScreenUtil), pointer, save :: FullScreenUtil_jcell_instance => null()
  logical, save :: FullScreenUtil_jset_instance = .false.

contains

  function FullScreenUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FullScreenUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FullScreenUtil)
      jresult => object
    end select
  end function

  function FullScreenUtil_jstatic_instance() result(jresult)
    class(FullScreenUtil), pointer :: jresult
    if (.not. FullScreenUtil_jset_instance) then
      FullScreenUtil_jset_instance = .true.
      FullScreenUtil_jcell_instance => FullScreenUtil_jnew_0()
    end if
    jresult => FullScreenUtil_jcell_instance
  end function

  subroutine FullScreenUtil_jsetstatic_instance(jvalue)
    class(FullScreenUtil), target, optional :: jvalue
    FullScreenUtil_jset_instance = .true.
    if (present(jvalue)) then
      FullScreenUtil_jcell_instance => jvalue
    else
      FullScreenUtil_jcell_instance => null()
    end if
  end subroutine

  function FullScreenUtil_jnew_0() result(this)
    class(FullScreenUtil), pointer :: this
    allocate(this)
    this%jclass = 'FullScreenUtil'
  end function

  recursive function FullScreenUtil_jm_getInstance_0() result(jresult)
    class(FullScreenUtil), pointer :: jresult
        jresult => FullScreenUtil_jstatic_instance()
        return
  end function

  recursive subroutine FullScreenUtil_jm_initOnRun_2(this, j_fullScreenInterface, j_commandListener)
    class(FullScreenUtil), target :: this
    class(Canvas), target, optional :: j_fullScreenInterface
    class(CommandListener), target, optional :: j_commandListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (present(j_commandListener)) then
            call this%jm_init_1(j_fullScreenInterface)
        end if
  end subroutine

  recursive subroutine FullScreenUtil_jm_init_1(this, j_fullScreenInterface)
    class(FullScreenUtil), target :: this
    class(Canvas), target, optional :: j_fullScreenInterface
    continue
  end subroutine

  recursive function FullScreenUtil_jm_isScreenChange_1(this, j_isFullScreen) result(jresult)
    class(FullScreenUtil), target :: this
    logical, value :: j_isFullScreen
    logical :: jresult
    class(MainFeatureFactory), pointer :: j_mainFeatureFactory
    class(Features), pointer :: j_features
        j_mainFeatureFactory => MainFeatureFactory_jm_getInstance_0()
        j_features => Features_jm_getInstance_0()
        if ((j_features%jm_isFeature_1(j_mainFeatureFactory%f_FULL_SCREEN) .neqv. j_isFullScreen)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function

  recursive function FullScreenUtil_jm_isScreenChangeCanvas_1(this, j_fullScreenInterface) result(jresult)
    class(FullScreenUtil), target :: this
    class(Canvas), target, optional :: j_fullScreenInterface
    logical :: jresult
        jresult = this%jm_isScreenChange_1(.false.)
        return
  end function
end module FullScreenUtil_m

