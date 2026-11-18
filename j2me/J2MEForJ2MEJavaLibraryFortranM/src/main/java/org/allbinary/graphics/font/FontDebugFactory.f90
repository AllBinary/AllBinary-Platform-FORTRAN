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
! package org.allbinary.graphics.font
module FontDebugFactory_m
  use JR_m
  implicit none

  type, extends(JObject) :: FontDebugFactory
  contains
    procedure :: jm_setFont_2 => FontDebugFactory_jm_setFont_2
  end type

  class(FontDebugFactory), pointer, save :: FontDebugFactory_jcell_instance => null()
  logical, save :: FontDebugFactory_jset_instance = .false.

contains

  function FontDebugFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FontDebugFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FontDebugFactory)
      jresult => object
    end select
  end function

  function FontDebugFactory_jstatic_instance() result(jresult)
    class(FontDebugFactory), pointer :: jresult
    if (.not. FontDebugFactory_jset_instance) then
      FontDebugFactory_jset_instance = .true.
      FontDebugFactory_jcell_instance => FontDebugFactory_jnew_0()
    end if
    jresult => FontDebugFactory_jcell_instance
  end function

  subroutine FontDebugFactory_jsetstatic_instance(jvalue)
    class(FontDebugFactory), target, optional :: jvalue
    FontDebugFactory_jset_instance = .true.
    if (present(jvalue)) then
      FontDebugFactory_jcell_instance => jvalue
    else
      FontDebugFactory_jcell_instance => null()
    end if
  end subroutine

  function FontDebugFactory_jnew_0() result(this)
    class(FontDebugFactory), pointer :: this
    allocate(this)
    this%jclass = 'FontDebugFactory'
  end function

  recursive function FontDebugFactory_jm_getInstance_0() result(jresult)
    class(FontDebugFactory), pointer :: jresult
        jresult => FontDebugFactory_jstatic_instance()
        return
  end function

  recursive subroutine FontDebugFactory_jm_setFont_2(this, j_font, j_graphics)
    class(FontDebugFactory), target :: this
    class(Font), target, optional :: j_font
    class(Graphics), target, optional :: j_graphics
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call j_graphics%jm_setFont_1(j_font)
  end subroutine
end module FontDebugFactory_m

