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
! package org.allbinary.game.graphics.hud
module BasicHudFactory_m
  use JR_m
  implicit none

  type, extends(JObject) :: BasicHudFactory
    character(len=:), allocatable :: f_DIRECTION_EXCEPTION
    integer(4) :: f_VERTICAL = 0
    integer(4) :: f_HORIZONTAL = 0
    integer(4) :: f_BOTTOMLEFT = 0
    integer(4) :: f_BOTTOMRIGHT = 0
    integer(4) :: f_TOPLEFT = 0
    integer(4) :: f_TOPRIGHT = 0
    integer(4) :: f_BOTTOMCENTER = 0
    integer(4) :: f_TOPCENTER = 0
    integer(4) :: f_ABSOLUTE = 0
  end type

  class(BasicHudFactory), pointer, save :: BasicHudFactory_jcell_instance => null()
  logical, save :: BasicHudFactory_jset_instance = .false.

contains

  function BasicHudFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicHudFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicHudFactory)
      jresult => object
    end select
  end function

  function BasicHudFactory_jstatic_instance() result(jresult)
    class(BasicHudFactory), pointer :: jresult
    if (.not. BasicHudFactory_jset_instance) then
      BasicHudFactory_jset_instance = .true.
      BasicHudFactory_jcell_instance => BasicHudFactory_jnew_0()
    end if
    jresult => BasicHudFactory_jcell_instance
  end function

  subroutine BasicHudFactory_jsetstatic_instance(jvalue)
    class(BasicHudFactory), target, optional :: jvalue
    BasicHudFactory_jset_instance = .true.
    if (present(jvalue)) then
      BasicHudFactory_jcell_instance => jvalue
    else
      BasicHudFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function BasicHudFactory_jnew_0() result(this)
    class(BasicHudFactory), pointer :: this
    allocate(this)
    this%jclass = 'BasicHudFactory'
    this%f_DIRECTION_EXCEPTION = ''
    this%f_DIRECTION_EXCEPTION = 'Only Horizontal Direction is Allowed Currently'
    this%f_VERTICAL = 0
    this%f_HORIZONTAL = 1
    this%f_BOTTOMLEFT = 0
    this%f_BOTTOMRIGHT = 1
    this%f_TOPLEFT = 2
    this%f_TOPRIGHT = 3
    this%f_BOTTOMCENTER = 4
    this%f_TOPCENTER = 5
    this%f_ABSOLUTE = 6
        continue
  end function

  recursive function BasicHudFactory_jm_getInstance_0() result(jresult)
    class(BasicHudFactory), pointer :: jresult
        jresult => BasicHudFactory_jstatic_instance()
        return
  end function
end module BasicHudFactory_m

