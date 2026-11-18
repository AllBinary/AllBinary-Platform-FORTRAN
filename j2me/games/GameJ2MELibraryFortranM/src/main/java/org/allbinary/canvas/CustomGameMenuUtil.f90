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
module CustomGameMenuUtil_m
  use JR_m
  use AppletUtil_m
  use J2MEUtil_m
  use GameCommandsFactory_m
  use MyCanvas_m
  implicit none

  type, extends(JObject) :: CustomGameMenuUtil
  end type


contains

  function CustomGameMenuUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CustomGameMenuUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CustomGameMenuUtil)
      jresult => object
    end select
  end function

  function CustomGameMenuUtil_jnew_0() result(this)
    class(CustomGameMenuUtil), pointer :: this
    allocate(this)
    this%jclass = 'CustomGameMenuUtil'
  end function

  recursive subroutine CustomGameMenuUtil_jm_add_1(j_canvas)
    class(MyCanvas), target, optional :: j_canvas
    class(GameCommandsFactory), pointer :: j_gameCommandsFactory
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameCommandsFactory => GameCommandsFactory_jm_getInstance_0()
        if (AppletUtil_jm_isAppletLoader_1(j_canvas)) then
            continue
        else if (J2MEUtil_jm_isHTML_0()) then
            continue
        else
            call j_canvas%jm_addCommand_1(j_gameCommandsFactory%f_EXIT_COMMAND)
        end if
  end subroutine
end module CustomGameMenuUtil_m

