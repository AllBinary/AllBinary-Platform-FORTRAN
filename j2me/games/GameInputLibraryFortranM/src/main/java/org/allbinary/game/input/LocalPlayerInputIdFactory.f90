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
! package org.allbinary.game.input
module LocalPlayerInputIdFactory_m
  use JR_m
  use AnalogLocationInputFactory_m
  use LogUtil_m
  use StringMaker_m
  implicit none

  type, extends(JObject) :: LocalPlayerInputIdFactory
    class(LogUtil), pointer :: f_logUtil => null()
    integer(4) :: f_MAX_NUMBER_OF_PLAYERS = 0
    integer(4) :: f_MAX_FAST_DEVICEID = 0
    integer(4), allocatable :: f_deviceIdToplayerId(:)
    integer(4), allocatable :: f_playerIdToDeviceId(:)
    logical, allocatable :: f_playersInPlay(:)
    integer(4) :: f_totalDevicesMapped = 0
  contains
    procedure :: jm_getDeviceId_1 => LocalPlayerInputIdFactory_jm_getDeviceId_1
    procedure :: jm_getPlayerForDevice_1 => LocalPlayerInputIdFactory_jm_getPlayerForDevice_1
    procedure :: jm_getTotalDevicesInPlay_0 => LocalPlayerInputIdFactory_jm_getTotalDevicesInPlay_0
    procedure :: jm_isPlayerInPlay_1 => LocalPlayerInputIdFactory_jm_isPlayerInPlay_1
    procedure :: jm_setPlayerInPlay_1 => LocalPlayerInputIdFactory_jm_setPlayerInPlay_1
    procedure :: jm_setPlayerOutOfPlay_1 => LocalPlayerInputIdFactory_jm_setPlayerOutOfPlay_1
    procedure :: jm_getPlayersInPlay_0 => LocalPlayerInputIdFactory_jm_getPlayersInPlay_0
  end type

  class(LocalPlayerInputIdFactory), pointer, save :: LocalPlayerInputIdFactory_jcell_instance => null()
  logical, save :: LocalPlayerInputIdFactory_jset_instance = .false.

