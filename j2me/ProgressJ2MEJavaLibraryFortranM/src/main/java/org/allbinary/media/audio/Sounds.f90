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
! package org.allbinary.media.audio
module Sounds_m
  use JR_m
  use ProgressCanvas_m
  use ProgressCanvasFactory_m
  use LogUtil_m
  use SmallIntegerSingletonFactory_m
  use StringMaker_m
  use CommonLabels_m
  use CommonStrings_m
  use Integer_m
  use SoundStrings_m
  use SoundsFactoryInterface_m
  use Sound_m
  implicit none

  type, extends(JObject) :: Sounds
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(SoundStrings), pointer :: f_soundStrings => null()
    class(SoundsFactoryInterface), pointer :: f_soundsFactoryInterface => null()
  contains
    procedure :: jm_init_0 => Sounds_jm_init_0
    procedure :: jm_stopAll_0 => Sounds_jm_stopAll_0
    procedure :: jm_closeAll_0 => Sounds_jm_closeAll_0
  end type


contains

  function Sounds_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Sounds), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Sounds)
      jresult => object
    end select
  end function

  recursive function Sounds_jnew_1(j_soundsFactoryInterface) result(this)
    class(SoundsFactoryInterface), target, optional :: j_soundsFactoryInterface
    class(Sounds), pointer :: this
    allocate(this)
    this%jclass = 'Sounds'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    this%f_soundStrings => SoundStrings_jm_getInstance_0()
    
        this%f_soundsFactoryInterface => j_soundsFactoryInterface
  end function

  recursive subroutine Sounds_jm_init_0(this)
    class(Sounds), target :: this
    class(CommonLabels), pointer :: j_commonLabels
    class(ProgressCanvas), pointer :: j_progressCanvas
    type(JRef), allocatable :: j_soundInterfaceArray(:)
    class(SmallIntegerSingletonFactory), pointer :: j_smallIntegerSingletonFactory
    integer(4) :: j_indexInteger
    character(len=:), allocatable :: j_indexString
    class(StringMaker), pointer :: j_stringBuffer
    class(Sound), pointer :: j_soundInterface
    integer(4) :: j_i
    character(len=:), allocatable :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_INIT)
        j_commonLabels => CommonLabels_jm_getInstance_0()
        j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
        call this%f_soundsFactoryInterface%jm_init_0()
        j_soundInterfaceArray = this%f_soundsFactoryInterface%jm_getSoundInterfaceArray_0()
        j_smallIntegerSingletonFactory => SmallIntegerSingletonFactory_jm_getInstance_0()
        continue
        continue
        j_stringBuffer => StringMaker_jnew_0()
        j_i = 0
        do while ((j_i < size(j_soundInterfaceArray, 1)))
            j_soundInterface => Sound_jcast(j_soundInterfaceArray((j_i) + 1)%v)
            if (associated(j_soundInterface)) then
                j_indexInteger = j_smallIntegerSingletonFactory%jm_getAt_1(j_i)
                j_indexString = JR_toString(j_indexInteger)
                jdiscardRef => j_stringBuffer%jm_delete_2(0, j_stringBuffer%jm_length_0())
                jdiscardRef => j_stringBuffer%jm_append_1(j_commonLabels%f_INDEX_LABEL)
                jdiscardRef => j_stringBuffer%jm_append_1(j_indexString)
                jdiscardRef => j_stringBuffer%jm_append_1(this%f_soundStrings%f_SOUND)
                jtemp1 = JR_className(j_soundInterface)
                jdiscardRef => j_stringBuffer%jm_append_1(jtemp1)
                call this%f_logUtil%jm_putF_3(j_stringBuffer%jm_toString_0(), this, this%f_commonStrings%f_INIT)
                call j_soundInterface%jm_init_0()
                jtemp4 => StringMaker_jnew_0()
                jtemp3 => jtemp4%jm_append_1(this%f_soundStrings%f_INIT_SOUND)
                jtemp2 => jtemp3%jm_append_1(j_indexString)
                call j_progressCanvas%jm_addNormalPortion_2(100, jtemp2%jm_toString_0())
            end if
            j_i = j_i + 1
        end do
        call this%f_soundsFactoryInterface%jm_setInitialized_1(.true.)
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_END, this, this%f_commonStrings%f_INIT)
  end subroutine

  recursive subroutine Sounds_jm_stopAll_0(this)
    class(Sounds), target :: this
    type(JRef), allocatable :: j_soundInterfaceArray(:)
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(Player), pointer :: j_player
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_soundStrings%f_STOP_ALL)
        j_soundInterfaceArray = this%f_soundsFactoryInterface%jm_getSoundInterfaceArray_0()
        j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
        continue
        j_index = 0
        do while ((j_index < size(j_soundInterfaceArray, 1)))
            if (associated(Sound_jcast(j_soundInterfaceArray((j_index) + 1)%v))) then
                associate (jstaticref1 => Sound_jcast(j_soundInterfaceArray((j_index) + 1)%v))
                j_player => jstaticref1%jm_getPlayerP_0()
                end associate
                if (associated(j_player)) then
                    call j_player%jm_stop_0()
                    call j_progressCanvas%jm_addPortion_3(100, this%f_soundStrings%f_STOPPING_SOUND, j_index)
                end if
            end if
            j_index = j_index + 1
        end do
  end subroutine

  recursive subroutine Sounds_jm_closeAll_0(this)
    class(Sounds), target :: this
    type(JRef), allocatable :: j_soundInterfaceArray(:)
    class(ProgressCanvas), pointer :: j_progressCanvas
    class(Player), pointer :: j_player
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_soundStrings%f_CLOSE_ALL)
        j_soundInterfaceArray = this%f_soundsFactoryInterface%jm_getSoundInterfaceArray_0()
        j_progressCanvas => ProgressCanvasFactory_jm_getInstance_0()
        continue
        j_index = 0
        do while ((j_index < size(j_soundInterfaceArray, 1)))
            if (associated(Sound_jcast(j_soundInterfaceArray((j_index) + 1)%v))) then
                associate (jstaticref2 => Sound_jcast(j_soundInterfaceArray((j_index) + 1)%v))
                j_player => jstaticref2%jm_getPlayerP_0()
                end associate
                if (associated(j_player)) then
                    call j_player%jm_close_0()
                    call j_progressCanvas%jm_addPortion_3(100, this%f_soundStrings%f_CLOSING_SOUND, j_index)
                end if
            end if
            j_index = j_index + 1
        end do
  end subroutine
end module Sounds_m

