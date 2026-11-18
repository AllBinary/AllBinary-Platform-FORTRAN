! Generated Code Do Not Modify
! package org.allbinary.business.advertisement
module GameAdStateFactory_m
  use JR_m
  use GameAdState_m
  use SoftwareInformation_m
  use GameAdStateFactoryInterface_m
  use AppNameLicensingAdConfiguration_m
  use GameAdStateBase_m
  implicit none

  type, extends(GameAdStateFactoryInterface) :: GameAdStateFactory
    type(JRef), allocatable :: f_gameAdStateArray(:)
    class(GameAdState), pointer :: f_gameAdState => null()
  contains
    procedure :: jm_getCurrentInstance_0 => GameAdStateFactory_jm_getCurrentInstance_0
    procedure :: jm_getInstanceForApp_1 => GameAdStateFactory_jm_getInstanceForApp_1
    procedure :: jm_isEnabled_0 => GameAdStateFactory_jm_isEnabled_0
  end type

  class(GameAdStateFactory), pointer, save :: GameAdStateFactory_jcell_instance => null()
  logical, save :: GameAdStateFactory_jset_instance = .false.

contains

  function GameAdStateFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameAdStateFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameAdStateFactory)
      jresult => object
    end select
  end function

  function GameAdStateFactory_jstatic_instance() result(jresult)
    class(GameAdStateFactory), pointer :: jresult
    if (.not. GameAdStateFactory_jset_instance) then
      GameAdStateFactory_jset_instance = .true.
      GameAdStateFactory_jcell_instance => GameAdStateFactory_jnew_0()
    end if
    jresult => GameAdStateFactory_jcell_instance
  end function

  subroutine GameAdStateFactory_jsetstatic_instance(jvalue)
    class(GameAdStateFactory), target, optional :: jvalue
    GameAdStateFactory_jset_instance = .true.
    if (present(jvalue)) then
      GameAdStateFactory_jcell_instance => jvalue
    else
      GameAdStateFactory_jcell_instance => null()
    end if
  end subroutine

  function GameAdStateFactory_jnew_0() result(this)
    class(GameAdStateFactory), pointer :: this
    allocate(this)
    this%jclass = 'GameAdStateFactory'
    this%f_gameAdStateArray = [JRef :: JRef(GameAdState_jnew_1(AppNameLicensingAdConfiguration_jnew_0()))]
    this%f_gameAdState => GameAdState_jcast(this%f_gameAdStateArray((0) + 1)%v)
  end function

  recursive function GameAdStateFactory_jm_getInstance_0() result(jresult)
    class(GameAdStateFactory), pointer :: jresult
        jresult => GameAdStateFactory_jstatic_instance()
        return
  end function

  recursive function GameAdStateFactory_jm_getCurrentInstance_0(this) result(jresult)
    class(GameAdStateFactory), target :: this
    class(GameAdState), pointer :: jresult
        jresult => this%f_gameAdState
        return
  end function

  recursive function GameAdStateFactory_jm_getInstanceForApp_1(this, j_softwareInformation) result(jresult)
    class(GameAdStateFactory), target :: this
    class(SoftwareInformation), target, optional :: j_softwareInformation
    class(GameAdStateBase), pointer :: jresult
        this%f_gameAdState => GameAdState_jcast(this%f_gameAdStateArray((0) + 1)%v)
        jresult => GameAdState_jcast(this%f_gameAdStateArray((0) + 1)%v)
        return
  end function

  recursive function GameAdStateFactory_jm_isEnabled_0(this) result(jresult)
    class(GameAdStateFactory), target :: this
    logical :: jresult
        jresult = .false.
        return
  end function
end module GameAdStateFactory_m

