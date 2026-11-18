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
! package org.allbinary.game.combat.damage
module ExplosionResources_m
  use JR_m
  implicit none

  type, extends(JObject) :: ExplosionResources
    character(len=:), allocatable :: f_EXPLOSION_90_RESOURCE
    character(len=:), allocatable :: f_EXPLOSION_60_RESOURCE
    character(len=:), allocatable :: f_HALF_EXPLOSION_RESOURCE
    character(len=:), allocatable :: f_THIRD_EXPLOSION_RESOURCE
  end type

  class(ExplosionResources), pointer, save :: ExplosionResources_jcell_instance => null()
  logical, save :: ExplosionResources_jset_instance = .false.

contains

  function ExplosionResources_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ExplosionResources), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ExplosionResources)
      jresult => object
    end select
  end function

  function ExplosionResources_jstatic_instance() result(jresult)
    class(ExplosionResources), pointer :: jresult
    if (.not. ExplosionResources_jset_instance) then
      ExplosionResources_jset_instance = .true.
      ExplosionResources_jcell_instance => ExplosionResources_jnew_0()
    end if
    jresult => ExplosionResources_jcell_instance
  end function

  subroutine ExplosionResources_jsetstatic_instance(jvalue)
    class(ExplosionResources), target, optional :: jvalue
    ExplosionResources_jset_instance = .true.
    if (present(jvalue)) then
      ExplosionResources_jcell_instance => jvalue
    else
      ExplosionResources_jcell_instance => null()
    end if
  end subroutine

  recursive function ExplosionResources_jnew_0() result(this)
    class(ExplosionResources), pointer :: this
    allocate(this)
    this%jclass = 'ExplosionResources'
    this%f_EXPLOSION_90_RESOURCE = ''
    this%f_EXPLOSION_60_RESOURCE = ''
    this%f_HALF_EXPLOSION_RESOURCE = ''
    this%f_THIRD_EXPLOSION_RESOURCE = ''
    this%f_EXPLOSION_90_RESOURCE = '/explosion_sprite_90_by_90.png'
    this%f_EXPLOSION_60_RESOURCE = '/explosion_sprite_60_by_60.png'
    this%f_HALF_EXPLOSION_RESOURCE = '/explosion_sprite_30_by_30.png'
    this%f_THIRD_EXPLOSION_RESOURCE = '/explosion_sprite_15_by_15.png'
        continue
  end function

  recursive function ExplosionResources_jm_getInstance_0() result(jresult)
    class(ExplosionResources), pointer :: jresult
        jresult => ExplosionResources_jstatic_instance()
        return
  end function
end module ExplosionResources_m

