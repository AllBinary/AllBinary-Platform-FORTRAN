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
! package org.allbinary.game.ag.layer.weapon.mine
module MineWeaponResources_m
  use JR_m
  use BasicGameResources_m
  use NullUtil_m
  implicit none

  type, extends(BasicGameResources) :: MineWeaponResources
    character(len=:), allocatable :: f_DROP_TEXT_RESOURCE
    character(len=:), allocatable :: f_DROP_RESOURCE
    character(len=:), allocatable :: f_DROP_ICON_RESOURCE
  end type

  class(JObject), pointer, save :: MineWeaponResources_jcell_instance => null()
  logical, save :: MineWeaponResources_jset_instance = .false.

contains

  function MineWeaponResources_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MineWeaponResources), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MineWeaponResources)
      jresult => object
    end select
  end function

  function MineWeaponResources_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. MineWeaponResources_jset_instance) then
      MineWeaponResources_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    MineWeaponResources_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => MineWeaponResources_jcell_instance
  end function

  subroutine MineWeaponResources_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    MineWeaponResources_jset_instance = .true.
    if (present(jvalue)) then
      MineWeaponResources_jcell_instance => jvalue
    else
      MineWeaponResources_jcell_instance => null()
    end if
  end subroutine

  recursive function MineWeaponResources_jnew_0() result(this)
    class(MineWeaponResources), pointer :: this
    character(len=:), allocatable :: j_ROOT
    character(len=:), allocatable :: j_SMALL
    character(len=:), allocatable :: j_MEDIUM
    character(len=:), allocatable :: j_SIZE_FOUR
    character(len=:), allocatable :: j_SIZE_FIVE
    character(len=:), allocatable :: j_SIZE_SIX
    type(JString), allocatable :: j_SIZE(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'MineWeaponResources'
    this%f_DROP_TEXT_RESOURCE = ''
    this%f_DROP_RESOURCE = ''
    this%f_DROP_ICON_RESOURCE = ''
    this%f_DROP_TEXT_RESOURCE = '/mine_drop_text_20_by_20.png'
    this%f_DROP_RESOURCE = '/mine_drop_20_by_20.png'
    this%f_DROP_ICON_RESOURCE = '/mine_drop_icon_20_by_20.png'
        j_ROOT = '/mine'
        j_SMALL = '_20_by_20.png'
        j_MEDIUM = j_SMALL
        j_SIZE_FOUR = j_SMALL
        j_SIZE_FIVE = j_SMALL
        j_SIZE_SIX = j_SMALL
        j_SIZE = [JString :: JString(j_SMALL), JString(j_MEDIUM), JString(j_SIZE_FOUR), JString(j_SIZE_FIVE), JString(j_SIZE_SIX)]
        call this%BasicGameResources%jm_init_2(j_ROOT, j_SIZE)
  end function

  recursive function MineWeaponResources_jm_getInstance_0() result(jresult)
    class(MineWeaponResources), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(MineWeaponResources_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call MineWeaponResources_jsetstatic_instance(MineWeaponResources_jnew_0())
        end if
        jresult => MineWeaponResources_jcast(MineWeaponResources_jstatic_instance())
        return
  end function
end module MineWeaponResources_m

function MineWeaponResources_jnew_0_jext() result(this)
  use MineWeaponResources_m, only: JObject, MineWeaponResources_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => MineWeaponResources_jnew_0()
end function

