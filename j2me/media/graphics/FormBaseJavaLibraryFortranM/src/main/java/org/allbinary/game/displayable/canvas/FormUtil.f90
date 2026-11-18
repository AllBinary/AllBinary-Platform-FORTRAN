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
! package org.allbinary.game.displayable.canvas
module FormUtil_m
  use JR_m
  use PointFactory_m
  use Rectangle_m
  use DisplayInfoSingleton_m
  implicit none

  type, extends(JObject) :: FormUtil
  contains
    procedure :: jm_createFormRectangle_0 => FormUtil_jm_createFormRectangle_0
  end type

  class(FormUtil), pointer, save :: FormUtil_jcell_instance => null()
  logical, save :: FormUtil_jset_instance = .false.

contains

  function FormUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FormUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FormUtil)
      jresult => object
    end select
  end function

  function FormUtil_jstatic_instance() result(jresult)
    class(FormUtil), pointer :: jresult
    if (.not. FormUtil_jset_instance) then
      FormUtil_jset_instance = .true.
      FormUtil_jcell_instance => FormUtil_jnew_0()
    end if
    jresult => FormUtil_jcell_instance
  end function

  subroutine FormUtil_jsetstatic_instance(jvalue)
    class(FormUtil), target, optional :: jvalue
    FormUtil_jset_instance = .true.
    if (present(jvalue)) then
      FormUtil_jcell_instance => jvalue
    else
      FormUtil_jcell_instance => null()
    end if
  end subroutine

  function FormUtil_jnew_0() result(this)
    class(FormUtil), pointer :: this
    allocate(this)
    this%jclass = 'FormUtil'
  end function

  recursive function FormUtil_jm_getInstance_0() result(jresult)
    class(FormUtil), pointer :: jresult
        jresult => FormUtil_jstatic_instance()
        return
  end function

  recursive function FormUtil_jm_createFormRectangle_0(this) result(jresult)
    class(FormUtil), target :: this
    class(Rectangle), pointer :: jresult
    class(DisplayInfoSingleton), pointer :: j_displayInfo
    class(PointFactory), pointer :: j_pointFactory
    class(Rectangle), pointer :: j_rectangle
        j_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
        j_pointFactory => PointFactory_jm_getInstance_0()
        j_rectangle => Rectangle_jnew_3(j_pointFactory%jm_createXY_2(30, 10), (j_displayInfo%jm_getLastWidth_0() - 30), (j_displayInfo%jm_getLastHeight_0() - 35))
        jresult => j_rectangle
        return
  end function
end module FormUtil_m

