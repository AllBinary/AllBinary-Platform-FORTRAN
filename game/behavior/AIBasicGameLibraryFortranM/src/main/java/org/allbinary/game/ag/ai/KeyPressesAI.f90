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
! package org.allbinary.game.ag.ai
module KeyPressesAI_m
  use JR_m
  use GameInput_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use HashtableUtil_m
  use BasicAI_m
  use ABHashtable_m
  use Integer_m
  implicit none

  type, extends(BasicAI) :: KeyPressesAI
    logical :: f_on = .false.
    integer(4), allocatable :: f_keys(:)
  contains
    procedure :: jm_processAI_1 => KeyPressesAI_jm_processAI_1
    procedure :: jm_toggle_0 => KeyPressesAI_jm_toggle_0
    procedure :: jm_disable_0 => KeyPressesAI_jm_disable_0
    procedure :: jm_enable_0 => KeyPressesAI_jm_enable_0
    procedure :: jm_setOn_1 => KeyPressesAI_jm_setOn_1
    procedure :: jm_isOn_0 => KeyPressesAI_jm_isOn_0
  end type


contains

  function KeyPressesAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(KeyPressesAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (KeyPressesAI)
      jresult => object
    end select
  end function

  recursive function KeyPressesAI_jnew_3(j_hashtable, j_ownerLayerInterface, j_gameInput) result(this)
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(KeyPressesAI), pointer :: this
    type(JRef), allocatable :: j_objectArray(:)
    integer(4) :: j_size
    integer(4) :: j_index
    class(HashtableUtil), pointer :: jtemp1
    allocate(this)
    this%jclass = 'KeyPressesAI'
    this%f_on = .true.
    
        continue ! super()
        this%f_keys = JR_newIntArray(j_hashtable%jm_size_0())
        jtemp1 => HashtableUtil_jm_getInstance_0()
        j_objectArray = jtemp1%jm_getKeysAsArray_1(j_hashtable)
        j_size = size(j_objectArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            this%f_keys((j_index) + 1) = JR_unboxInt(j_hashtable%jm_get_1(j_objectArray((j_index) + 1)%v))
            j_index = j_index + 1
        end do
  end function

  recursive subroutine KeyPressesAI_jm_processAI_1(this, j_layerManager)
    class(KeyPressesAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_on) then
            j_index = 0
            do while ((j_index < size(this%f_keys, 1)))
                call this%BasicAI%jm_processKeyAI_1(int(this%f_keys((j_index) + 1), 4))
                j_index = j_index + 1
            end do
        end if
  end subroutine

  recursive subroutine KeyPressesAI_jm_toggle_0(this)
    class(KeyPressesAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%jm_isOn_0()) then
            call this%jm_setOn_1(.false.)
        else
            call this%jm_setOn_1(.true.)
        end if
  end subroutine

  recursive subroutine KeyPressesAI_jm_disable_0(this)
    class(KeyPressesAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setOn_1(.false.)
  end subroutine

  recursive subroutine KeyPressesAI_jm_enable_0(this)
    class(KeyPressesAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setOn_1(.true.)
  end subroutine

  recursive subroutine KeyPressesAI_jm_setOn_1(this, j_on)
    class(KeyPressesAI), target :: this
    logical, value :: j_on
        this%f_on = j_on
  end subroutine

  recursive function KeyPressesAI_jm_isOn_0(this) result(jresult)
    class(KeyPressesAI), target :: this
    logical :: jresult
        jresult = this%f_on
        return
  end function
end module KeyPressesAI_m

