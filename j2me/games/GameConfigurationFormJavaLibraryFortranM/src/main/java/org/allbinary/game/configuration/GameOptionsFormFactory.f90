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
module GameOptionsFormFactory_m
  use JR_m
  use BasicColor_m
  use CommandForm_m
  use LogUtil_m
  use CommonStrings_m
  use GameOptionsForm_m
  implicit none

  type, extends(JObject) :: GameOptionsFormFactory
    class(LogUtil), pointer :: f_logUtil => null()
  contains
    procedure :: jm_init_4 => GameOptionsFormFactory_jm_init_4
  end type

  class(GameOptionsFormFactory), pointer, save :: GameOptionsFormFactory_jcell_instance => null()
  logical, save :: GameOptionsFormFactory_jset_instance = .false.

contains

  function GameOptionsFormFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameOptionsFormFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameOptionsFormFactory)
      jresult => object
    end select
  end function

  function GameOptionsFormFactory_jstatic_instance() result(jresult)
    class(GameOptionsFormFactory), pointer :: jresult
    if (.not. GameOptionsFormFactory_jset_instance) then
      GameOptionsFormFactory_jset_instance = .true.
      GameOptionsFormFactory_jcell_instance => GameOptionsFormFactory_jnew_0()
    end if
    jresult => GameOptionsFormFactory_jcell_instance
  end function

  subroutine GameOptionsFormFactory_jsetstatic_instance(jvalue)
    class(GameOptionsFormFactory), target, optional :: jvalue
    GameOptionsFormFactory_jset_instance = .true.
    if (present(jvalue)) then
      GameOptionsFormFactory_jcell_instance => jvalue
    else
      GameOptionsFormFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function GameOptionsFormFactory_jnew_0() result(this)
    class(GameOptionsFormFactory), pointer :: this
    allocate(this)
    this%jclass = 'GameOptionsFormFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
        continue
  end function

  recursive function GameOptionsFormFactory_jm_getInstance_0() result(jresult)
    class(GameOptionsFormFactory), pointer :: jresult
        jresult => GameOptionsFormFactory_jstatic_instance()
        return
  end function

  recursive function GameOptionsFormFactory_jm_init_4(this, j_commandListener, j_title, j_backgrounBasicColor, j_foregroundBasicColor) result(jresult)
    class(GameOptionsFormFactory), target :: this
    class(CommandListener), target, optional :: j_commandListener
    character(len=*), intent(in) :: j_title
    class(BasicColor), target, optional :: j_backgrounBasicColor
    class(BasicColor), target, optional :: j_foregroundBasicColor
    class(CommandForm), pointer :: jresult
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jresult => GameOptionsForm_jnew_4(j_commandListener, j_title, j_backgrounBasicColor, j_foregroundBasicColor)
            return
  end function
end module GameOptionsFormFactory_m

