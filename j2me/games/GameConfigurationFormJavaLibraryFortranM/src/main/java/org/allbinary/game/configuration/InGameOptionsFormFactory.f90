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
! package org.allbinary.game.configuration
module InGameOptionsFormFactory_m
  use JR_m
  use BasicColor_m
  use CommandForm_m
  use Init_m
  use NullUtil_m
  use LogUtil_m
  use CommonStrings_m
  use InGameOptionsForm_m
  implicit none

  type, extends(JObject) :: InGameOptionsFormFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommandForm), pointer :: f_SINGLETON => null()
  contains
    procedure :: jm_init_5 => InGameOptionsFormFactory_jm_init_5
    procedure :: jm_get_0 => InGameOptionsFormFactory_jm_get_0
  end type

  class(JObject), pointer, save :: InGameOptionsFormFactory_jcell_instance => null()
  logical, save :: InGameOptionsFormFactory_jset_instance = .false.

contains

  function InGameOptionsFormFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InGameOptionsFormFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InGameOptionsFormFactory)
      jresult => object
    end select
  end function

  function InGameOptionsFormFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. InGameOptionsFormFactory_jset_instance) then
      InGameOptionsFormFactory_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    InGameOptionsFormFactory_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => InGameOptionsFormFactory_jcell_instance
  end function

  subroutine InGameOptionsFormFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    InGameOptionsFormFactory_jset_instance = .true.
    if (present(jvalue)) then
      InGameOptionsFormFactory_jcell_instance => jvalue
    else
      InGameOptionsFormFactory_jcell_instance => null()
    end if
  end subroutine

  function InGameOptionsFormFactory_jnew_0() result(this)
    class(InGameOptionsFormFactory), pointer :: this
    allocate(this)
    this%jclass = 'InGameOptionsFormFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_SINGLETON => CommandForm_jm_getNullCommandForm_0()
  end function

  recursive function InGameOptionsFormFactory_jm_getInstance_0() result(jresult)
    class(InGameOptionsFormFactory), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(InGameOptionsFormFactory_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call InGameOptionsFormFactory_jsetstatic_instance(InGameOptionsFormFactory_jnew_0())
        end if
        jresult => InGameOptionsFormFactory_jcast(InGameOptionsFormFactory_jstatic_instance())
        return
  end function

  recursive subroutine InGameOptionsFormFactory_jm_init_5(this, j_commandListener, j_initInterface, j_title, j_backgrounBasicColor, j_foregroundBasicColor)
    class(InGameOptionsFormFactory), target :: this
    class(CommandListener), target, optional :: j_commandListener
    class(Init), target, optional :: j_initInterface
    character(len=*), intent(in) :: j_title
    class(BasicColor), target, optional :: j_backgrounBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            if (JR_same(this%f_SINGLETON, CommandForm_jm_getNullCommandForm_0())) then
                call j_initInterface%jm_init_0()
                this%f_SINGLETON => InGameOptionsForm_jnew_4(j_commandListener, j_title, j_backgrounBasicColor, j_foregroundBasicColor)
            end if
  end subroutine

  recursive function InGameOptionsFormFactory_jm_get_0(this) result(jresult)
    class(InGameOptionsFormFactory), target :: this
    class(CommandForm), pointer :: jresult
        jresult => this%f_SINGLETON
        return
  end function
end module InGameOptionsFormFactory_m

