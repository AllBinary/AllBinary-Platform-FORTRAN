! Generated Code Do Not Modify
! package org.allbinary.game
module BasicGameInfoFactory_m
  use JR_m
  implicit none

  type, extends(JObject) :: BasicGameInfoFactory
    integer(4) :: f_currentReleaseIndex = 0
    integer(4) :: f_currentDestroyIndex = 0
    integer(4) :: f_total = 0
  contains
    procedure :: jm_init_1 => BasicGameInfoFactory_jm_init_1
    procedure :: jm_isPeaked_0 => BasicGameInfoFactory_jm_isPeaked_0
    procedure :: jm_howManyLeft_0 => BasicGameInfoFactory_jm_howManyLeft_0
  end type

  class(BasicGameInfoFactory), pointer, save :: BasicGameInfoFactory_jcell_SINGLETON => null()
  logical, save :: BasicGameInfoFactory_jset_SINGLETON = .false.

contains

  function BasicGameInfoFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicGameInfoFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicGameInfoFactory)
      jresult => object
    end select
  end function

  function BasicGameInfoFactory_jstatic_SINGLETON() result(jresult)
    class(BasicGameInfoFactory), pointer :: jresult
    if (.not. BasicGameInfoFactory_jset_SINGLETON) then
      BasicGameInfoFactory_jset_SINGLETON = .true.
      BasicGameInfoFactory_jcell_SINGLETON => BasicGameInfoFactory_jnew_0()
    end if
    jresult => BasicGameInfoFactory_jcell_SINGLETON
  end function

  subroutine BasicGameInfoFactory_jsetstatic_SINGLETON(jvalue)
    class(BasicGameInfoFactory), target, optional :: jvalue
    BasicGameInfoFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      BasicGameInfoFactory_jcell_SINGLETON => jvalue
    else
      BasicGameInfoFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  recursive function BasicGameInfoFactory_jnew_0() result(this)
    class(BasicGameInfoFactory), pointer :: this
    allocate(this)
    this%jclass = 'BasicGameInfoFactory'
    
    
    
        continue
  end function

  recursive function BasicGameInfoFactory_jm_getInstance_0() result(jresult)
    class(BasicGameInfoFactory), pointer :: jresult
        jresult => BasicGameInfoFactory_jstatic_SINGLETON()
        return
  end function

  recursive subroutine BasicGameInfoFactory_jm_init_1(this, j_total)
    class(BasicGameInfoFactory), target :: this
    integer(4), value :: j_total
        this%f_currentReleaseIndex = 0
        this%f_currentDestroyIndex = 0
        this%f_total = j_total
  end subroutine

  recursive function BasicGameInfoFactory_jm_isPeaked_0(this) result(jresult)
    class(BasicGameInfoFactory), target :: this
    logical :: jresult
        if ((this%f_currentDestroyIndex >= this%f_total)) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function BasicGameInfoFactory_jm_howManyLeft_0(this) result(jresult)
    class(BasicGameInfoFactory), target :: this
    integer(4) :: jresult
        jresult = (this%f_total - this%f_currentDestroyIndex)
        return
  end function
end module BasicGameInfoFactory_m

