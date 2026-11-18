! Generated Code Do Not Modify
! package org.allbinary.game.score
module BasicHighScoresFactory_m
  use JR_m
  use GameInfo_m
  use LogUtil_m
  use SoftwareInformation_m
  use AbeClientInformationInterface_m
  use HighScoresBase_m
  use HighScores_m
  use HighScoresResultsListener_m
  use RecordStoreHighScores_m
  use ScoreComparator_m
  use HighScoresHelper2_m
  use HighScoresHelperBaseInterface_m
  implicit none

  type, extends(HighScoresBase) :: BasicHighScoresFactory
    class(LogUtil), pointer :: f_logUtil => null()
    class(AbeClientInformationInterface), pointer :: f_abeClientInformation => null()
    type(JRef), allocatable :: f_highScoresArray(:)
    character(len=:), allocatable :: f_TOP
    character(len=:), allocatable :: f_SCORES
    character(len=:), allocatable :: f_PERSONAL_HIGH_SCORES
    character(len=:), allocatable :: f_FETCH
  contains
    procedure :: jm_fetchHighScores_2 => BasicHighScoresFactory_jm_fetchHighScores_2
    procedure :: jm_fetchHighScoresPreload_3 => BasicHighScoresFactory_jm_fetchHighScoresPreload_3
    procedure :: jm_createHighScoresHelper_0 => BasicHighScoresFactory_jm_createHighScoresHelper_0
  end type


contains

  function BasicHighScoresFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicHighScoresFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicHighScoresFactory)
      jresult => object
    end select
  end function

  recursive function BasicHighScoresFactory_jnew_2(j_abeClientInformation, j_softwareInformation) result(this)
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(SoftwareInformation), target, optional :: j_softwareInformation
    class(BasicHighScoresFactory), pointer :: this
    allocate(this)
    this%jclass = 'BasicHighScoresFactory'
    this%f_TOP = ''
    this%f_SCORES = ''
    this%f_PERSONAL_HIGH_SCORES = ''
    this%f_FETCH = ''
    this%f_logUtil => LogUtil_jm_getInstance_0()
    
    this%f_highScoresArray = JR_newRefArray(1)
    this%f_TOP = 'Top'
    this%f_SCORES = 'Scores'
    this%f_PERSONAL_HIGH_SCORES = 'Personal Top Scores'
    this%f_FETCH = 'fetchHighScores'
        this%f_abeClientInformation => j_abeClientInformation
  end function

  recursive subroutine BasicHighScoresFactory_jm_fetchHighScores_2(this, j_gameInfo, j_highScoresResultsListener)
    class(BasicHighScoresFactory), target :: this
    class(GameInfo), target, optional :: j_gameInfo
    class(HighScoresResultsListener), target, optional :: j_highScoresResultsListener
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3('Getting Local HighScores', this, this%f_FETCH)
        call this%jm_fetchHighScoresPreload_3(j_gameInfo, j_highScoresResultsListener, .true.)
  end subroutine

  recursive subroutine BasicHighScoresFactory_jm_fetchHighScoresPreload_3(this, j_gameInfo, j_highScoresResultsListener, j_preload)
    class(BasicHighScoresFactory), target :: this
    class(GameInfo), target, optional :: j_gameInfo
    class(HighScoresResultsListener), target, optional :: j_highScoresResultsListener
    logical, value :: j_preload
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            this%f_highScoresArray((0) + 1)%v => RecordStoreHighScores_jm_getInstance_6(this%f_abeClientInformation, j_gameInfo, this%f_TOP, this%f_PERSONAL_HIGH_SCORES, this%f_SCORES, ScoreComparator_jnew_1(.true.))
            call j_highScoresResultsListener%jm_setHighScoresArray_1(this%f_highScoresArray)
  end subroutine

  recursive function BasicHighScoresFactory_jm_createHighScoresHelper_0(this) result(jresult)
    class(BasicHighScoresFactory), target :: this
    class(HighScoresHelperBaseInterface), pointer :: jresult
        jresult => HighScoresHelper2_jnew_0()
        return
  end function

  recursive function BasicHighScoresFactory_jm_loaded_1(j_index2) result(jresult)
    integer(4), value :: j_index2
    logical :: jresult
        if ((j_index2 >= 0)) then
            jresult = .true.
            return
        end if
        jresult = .false.
        return
  end function
end module BasicHighScoresFactory_m

