! Generated Code Do Not Modify
! package org.allbinary.configuration
module ApplicationConfiguration_m
  use JR_m
  use Closeable_m
  use InputStream_m
  use OutputStream_m
  use Feature_m
  use Features_m
  use MainFeatureFactory_m
  use NullUtil_m
  use LogUtil_m
  use AbDataInputStream_m
  use AbDataOutputStream_m
  use FileStreamFactory_m
  use NullCloseable_m
  use StreamUtil_m
  use FileFactory_m
  use StringMaker_m
  use StringUtil_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: ApplicationConfiguration
    class(LogUtil), pointer :: f_logUtil => null()
    logical :: f_fullscreen = .false.
    logical :: f_showTitleBar = .false.
    logical :: f_progressBarView = .false.
    character(len=:), allocatable :: f_FILE
  contains
    procedure :: jm_read_0 => ApplicationConfiguration_jm_read_0
    procedure :: jm_write_0 => ApplicationConfiguration_jm_write_0
    procedure :: jm_update_1 => ApplicationConfiguration_jm_update_1
    procedure :: jm_setFullscreen_1 => ApplicationConfiguration_jm_setFullscreen_1
    procedure :: jm_isFullscreen_0 => ApplicationConfiguration_jm_isFullscreen_0
    procedure :: jm_setShowTitleBar_1 => ApplicationConfiguration_jm_setShowTitleBar_1
    procedure :: jm_isShowTitleBar_0 => ApplicationConfiguration_jm_isShowTitleBar_0
    procedure :: jm_setProgressBarView_1 => ApplicationConfiguration_jm_setProgressBarView_1
    procedure :: jm_isProgressBarView_0 => ApplicationConfiguration_jm_isProgressBarView_0
    procedure :: jm_toString_0 => ApplicationConfiguration_jm_toString_0
  end type

  class(JObject), pointer, save :: ApplicationConfiguration_jcell_instance => null()
  logical, save :: ApplicationConfiguration_jset_instance = .false.

