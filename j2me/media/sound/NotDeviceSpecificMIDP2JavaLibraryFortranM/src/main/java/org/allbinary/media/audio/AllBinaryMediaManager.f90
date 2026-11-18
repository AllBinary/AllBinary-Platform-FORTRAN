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
module AllBinaryMediaManager_m
  use JR_m
  use InputStream_m
  use MIDPUtil_m
  use TsUtil_m
  use AudioContentTypeDataFactory_m
  use ResourceUtil_m
  use Features_m
  use GameFeatureFactory_m
  use ProgressCanvasFactory_m
  use LogUtil_m
  use CommonStrings_m
  use Sounds_m
  use SoundsFactoryInterface_m
  use NoPlayer_m
  implicit none

  type, extends(JObject) :: AllBinaryMediaManager
  end type

  character(len=:), allocatable, save :: AllBinaryMediaManager_jcell_THIS
  logical, save :: AllBinaryMediaManager_jset_THIS = .false.

contains

  function AllBinaryMediaManager_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AllBinaryMediaManager), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AllBinaryMediaManager)
      jresult => object
    end select
  end function

  function AllBinaryMediaManager_jstatic_THIS() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. AllBinaryMediaManager_jset_THIS) then
      AllBinaryMediaManager_jset_THIS = .true.
      AllBinaryMediaManager_jcell_THIS = 'AllBinaryMediaManagerNoMIPD2'
    end if
    jresult = AllBinaryMediaManager_jcell_THIS
  end function

  subroutine AllBinaryMediaManager_jsetstatic_THIS(jvalue)
    character(len=*), intent(in) :: jvalue
    AllBinaryMediaManager_jset_THIS = .true.
    AllBinaryMediaManager_jcell_THIS = jvalue
  end subroutine

  recursive function AllBinaryMediaManager_jnew_0() result(this)
    class(AllBinaryMediaManager), pointer :: this
    allocate(this)
    this%jclass = 'AllBinaryMediaManager'
        continue
  end function

  recursive function AllBinaryMediaManager_jm_isMuted_0() result(jresult)
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive subroutine AllBinaryMediaManager_jm_setMuted_1(j_aMuted)
    logical, value :: j_aMuted
    continue
  end subroutine

  recursive function AllBinaryMediaManager_jm_update_0() result(jresult)
    logical :: jresult
        jresult = .true.
        return
  end function

  recursive subroutine AllBinaryMediaManager_jm_init_1(j_soundsFactoryInterface)
    class(SoundsFactoryInterface), target, optional :: j_soundsFactoryInterface
    class(LogUtil), pointer :: j_logUtil
    class(CommonStrings), pointer :: j_commonString
    class(ProgressCanvasFactory), pointer :: jtemp1
    class(Sounds), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_logUtil => LogUtil_jm_getInstance_0()
        j_commonString => CommonStrings_jm_getInstance_0()
        call j_logUtil%jm_putF_3(j_commonString%f_START, JR_boxString(AllBinaryMediaManager_jstatic_THIS()), j_commonString%f_INIT)
        jtemp1 => ProgressCanvasFactory_jm_getInstance_0()
        call jtemp1%jm_addNormalPortion_2(50, 'Media Manager')
        jtemp2 => Sounds_jnew_1(j_soundsFactoryInterface)
        call jtemp2%jm_init_0()
  end subroutine

  recursive subroutine AllBinaryMediaManager_jm_shutdown_1(j_soundsFactoryInterface)
    class(SoundsFactoryInterface), target, optional :: j_soundsFactoryInterface
    class(Sounds), pointer :: jtemp3
    class(Sounds), pointer :: jtemp4
    class(TsUtil), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp3 => Sounds_jnew_1(j_soundsFactoryInterface)
        call jtemp3%jm_stopAll_0()
        jtemp4 => Sounds_jnew_1(j_soundsFactoryInterface)
        call jtemp4%jm_closeAll_0()
        jtemp5 => TsUtil_jm_getInstance_0()
        call jtemp5%jm_gc_0()
  end subroutine

  recursive function AllBinaryMediaManager_jm_createPlayer_1(j_resource) result(jresult)
    character(len=*), intent(in) :: j_resource
    class(Player), pointer :: jresult
    class(InputStream), pointer :: j_inputStream
    class(Features), pointer :: jtemp6
    class(GameFeatureFactory), pointer :: jtemp7
    class(TsUtil), pointer :: jtemp8
    class(ResourceUtil), pointer :: jtemp9
    class(MIDPUtil), pointer :: jtemp10
    class(AudioContentTypeDataFactory), pointer :: jtemp11
        jtemp7 => GameFeatureFactory_jm_getInstance_0()
        jtemp6 => Features_jm_getInstance_0()
        if (jtemp6%jm_isFeature_1(jtemp7%f_SOUND)) then
            jtemp8 => TsUtil_jm_getInstance_0()
            if ((jtemp8%jm_compareTo_2(j_resource, Manager_jstatic_TONE_DEVICE_LOCATOR()) == 0)) then
                jresult => Manager_jm_createPlayer_1(j_resource)
                return
            else
                jtemp9 => ResourceUtil_jm_getInstance_0()
                j_inputStream => jtemp9%jm_getResourceAsStream_1(j_resource)
                jtemp11 => AudioContentTypeDataFactory_jm_getInstance_0()
                jtemp10 => MIDPUtil_jm_getInstance_0()
                jresult => jtemp10%jm_createPlayerFromInputStream_2(j_inputStream, jtemp11%f_MIME_AUDIO_WAV%jm_getName_0())
                return
            end if
        else
            jresult => NoPlayer_jstatic_NO_PLAYER()
            return
        end if
  end function

  recursive subroutine AllBinaryMediaManager_jm_playTone_3(j_frequency, j_time, j_volume)
    integer(4), value :: j_frequency
    integer(4), value :: j_time
    integer(4), value :: j_volume
    class(Features), pointer :: jtemp12
    class(GameFeatureFactory), pointer :: jtemp13
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp13 => GameFeatureFactory_jm_getInstance_0()
        jtemp12 => Features_jm_getInstance_0()
        if (jtemp12%jm_isFeature_1(jtemp13%f_SOUND)) then
            call Manager_jm_playTone_3(j_frequency, j_time, j_volume)
        end if
  end subroutine
end module AllBinaryMediaManager_m

