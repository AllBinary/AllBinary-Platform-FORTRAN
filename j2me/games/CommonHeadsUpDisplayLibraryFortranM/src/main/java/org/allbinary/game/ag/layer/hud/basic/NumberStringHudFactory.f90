! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.game.ag.layer.hud.basic
module NumberStringHudFactory_m
  use JR_m
  use BasicHudFactory_m
  use BasicColorFactory_m
  use NullUtil_m
  use LogUtil_m
  use StringUtil_m
  use CommonStrings_m
  use NumberStringHud_m
  implicit none

  type, extends(JObject) :: NumberStringHudFactory
    class(NumberStringHud), pointer :: f_NULL_NUMBER_STRING_HUD => null()
  contains
    procedure :: jm_createHud_0 => NumberStringHudFactory_jm_createHud_0
  end type

  class(JObject), pointer, save :: NumberStringHudFactory_jcell_instance => null()
  logical, save :: NumberStringHudFactory_jset_instance = .false.

contains

  function NumberStringHudFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NumberStringHudFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NumberStringHudFactory)
      jresult => object
    end select
  end function

  function NumberStringHudFactory_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    if (.not. NumberStringHudFactory_jset_instance) then
      NumberStringHudFactory_jset_instance = .true.
      NumberStringHudFactory_jcell_instance => NullUtil_jm_getInstance_0()
    end if
    jresult => NumberStringHudFactory_jcell_instance
  end function

  subroutine NumberStringHudFactory_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    NumberStringHudFactory_jset_instance = .true.
    if (present(jvalue)) then
      NumberStringHudFactory_jcell_instance => jvalue
    else
      NumberStringHudFactory_jcell_instance => null()
    end if
  end subroutine

  function NumberStringHudFactory_jnew_0() result(this)
    class(NumberStringHudFactory), pointer :: this
    allocate(this)
    this%jclass = 'NumberStringHudFactory'
    this%f_NULL_NUMBER_STRING_HUD => this%jm_createHud_0()
  end function

  recursive function NumberStringHudFactory_jm_getInstance_0() result(jresult)
    class(NumberStringHudFactory), pointer :: jresult
        if (JR_same(NumberStringHudFactory_jstatic_instance(), NullUtil_jm_getInstance_0())) then
            call NumberStringHudFactory_jsetstatic_instance(NumberStringHudFactory_jnew_0())
        end if
        jresult => NumberStringHudFactory_jcast(NumberStringHudFactory_jstatic_instance())
        return
  end function

  recursive function NumberStringHudFactory_jm_createHud_0(this) result(jresult)
    class(NumberStringHudFactory), target :: this
    class(NumberStringHud), pointer :: jresult
    class(LogUtil), pointer :: j_logUtil
    class(CommonStrings), pointer :: j_commonStrings
    class(StringUtil), pointer :: jtemp1
    class(BasicHudFactory), pointer :: jtemp2
    class(BasicColorFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            jtemp1 => StringUtil_jm_getInstance_0()
            jtemp2 => BasicHudFactory_jm_getInstance_0()
            jtemp3 => BasicColorFactory_jm_getInstance_0()
            jresult => NumberStringHud_jnew_6(jtemp1%f_EMPTY_STRING, 9, jtemp2%f_ABSOLUTE, 1, 0, jtemp3%f_NULL_COLOR)
            return
  end function
end module NumberStringHudFactory_m

