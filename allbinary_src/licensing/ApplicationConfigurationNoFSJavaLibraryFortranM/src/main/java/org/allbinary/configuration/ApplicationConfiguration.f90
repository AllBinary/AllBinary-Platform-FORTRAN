! Generated Code Do Not Modify
! package org.allbinary.configuration
module ApplicationConfiguration_m
  use JR_m
  use Feature_m
  use Features_m
  use MainFeatureFactory_m
  use NullUtil_m
  use LogUtil_m
  use StringMaker_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: ApplicationConfiguration
    class(LogUtil), pointer :: f_logUtil => null()
    logical :: f_fullscreen = .false.
    logical :: f_showTitleBar = .false.
    logical :: f_progressBarView = .false.
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
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'ApplicationConfiguration'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_fullscreen = .true.
    this%f_showTitleBar = .false.
    this%f_progressBarView = .false.
        continue ! try
            call this%jm_read_0()
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
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setFullscreen_1(.true.)
        call this%jm_setProgressBarView_1(.false.)
        call this%jm_setShowTitleBar_1(.false.)
        call this%f_logUtil%jm_putF_3(('Read Configuration: ' // this%jm_toString_0()), this, 'read')
  end subroutine

  recursive subroutine ApplicationConfiguration_jm_write_0(this)
    class(ApplicationConfiguration), target :: this
    continue
  end subroutine

  recursive subroutine ApplicationConfiguration_jm_update_1(this, j_gameFeature)
    class(ApplicationConfiguration), target :: this
    class(Feature), target, optional :: j_gameFeature
    class(Features), pointer :: j_features
    class(MainFeatureFactory), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp3 => MainFeatureFactory_jm_getInstance_0()
        if (JR_same(j_gameFeature, jtemp3%f_FULL_SCREEN)) then
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

