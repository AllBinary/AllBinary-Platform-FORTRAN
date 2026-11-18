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
! package org.allbinary.game.layer.weapon
module WeaponLayerArrayLayerCircularStaticPool_m
  use JR_m
  use CircularIndexUtil_m
  use WeaponLayer_m
  implicit none

  type, extends(JObject) :: WeaponLayerArrayLayerCircularStaticPool
    integer(4) :: f_MAX = 0
    class(CircularIndexUtil), pointer :: f_circularIndexUtil => null()
    type(JRef), allocatable :: f_WEAPONLAYER_ARRAY(:,:)
    type(JRef), allocatable :: f_TWO_WEAPONLAYER_ARRAY(:,:)
    type(JRef), allocatable :: f_THREE_WEAPONLAYER_ARRAY(:,:)
  contains
    procedure :: jm_init_0 => WeaponLayerArrayLayerCircularStaticPool_jm_init_0
    procedure :: jm_getWeaponLayerArrays_1 => WeaponLayerArrayLayerCircularStaticPool_jm_getWeaponLayerArrays_1
    procedure :: jm_getInstanceArray_1 => WeaponLayerArrayLayerCircularStaticPool_jm_getInstanceArray_1
  end type

  class(WeaponLayerArrayLayerCircularStaticPool), pointer, save :: WeaponLayerArrayLayerCircularStaticPool_jcell_instance => null()
  logical, save :: WeaponLayerArrayLayerCircularStaticPool_jset_instance = .false.

contains

  function WeaponLayerArrayLayerCircularStaticPool_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(WeaponLayerArrayLayerCircularStaticPool), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (WeaponLayerArrayLayerCircularStaticPool)
      jresult => object
    end select
  end function

  function WeaponLayerArrayLayerCircularStaticPool_jstatic_instance() result(jresult)
    class(WeaponLayerArrayLayerCircularStaticPool), pointer :: jresult
    if (.not. WeaponLayerArrayLayerCircularStaticPool_jset_instance) then
      WeaponLayerArrayLayerCircularStaticPool_jset_instance = .true.
      WeaponLayerArrayLayerCircularStaticPool_jcell_instance => WeaponLayerArrayLayerCircularStaticPool_jnew_0()
    end if
    jresult => WeaponLayerArrayLayerCircularStaticPool_jcell_instance
  end function

  subroutine WeaponLayerArrayLayerCircularStaticPool_jsetstatic_instance(jvalue)
    class(WeaponLayerArrayLayerCircularStaticPool), target, optional :: jvalue
    WeaponLayerArrayLayerCircularStaticPool_jset_instance = .true.
    if (present(jvalue)) then
      WeaponLayerArrayLayerCircularStaticPool_jcell_instance => jvalue
    else
      WeaponLayerArrayLayerCircularStaticPool_jcell_instance => null()
    end if
  end subroutine

  function WeaponLayerArrayLayerCircularStaticPool_jnew_0() result(this)
    class(WeaponLayerArrayLayerCircularStaticPool), pointer :: this
    allocate(this)
    this%jclass = 'WeaponLayerArrayLayerCircularStaticPool'
    this%f_MAX = 5
    this%f_circularIndexUtil => CircularIndexUtil_jm_createInstance_1(this%f_MAX)
    
    
    
  end function

  recursive function WeaponLayerArrayLayerCircularStaticPool_jm_getInstance_0() result(jresult)
    class(WeaponLayerArrayLayerCircularStaticPool), pointer :: jresult
        jresult => WeaponLayerArrayLayerCircularStaticPool_jstatic_instance()
        return
  end function

  recursive subroutine WeaponLayerArrayLayerCircularStaticPool_jm_init_0(this)
    class(WeaponLayerArrayLayerCircularStaticPool), target :: this
    type(JRef), allocatable :: j_WEAPONLAYER_ARRAY(:,:)
    type(JRef), allocatable :: j_TWO_WEAPONLAYER_ARRAY(:,:)
    type(JRef), allocatable :: j_THREE_WEAPONLAYER_ARRAY(:,:)
    integer(4) :: j_index
        j_WEAPONLAYER_ARRAY = JR_newRefArray2((this%f_MAX * 2), 0)
        j_TWO_WEAPONLAYER_ARRAY = JR_newRefArray2(this%f_MAX, 0)
        j_THREE_WEAPONLAYER_ARRAY = JR_newRefArray2(this%f_MAX, 0)
        j_index = 0
        do while ((j_index < this%f_MAX))
            j_WEAPONLAYER_ARRAY((j_index) + 1, :) => JR_newRefArray(1)
            j_TWO_WEAPONLAYER_ARRAY((j_index) + 1, :) => JR_newRefArray(2)
            j_THREE_WEAPONLAYER_ARRAY((j_index) + 1, :) => JR_newRefArray(3)
            j_index = j_index + 1
        end do
        this%f_WEAPONLAYER_ARRAY = j_WEAPONLAYER_ARRAY
        this%f_TWO_WEAPONLAYER_ARRAY = j_TWO_WEAPONLAYER_ARRAY
        this%f_THREE_WEAPONLAYER_ARRAY = j_THREE_WEAPONLAYER_ARRAY
  end subroutine

  recursive function WeaponLayerArrayLayerCircularStaticPool_jm_getWeaponLayerArrays_1(this, j_size) result(jresult)
    class(WeaponLayerArrayLayerCircularStaticPool), target :: this
    integer(4), value :: j_size
    type(JRef), allocatable :: jresult(:,:)
        if ((j_size == 1)) then
            jresult = this%f_WEAPONLAYER_ARRAY
            return
        else if ((j_size == 2)) then
            jresult = this%f_TWO_WEAPONLAYER_ARRAY
            return
        else if ((j_size == 3)) then
            jresult = this%f_THREE_WEAPONLAYER_ARRAY
            return
        end if
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive function WeaponLayerArrayLayerCircularStaticPool_jm_getInstanceArray_1(this, j_size) result(jresult)
    class(WeaponLayerArrayLayerCircularStaticPool), target :: this
    integer(4), value :: j_size
    type(JRef), allocatable :: jresult(:)
    type(JRef), allocatable :: j_weaponLayerArray(:)
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_weaponLayerArray = this%jm_getWeaponLayerArrays_1(j_size)((this%f_circularIndexUtil%jm_getIndex_0()) + 1)
        jdiscardInt = this%f_circularIndexUtil%jm_next_0()
        jresult = j_weaponLayerArray
        return
  end function
end module WeaponLayerArrayLayerCircularStaticPool_m

