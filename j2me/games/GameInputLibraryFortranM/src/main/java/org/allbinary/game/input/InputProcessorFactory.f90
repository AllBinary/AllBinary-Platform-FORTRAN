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
module InputProcessorFactory_m
  use JR_m
  use InputProcessor_m
  implicit none

  type, extends(JObject) :: InputProcessorFactory
    class(InputProcessor), pointer :: f_inputProcessor => null()
  contains
    procedure :: jm_getInputProcessor_0 => InputProcessorFactory_jm_getInputProcessor_0
  end type

  class(InputProcessorFactory), pointer, save :: InputProcessorFactory_jcell_instance => null()
  logical, save :: InputProcessorFactory_jset_instance = .false.

contains

  function InputProcessorFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InputProcessorFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InputProcessorFactory)
      jresult => object
    end select
  end function

  function InputProcessorFactory_jstatic_instance() result(jresult)
    class(InputProcessorFactory), pointer :: jresult
    if (.not. InputProcessorFactory_jset_instance) then
      InputProcessorFactory_jset_instance = .true.
      InputProcessorFactory_jcell_instance => InputProcessorFactory_jnew_0()
    end if
    jresult => InputProcessorFactory_jcell_instance
  end function

  subroutine InputProcessorFactory_jsetstatic_instance(jvalue)
    class(InputProcessorFactory), target, optional :: jvalue
    InputProcessorFactory_jset_instance = .true.
    if (present(jvalue)) then
      InputProcessorFactory_jcell_instance => jvalue
    else
      InputProcessorFactory_jcell_instance => null()
    end if
  end subroutine

  function InputProcessorFactory_jnew_0() result(this)
    class(InputProcessorFactory), pointer :: this
    allocate(this)
    this%jclass = 'InputProcessorFactory'
    this%f_inputProcessor => InputProcessor_jnew_0()
  end function

  recursive function InputProcessorFactory_jm_getInstance_0() result(jresult)
    class(InputProcessorFactory), pointer :: jresult
        jresult => InputProcessorFactory_jstatic_instance()
        return
  end function

  recursive function InputProcessorFactory_jm_getInputProcessor_0(this) result(jresult)
    class(InputProcessorFactory), target :: this
    class(InputProcessor), pointer :: jresult
        jresult => this%f_inputProcessor
        return
  end function
end module InputProcessorFactory_m

