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
module MultiKeyPressesAI_m
  use JR_m
  use GameInput_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use GameTickTimeDelayHelper_m
  use GameTickTimeDelayHelperFactory_m
  use TimeDelayHelper_m
  use ABHashtable_m
  use Integer_m
  use KeyPressesAI_m
  implicit none

  type, extends(KeyPressesAI) :: MultiKeyPressesAI
    class(TimeDelayHelper), pointer :: f_toggleTimeHelper => null()
    class(GameTickTimeDelayHelper), pointer :: f_gameTickTimeDelayHelper => null()
  contains
    procedure :: jm_processAI_1 => MultiKeyPressesAI_jm_processAI_1
    procedure :: jm_update_0 => MultiKeyPressesAI_jm_update_0
    procedure :: jm_toggle_0 => MultiKeyPressesAI_jm_toggle_0
    procedure :: jm_disable_0 => MultiKeyPressesAI_jm_disable_0
    procedure :: jm_enable_0 => MultiKeyPressesAI_jm_enable_0
  end type


contains

  function MultiKeyPressesAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MultiKeyPressesAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MultiKeyPressesAI)
      jresult => object
    end select
  end function

  recursive function MultiKeyPressesAI_jnew_3(j_hashtable, j_ownerLayerInterface, j_gameInput) result(this)
    class(ABHashtable), target, optional :: j_hashtable
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(MultiKeyPressesAI), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'MultiKeyPressesAI'
    this%f_toggleTimeHelper => TimeDelayHelper_jnew_1(600)
    this%f_gameTickTimeDelayHelper => GameTickTimeDelayHelperFactory_jm_getInstance_0()
        continue ! super()
        call this%jm_update_0()
  end function

  recursive subroutine MultiKeyPressesAI_jm_processAI_1(this, j_layerManager)
    class(MultiKeyPressesAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    continue
  end subroutine

  recursive subroutine MultiKeyPressesAI_jm_update_0(this)
    class(MultiKeyPressesAI), target :: this
    class(GameInput), pointer :: j_gameInput
    integer(4), allocatable :: j_keys(:)
    integer(4) :: j_size
    integer(4) :: j_key
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_gameInput => this%jm_getGameInput_0()
        j_keys = this%f_keys
        j_size = size(j_keys, 1)
        if (this%jm_isOn_0()) then
            j_index = 0
            do while ((j_index < j_size))
                j_key = int(j_keys((j_index) + 1), 4)
                if ((j_key /= (-1))) then
                    call j_gameInput%jm_add_1(this%f_gameKeyEventFactory%jm_getInstanceForKey_2(this, j_key))
                end if
                j_index = j_index + 1
            end do
        else
            j_index = 0
            do while ((j_index < j_size))
                j_key = int(j_keys((j_index) + 1), 4)
                if ((j_key /= (-1))) then
                    call j_gameInput%jm_addForRemoval_1(this%f_gameKeyEventFactory%jm_getInstanceForKey_2(this, j_key))
                end if
                j_index = j_index + 1
            end do
        end if
  end subroutine

  recursive subroutine MultiKeyPressesAI_jm_toggle_0(this)
    class(MultiKeyPressesAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_toggleTimeHelper%jm_isTime_1(this%f_gameTickTimeDelayHelper%f_startTime)) then
            call this%KeyPressesAI%jm_toggle_0()
            call this%jm_update_0()
        end if
  end subroutine

  recursive subroutine MultiKeyPressesAI_jm_disable_0(this)
    class(MultiKeyPressesAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_toggleTimeHelper%jm_isTime_1(this%f_gameTickTimeDelayHelper%f_startTime)) then
            call this%KeyPressesAI%jm_disable_0()
            call this%jm_update_0()
        end if
  end subroutine

  recursive subroutine MultiKeyPressesAI_jm_enable_0(this)
    class(MultiKeyPressesAI), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_toggleTimeHelper%jm_isTime_1(this%f_gameTickTimeDelayHelper%f_startTime)) then
            call this%KeyPressesAI%jm_enable_0()
            call this%jm_update_0()
        end if
  end subroutine
end module MultiKeyPressesAI_m

