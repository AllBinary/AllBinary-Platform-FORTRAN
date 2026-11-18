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
! package org.allbinary.game.input
module PlatformInputMappingFactory_m
  use JR_m
  use PersistentInputMapping_m
  use LogUtil_m
  use CommonStrings_m
  use NormalJ2MEGameInputMapping_m
  implicit none

  type, extends(JObject) :: PlatformInputMappingFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(PersistentInputMapping), pointer :: f_inputToGameKeyMapping => null()
  contains
    procedure :: jm_getPersistentInputMappingInstance_0 => PlatformInputMappingFactory_jm_getPersistentInputMappingInstance_0
  end type

  class(PlatformInputMappingFactory), pointer, save :: PlatformInputMappingFactory_jcell_instance => null()
  logical, save :: PlatformInputMappingFactory_jset_instance = .false.

contains

  function PlatformInputMappingFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PlatformInputMappingFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PlatformInputMappingFactory)
      jresult => object
    end select
  end function

  function PlatformInputMappingFactory_jstatic_instance() result(jresult)
    class(PlatformInputMappingFactory), pointer :: jresult
    if (.not. PlatformInputMappingFactory_jset_instance) then
      PlatformInputMappingFactory_jset_instance = .true.
      PlatformInputMappingFactory_jcell_instance => PlatformInputMappingFactory_jnew_0()
    end if
    jresult => PlatformInputMappingFactory_jcell_instance
  end function

  subroutine PlatformInputMappingFactory_jsetstatic_instance(jvalue)
    class(PlatformInputMappingFactory), target, optional :: jvalue
    PlatformInputMappingFactory_jset_instance = .true.
    if (present(jvalue)) then
      PlatformInputMappingFactory_jcell_instance => jvalue
    else
      PlatformInputMappingFactory_jcell_instance => null()
    end if
  end subroutine

  function PlatformInputMappingFactory_jnew_0() result(this)
    class(PlatformInputMappingFactory), pointer :: this
    allocate(this)
    this%jclass = 'PlatformInputMappingFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_inputToGameKeyMapping => PersistentInputMapping_jm_getNullInstance_0()
  end function

  recursive function PlatformInputMappingFactory_jm_getInstance_0() result(jresult)
    class(PlatformInputMappingFactory), pointer :: jresult
        jresult => PlatformInputMappingFactory_jstatic_instance()
        return
  end function

  recursive function PlatformInputMappingFactory_jm_getPersistentInputMappingInstance_0(this) result(jresult)
    class(PlatformInputMappingFactory), target :: this
    class(PersistentInputMapping), pointer :: jresult
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            if (JR_same(this%f_inputToGameKeyMapping, PersistentInputMapping_jm_getNullInstance_0())) then
                this%f_inputToGameKeyMapping => NormalJ2MEGameInputMapping_jnew_0()
            end if
        jresult => this%f_inputToGameKeyMapping
        return
  end function
end module PlatformInputMappingFactory_m