contains

  function LocalPlayerInputIdFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LocalPlayerInputIdFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LocalPlayerInputIdFactory)
      jresult => object
    end select
  end function

  function LocalPlayerInputIdFactory_jstatic_instance() result(jresult)
    class(LocalPlayerInputIdFactory), pointer :: jresult
    if (.not. LocalPlayerInputIdFactory_jset_instance) then
      LocalPlayerInputIdFactory_jset_instance = .true.
      LocalPlayerInputIdFactory_jcell_instance => LocalPlayerInputIdFactory_jnew_0()
    end if
    jresult => LocalPlayerInputIdFactory_jcell_instance
  end function

  subroutine LocalPlayerInputIdFactory_jsetstatic_instance(jvalue)
    class(LocalPlayerInputIdFactory), target, optional :: jvalue
    LocalPlayerInputIdFactory_jset_instance = .true.
    if (present(jvalue)) then
      LocalPlayerInputIdFactory_jcell_instance => jvalue
    else
      LocalPlayerInputIdFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function LocalPlayerInputIdFactory_jnew_0() result(this)
    class(LocalPlayerInputIdFactory), pointer :: this
    integer(4) :: j_index
    allocate(this)
    this%jclass = 'LocalPlayerInputIdFactory'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_MAX_NUMBER_OF_PLAYERS = 6
    this%f_MAX_FAST_DEVICEID = 65
    this%f_deviceIdToplayerId = JR_newIntArray(this%f_MAX_FAST_DEVICEID)
    this%f_playerIdToDeviceId = JR_newIntArray(this%f_MAX_NUMBER_OF_PLAYERS)
    this%f_playersInPlay = JR_newBoolArray(this%f_MAX_NUMBER_OF_PLAYERS)
    this%f_totalDevicesMapped = 0
        j_index = (size(this%f_deviceIdToplayerId, 1) - 1)
        do while ((j_index >= 0))
            this%f_deviceIdToplayerId((j_index) + 1) = (-1)
            j_index = j_index - 1
        end do
  end function

  recursive function LocalPlayerInputIdFactory_jm_getInstance_0() result(jresult)
    class(LocalPlayerInputIdFactory), pointer :: jresult
        jresult => LocalPlayerInputIdFactory_jstatic_instance()
        return
  end function

  recursive function LocalPlayerInputIdFactory_jm_getDeviceId_1(this, j_playerInputId) result(jresult)
    class(LocalPlayerInputIdFactory), target :: this
    integer(4), value :: j_playerInputId
    integer(4) :: jresult
        jresult = this%f_playerIdToDeviceId((j_playerInputId) + 1)
        return
  end function

  recursive function LocalPlayerInputIdFactory_jm_getPlayerForDevice_1(this, j_deviceId) result(jresult)
    class(LocalPlayerInputIdFactory), target :: this
    integer(4), value :: j_deviceId
    integer(4) :: jresult
    integer(4) :: j_index
    integer(4) :: j_playerInputId
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(AnalogLocationInputFactory), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue
        if ((j_deviceId < this%f_MAX_FAST_DEVICEID)) then
            j_playerInputId = this%f_deviceIdToplayerId((j_deviceId) + 1)
            if ((j_playerInputId /= (-1))) then
                jresult = j_playerInputId
                return
            end if
        else
            j_index = (this%f_totalDevicesMapped - 1)
            do while ((j_index >= 0))
                if ((this%f_playerIdToDeviceId((j_index) + 1) == j_deviceId)) then
                    jresult = j_index
                    return
                end if
                j_index = j_index - 1
            end do
        end if
        j_index = this%f_totalDevicesMapped
        if ((j_deviceId < this%f_MAX_FAST_DEVICEID)) then
            this%f_deviceIdToplayerId((j_deviceId) + 1) = j_index
        else
            jtemp4 => StringMaker_jnew_0()
            jtemp3 => jtemp4%jm_append_1('Added DeviceId: ')
            jtemp2 => jtemp3%jm_appendint_1(j_deviceId)
            jtemp1 => jtemp2%jm_append_1(' beyond fast Id list')
            call this%f_logUtil%jm_putF_3(jtemp1%jm_toString_0(), this, 'getPlayerForDevice')
        end if
        this%f_playerIdToDeviceId((j_index) + 1) = j_deviceId
        jtemp5 => AnalogLocationInputFactory_jm_getInstance_0()
        call jtemp5%jm_addPlayer_1(this%f_totalDevicesMapped)
        this%f_totalDevicesMapped = this%f_totalDevicesMapped + 1
        jtemp12 => StringMaker_jnew_0()
        jtemp11 => jtemp12%jm_append_1('Added DeviceId: ')
        jtemp10 => jtemp11%jm_appendint_1(j_deviceId)
        jtemp9 => jtemp10%jm_append_1(' at: ')
        jtemp8 => jtemp9%jm_appendint_1(j_index)
        jtemp7 => jtemp8%jm_append_1(' Total: ')
        jtemp6 => jtemp7%jm_appendint_1(this%f_totalDevicesMapped)
        call this%f_logUtil%jm_putF_3(jtemp6%jm_toString_0(), this, 'getPlayerForDevice')
        jresult = j_index
        return
  end function

  recursive function LocalPlayerInputIdFactory_jm_getTotalDevicesInPlay_0(this) result(jresult)
    class(LocalPlayerInputIdFactory), target :: this
    integer(4) :: jresult
    integer(4) :: j_total
    integer(4) :: j_index
        j_total = 0
        j_index = (this%f_totalDevicesMapped - 1)
        do while ((j_index >= 0))
            if ((this%f_playersInPlay((j_index) + 1) .eqv. .true.)) then
                j_total = j_total + 1
            end if
            j_index = j_index - 1
        end do
        jresult = j_total
        return
  end function

  recursive function LocalPlayerInputIdFactory_jm_isPlayerInPlay_1(this, j_playerInputId) result(jresult)
    class(LocalPlayerInputIdFactory), target :: this
    integer(4), value :: j_playerInputId
    logical :: jresult
        jresult = this%f_playersInPlay((j_playerInputId) + 1)
        return
  end function

  recursive subroutine LocalPlayerInputIdFactory_jm_setPlayerInPlay_1(this, j_playerInputId)
    class(LocalPlayerInputIdFactory), target :: this
    integer(4), value :: j_playerInputId
    class(StringMaker), pointer :: jtemp13
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp15 => StringMaker_jnew_0()
        jtemp14 => jtemp15%jm_append_1('Setting PlayerInPlay with playerInputId: ')
        jtemp13 => jtemp14%jm_appendint_1(j_playerInputId)
        call this%f_logUtil%jm_putF_3(jtemp13%jm_toString_0(), this, 'setPlayerInPlay')
        this%f_playersInPlay((j_playerInputId) + 1) = .true.
  end subroutine

  recursive subroutine LocalPlayerInputIdFactory_jm_setPlayerOutOfPlay_1(this, j_playerInputId)
    class(LocalPlayerInputIdFactory), target :: this
    integer(4), value :: j_playerInputId
    class(StringMaker), pointer :: jtemp16
    class(StringMaker), pointer :: jtemp17
    class(StringMaker), pointer :: jtemp18
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp18 => StringMaker_jnew_0()
        jtemp17 => jtemp18%jm_append_1('Setting PlayerOutOfPlay with playerInputId: ')
        jtemp16 => jtemp17%jm_appendint_1(j_playerInputId)
        call this%f_logUtil%jm_putF_3(jtemp16%jm_toString_0(), this, 'setPlayerOutOfPlay')
        this%f_playersInPlay((j_playerInputId) + 1) = .false.
  end subroutine

  recursive function LocalPlayerInputIdFactory_jm_getPlayersInPlay_0(this) result(jresult)
    class(LocalPlayerInputIdFactory), target :: this
    logical, allocatable :: jresult(:)
        jresult = this%f_playersInPlay
        return
  end function
end module LocalPlayerInputIdFactory_m

