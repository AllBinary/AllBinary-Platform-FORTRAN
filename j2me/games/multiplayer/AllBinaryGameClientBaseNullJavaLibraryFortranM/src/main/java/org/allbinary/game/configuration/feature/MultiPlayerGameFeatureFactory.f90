! Generated Code Do Not Modify
! package org.allbinary.game.configuration.feature
module MultiPlayerGameFeatureFactory_m
  use JR_m
  use GameCommandsFactory_m
  implicit none

  type, extends(JObject) :: MultiPlayerGameFeatureFactory
  contains
    procedure :: jm_addCommands_1 => MultiPlayerGameFeatureFactory_jm_addCommands_1
  end type

  class(MultiPlayerGameFeatureFactory), pointer, save :: MultiPlayerGameFeatureFactory_jcell_instance => null()
  logical, save :: MultiPlayerGameFeatureFactory_jset_instance = .false.

contains

  function MultiPlayerGameFeatureFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MultiPlayerGameFeatureFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MultiPlayerGameFeatureFactory)
      jresult => object
    end select
  end function

  function MultiPlayerGameFeatureFactory_jstatic_instance() result(jresult)
    class(MultiPlayerGameFeatureFactory), pointer :: jresult
    if (.not. MultiPlayerGameFeatureFactory_jset_instance) then
      MultiPlayerGameFeatureFactory_jset_instance = .true.
      MultiPlayerGameFeatureFactory_jcell_instance => MultiPlayerGameFeatureFactory_jnew_0()
    end if
    jresult => MultiPlayerGameFeatureFactory_jcell_instance
  end function

  subroutine MultiPlayerGameFeatureFactory_jsetstatic_instance(jvalue)
    class(MultiPlayerGameFeatureFactory), target, optional :: jvalue
    MultiPlayerGameFeatureFactory_jset_instance = .true.
    if (present(jvalue)) then
      MultiPlayerGameFeatureFactory_jcell_instance => jvalue
    else
      MultiPlayerGameFeatureFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function MultiPlayerGameFeatureFactory_jnew_0() result(this)
    class(MultiPlayerGameFeatureFactory), pointer :: this
    allocate(this)
    this%jclass = 'MultiPlayerGameFeatureFactory'
        continue
  end function

  recursive function MultiPlayerGameFeatureFactory_jm_getInstance_0() result(jresult)
    class(MultiPlayerGameFeatureFactory), pointer :: jresult
        jresult => MultiPlayerGameFeatureFactory_jstatic_instance()
        return
  end function

  recursive subroutine MultiPlayerGameFeatureFactory_jm_addCommands_1(this, j_anyType)
    class(MultiPlayerGameFeatureFactory), target :: this
    class(JObject), target, optional :: j_anyType
    class(GameCommandsFactory), pointer :: j_gameCommandsFactory
    class(Canvas), pointer :: j_canvas
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameCommandsFactory => GameCommandsFactory_jm_getInstance_0()
        j_canvas => Canvas_jcast(j_anyType)
        call j_canvas%jm_addCommand_1(j_gameCommandsFactory%f_QUIT_COMMAND)
  end subroutine
end module MultiPlayerGameFeatureFactory_m

