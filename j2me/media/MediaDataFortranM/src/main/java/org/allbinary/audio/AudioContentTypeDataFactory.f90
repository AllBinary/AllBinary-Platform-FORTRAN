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
! package org.allbinary.audio
module AudioContentTypeDataFactory_m
  use JR_m
  use AudioContentTypeData_m
  implicit none

  type, extends(JObject) :: AudioContentTypeDataFactory
    class(AudioContentTypeData), pointer :: f_MIME_AUDIO_TONE => null()
    class(AudioContentTypeData), pointer :: f_MIME_AUDIO_AMR => null()
    class(AudioContentTypeData), pointer :: f_MIME_AUDIO_AMR_WB => null()
    class(AudioContentTypeData), pointer :: f_MIME_AUDIO_WAV => null()
    class(AudioContentTypeData), pointer :: f_MIME_AUDIO_MIDI => null()
    class(AudioContentTypeData), pointer :: f_MIME_AUDIO_SP_MIDI => null()
  end type

  class(AudioContentTypeDataFactory), pointer, save :: AudioContentTypeDataFactory_jcell_instance => null()
  logical, save :: AudioContentTypeDataFactory_jset_instance = .false.

contains

  function AudioContentTypeDataFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AudioContentTypeDataFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AudioContentTypeDataFactory)
      jresult => object
    end select
  end function

  function AudioContentTypeDataFactory_jstatic_instance() result(jresult)
    class(AudioContentTypeDataFactory), pointer :: jresult
    if (.not. AudioContentTypeDataFactory_jset_instance) then
      AudioContentTypeDataFactory_jset_instance = .true.
      AudioContentTypeDataFactory_jcell_instance => AudioContentTypeDataFactory_jnew_0()
    end if
    jresult => AudioContentTypeDataFactory_jcell_instance
  end function

  subroutine AudioContentTypeDataFactory_jsetstatic_instance(jvalue)
    class(AudioContentTypeDataFactory), target, optional :: jvalue
    AudioContentTypeDataFactory_jset_instance = .true.
    if (present(jvalue)) then
      AudioContentTypeDataFactory_jcell_instance => jvalue
    else
      AudioContentTypeDataFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function AudioContentTypeDataFactory_jnew_0() result(this)
    class(AudioContentTypeDataFactory), pointer :: this
    allocate(this)
    this%jclass = 'AudioContentTypeDataFactory'
    this%f_MIME_AUDIO_TONE => AudioContentTypeData_jnew_1('audio/x-tone-seq')
    this%f_MIME_AUDIO_AMR => AudioContentTypeData_jnew_1('audio/amr')
    this%f_MIME_AUDIO_AMR_WB => AudioContentTypeData_jnew_1('audio/amr-wb')
    this%f_MIME_AUDIO_WAV => AudioContentTypeData_jnew_1('audio/x-wav')
    this%f_MIME_AUDIO_MIDI => AudioContentTypeData_jnew_1('audio/midi')
    this%f_MIME_AUDIO_SP_MIDI => AudioContentTypeData_jnew_1('audio/sp-midi')
        continue
  end function

  recursive function AudioContentTypeDataFactory_jm_getInstance_0() result(jresult)
    class(AudioContentTypeDataFactory), pointer :: jresult
        jresult => AudioContentTypeDataFactory_jstatic_instance()
        return
  end function
end module AudioContentTypeDataFactory_m