contains

  function ApplicationConfiguration_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ApplicationConfiguration), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ApplicationConfiguration)
      jresult => object
    end select
  end function

  function ApplicationConfiguration_jstatic_instance() result(jresult)
    class(JObject), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. ApplicationConfiguration_jset_instance) then
      ApplicationConfiguration_jset_instance = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    ApplicationConfiguration_jcell_instance => jtemp1%f_NULL_OBJECT
    end if
    jresult => ApplicationConfiguration_jcell_instance
  end function

  subroutine ApplicationConfiguration_jsetstatic_instance(jvalue)
    class(JObject), target, optional :: jvalue
    ApplicationConfiguration_jset_instance = .true.
    if (present(jvalue)) then
      ApplicationConfiguration_jcell_instance => jvalue
    else
      ApplicationConfiguration_jcell_instance => null()
    end if
  end subroutine

  recursive function ApplicationConfiguration_jnew_0() result(this)
    class(ApplicationConfiguration), pointer :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(FileFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ApplicationConfiguration'
    this%f_FILE = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_fullscreen = .true.
    this%f_showTitleBar = .false.
    this%f_progressBarView = .false.
    this%f_FILE = 'ReloadConfiguration.dat'
        continue ! try
            jtemp3 => FileFactory_jm_getInstance_0()
            if (jtemp3%jm_isFile_1(this%f_FILE)) then
                call this%jm_read_0()
            else
                call this%jm_write_0()
            end if
  end function

  recursive function ApplicationConfiguration_jm_getInstance_0() result(jresult)
    class(ApplicationConfiguration), pointer :: jresult
    class(NullUtil), pointer :: jtemp2
        jtemp2 => NullUtil_jm_getInstance_0()
        if (JR_same(ApplicationConfiguration_jstatic_instance(), jtemp2%f_NULL_OBJECT)) then
            call ApplicationConfiguration_jsetstatic_instance(ApplicationConfiguration_jnew_0())
        end if
        jresult => ApplicationConfiguration_jcast(ApplicationConfiguration_jstatic_instance())
        return
  end function

  recursive subroutine ApplicationConfiguration_jm_read_0(this)
    class(ApplicationConfiguration), target :: this
    class(FileStreamFactory), pointer :: j_fileInputStreamFactory
    class(InputStream), pointer :: j_fileInputStream
    class(AbDataInputStream), pointer :: j_dataInputStream
    integer(4) :: j_fullScreen
    integer(4) :: j_progressBarView
    integer(4) :: j_showTitleBar
    class(StringUtil), pointer :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_fileInputStreamFactory => FileStreamFactory_jm_getInstance_0()
        jtemp4 => StringUtil_jm_getInstance_0()
        j_fileInputStream => j_fileInputStreamFactory%jm_getFileInputStreamInstance_2(jtemp4%f_EMPTY_STRING, this%f_FILE)
        j_dataInputStream => AbDataInputStream_jnew_1(j_fileInputStream)
        j_fullScreen = j_dataInputStream%jm_readInt_0()
        if ((j_fullScreen == 0)) then
            call this%jm_setFullscreen_1(.false.)
        else if ((j_fullScreen == 1)) then
            call this%jm_setFullscreen_1(.true.)
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        j_progressBarView = j_dataInputStream%jm_readInt_0()
        if ((j_progressBarView == 0)) then
            call this%jm_setProgressBarView_1(.false.)
        else if ((j_progressBarView == 1)) then
            call this%jm_setProgressBarView_1(.true.)
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        j_showTitleBar = j_dataInputStream%jm_readInt_0()
        if ((j_showTitleBar == 0)) then
            call this%jm_setShowTitleBar_1(.false.)
        else if ((j_showTitleBar == 1)) then
            call this%jm_setShowTitleBar_1(.true.)
        else
            error stop JR_toString(JR_newJObject('Exception'))
        end if
        call this%f_logUtil%jm_putF_3(('Read Configuration: ' // this%jm_toString_0()), this, 'read')
  end subroutine

  recursive subroutine ApplicationConfiguration_jm_write_0(this)
    class(ApplicationConfiguration), target :: this
    class(JObject), pointer :: j_closeable
    class(FileStreamFactory), pointer :: j_fileInputStreamFactory
    class(OutputStream), pointer :: j_fileOutputStream
    class(AbDataOutputStream), pointer :: j_dataOutputStream
    class(StreamUtil), pointer :: jtemp5
    class(StringUtil), pointer :: jtemp6
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_closeable => NullCloseable_jstatic_NULL_CLOSEABLE()
        continue ! try
            call this%f_logUtil%jm_putF_3(('Write Configuration: ' // this%jm_toString_0()), this, 'write')
            j_fileInputStreamFactory => FileStreamFactory_jm_getInstance_0()
            jtemp6 => StringUtil_jm_getInstance_0()
            j_fileOutputStream => j_fileInputStreamFactory%jm_getFileOutputStreamInstance_2(jtemp6%f_EMPTY_STRING, this%f_FILE)
            j_dataOutputStream => AbDataOutputStream_jnew_1(j_fileOutputStream)
            j_closeable => j_dataOutputStream
            if (this%jm_isFullscreen_0()) then
                call j_dataOutputStream%jm_writeInt_1(1)
            else
                call j_dataOutputStream%jm_writeInt_1(0)
            end if
            if (this%jm_isProgressBarView_0()) then
                call j_dataOutputStream%jm_writeInt_1(1)
            else
                call j_dataOutputStream%jm_writeInt_1(0)
            end if
            if (this%jm_isShowTitleBar_0()) then
                call j_dataOutputStream%jm_writeInt_1(1)
            else
                call j_dataOutputStream%jm_writeInt_1(0)
            end if
            call j_dataOutputStream%jm_flush_0()
            jtemp5 => StreamUtil_jm_getInstance_0()
            jdiscardBoolean = jtemp5%jm_close_1(j_closeable)
  end subroutine

  recursive subroutine ApplicationConfiguration_jm_update_1(this, j_gameFeature)
    class(ApplicationConfiguration), target :: this
    class(Feature), target, optional :: j_gameFeature
    class(Features), pointer :: j_features
    class(MainFeatureFactory), pointer :: jtemp7
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp7 => MainFeatureFactory_jm_getInstance_0()
        if (JR_same(j_gameFeature, jtemp7%f_FULL_SCREEN)) then
            j_features => Features_jm_getInstance_0()
            if (j_features%jm_isFeature_1(j_gameFeature)) then
                if ((.not. this%jm_isFullscreen_0())) then
                    call this%jm_setFullscreen_1(.true.)
                    call this%jm_write_0()
                end if
            else
                if (this%jm_isFullscreen_0()) then
                    call this%jm_setFullscreen_1(.false.)
                    call this%jm_write_0()
                end if
            end if
        end if
  end subroutine

  recursive subroutine ApplicationConfiguration_jm_setFullscreen_1(this, j_fullscreen)
    class(ApplicationConfiguration), target :: this
    logical, value :: j_fullscreen
        this%f_fullscreen = j_fullscreen
  end subroutine

  recursive function ApplicationConfiguration_jm_isFullscreen_0(this) result(jresult)
    class(ApplicationConfiguration), target :: this
    logical :: jresult
        jresult = this%f_fullscreen
        return
  end function

  recursive subroutine ApplicationConfiguration_jm_setShowTitleBar_1(this, j_showTitleBar)
    class(ApplicationConfiguration), target :: this
    logical, value :: j_showTitleBar
        this%f_showTitleBar = j_showTitleBar
  end subroutine

  recursive function ApplicationConfiguration_jm_isShowTitleBar_0(this) result(jresult)
    class(ApplicationConfiguration), target :: this
    logical :: jresult
        jresult = this%f_showTitleBar
        return
  end function

  recursive subroutine ApplicationConfiguration_jm_setProgressBarView_1(this, j_progressBarView)
    class(ApplicationConfiguration), target :: this
    logical, value :: j_progressBarView
        this%f_progressBarView = j_progressBarView
  end subroutine

  recursive function ApplicationConfiguration_jm_isProgressBarView_0(this) result(jresult)
    class(ApplicationConfiguration), target :: this
    logical :: jresult
        jresult = this%f_progressBarView
        return
  end function

  recursive function ApplicationConfiguration_jm_toString_0(this) result(jresult)
    class(ApplicationConfiguration), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('isFullscreen: ')
        jdiscardRef => j_stringBuffer%jm_appendboolean_1(this%jm_isFullscreen_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' isProgressBarView: ')
        jdiscardRef => j_stringBuffer%jm_appendboolean_1(this%jm_isProgressBarView_0())
        jdiscardRef => j_stringBuffer%jm_append_1(' isShowTitleBar: ')
        jdiscardRef => j_stringBuffer%jm_appendboolean_1(this%jm_isShowTitleBar_0())
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module ApplicationConfiguration_m

