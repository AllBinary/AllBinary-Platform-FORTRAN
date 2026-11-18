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
! package org.allbinary.game.ag.layer.hud.basic
module HudResources_m
  use JR_m
  implicit none

  type, extends(JObject) :: HudResources
    character(len=:), allocatable :: f_RESOURCE_LIFE
    character(len=:), allocatable :: f_RESOURCE_HEALTH
  end type

  class(HudResources), pointer, save :: HudResources_jcell_instance => null()
  logical, save :: HudResources_jset_instance = .false.

contains

  function HudResources_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HudResources), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HudResources)
      jresult => object
    end select
  end function

  function HudResources_jstatic_instance() result(jresult)
    class(HudResources), pointer :: jresult
    if (.not. HudResources_jset_instance) then
      HudResources_jset_instance = .true.
      HudResources_jcell_instance => HudResources_jnew_0()
    end if
    jresult => HudResources_jcell_instance
  end function

  subroutine HudResources_jsetstatic_instance(jvalue)
    class(HudResources), target, optional :: jvalue
    HudResources_jset_instance = .true.
    if (present(jvalue)) then
      HudResources_jcell_instance => jvalue
    else
      HudResources_jcell_instance => null()
    end if
  end subroutine

  recursive function HudResources_jnew_0() result(this)
    class(HudResources), pointer :: this
    allocate(this)
    this%jclass = 'HudResources'
    this%f_RESOURCE_LIFE = ''
    this%f_RESOURCE_HEALTH = ''
    this%f_RESOURCE_LIFE = '/hud_life_10_by_10.png'
    this%f_RESOURCE_HEALTH = '/hud_health_10_by_10.png'
        continue
  end function

  recursive function HudResources_jm_getInstance_0() result(jresult)
    class(HudResources), pointer :: jresult
        jresult => HudResources_jstatic_instance()
        return
  end function
end module HudResources_m

