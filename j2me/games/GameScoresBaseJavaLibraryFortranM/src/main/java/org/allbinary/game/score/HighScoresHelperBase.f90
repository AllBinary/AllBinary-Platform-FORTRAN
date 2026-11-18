! 
! AllBinary Open License Version 1 
! Copyright (c) 2022 AllBinary 
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
! package org.allbinary.game.score
module HighScoresHelperBase_m
  use JR_m
  use LogUtil_m
  use StringMaker_m
  use CommonStrings_m
  use HighScoresHelperBaseInterface_m
  use LastFetchHighScoresFactory_m
  use HighScores_m
  use NullHighScoresSingletonFactory_m
  implicit none

  type, extends(HighScoresHelperBaseInterface) :: HighScoresHelperBase
    class(LogUtil), pointer :: f_logUtil => null()
    type(JRef), allocatable :: f_highScoresArrayP(:)
  contains
    procedure :: jm_setHighScoresArray_1 => HighScoresHelperBase_jm_setHighScoresArray_1
    procedure :: jm_getNextHighScores_0 => HighScoresHelperBase_jm_getNextHighScores_0
    procedure :: jm_isAnyHighScores_0 => HighScoresHelperBase_jm_isAnyHighScores_0
    procedure :: jm_setSelectedHighScores_1 => HighScoresHelperBase_jm_setSelectedHighScores_1
    procedure :: jm_getSelectedHighScores_0 => HighScoresHelperBase_jm_getSelectedHighScores_0
    procedure :: jm_getHighScoresArray_0 => HighScoresHelperBase_jm_getHighScoresArray_0
    procedure :: jm_selectHighScores_0 => HighScoresHelperBase_jm_selectHighScores_0
  end type


contains

  function HighScoresHelperBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScoresHelperBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScoresHelperBase)
      jresult => object
    end select
  end function

  function HighScoresHelperBase_jnew_0() result(this)
    class(HighScoresHelperBase), pointer :: this
    class(LastFetchHighScoresFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'HighScoresHelperBase'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    jtemp1 => LastFetchHighScoresFactory_jm_getInstance_0()
    this%f_highScoresArrayP = jtemp1%f_highScoresArray
  end function

  recursive subroutine HighScoresHelperBase_jm_setHighScoresArray_1(this, j_highScoresArrayP)
    class(HighScoresHelperBase), target :: this
    type(JRef) :: j_highScoresArrayP(:)
    class(CommonStrings), pointer :: j_commonStrings
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
        if (.true.) then
            j_commonStrings => CommonStrings_jm_getInstance_0()
            jtemp4 => StringMaker_jnew_0()
            jtemp3 => jtemp4%jm_append_1(j_commonStrings%f_START)
            jtemp2 => jtemp3%jm_appendint_1(size(j_highScoresArrayP, 1))
            call this%f_logUtil%jm_putF_3(jtemp2%jm_toString_0(), this, 'setHighScoresArray')
        else
            j_commonStrings => CommonStrings_jm_getInstance_0()
            call this%f_logUtil%jm_putF_3(j_commonStrings%f_START, this, 'setHighScoresArray')
        end if
        this%f_highScoresArrayP = j_highScoresArrayP
  end subroutine

  recursive function HighScoresHelperBase_jm_getNextHighScores_0(this) result(jresult)
    class(HighScoresHelperBase), target :: this
    class(HighScores), pointer :: jresult
        jresult => NullHighScoresSingletonFactory_jm_getInstance_0()
        return
  end function

  recursive function HighScoresHelperBase_jm_isAnyHighScores_0(this) result(jresult)
    class(HighScoresHelperBase), target :: this
    logical :: jresult
        error stop JR_toString(JR_newJObject('RuntimeException'))
  end function

  recursive subroutine HighScoresHelperBase_jm_setSelectedHighScores_1(this, j_selectedHighScores)
    class(HighScoresHelperBase), target :: this
    class(HighScores), target, optional :: j_selectedHighScores
    continue
  end subroutine

  recursive function HighScoresHelperBase_jm_getSelectedHighScores_0(this) result(jresult)
    class(HighScoresHelperBase), target :: this
    class(HighScores), pointer :: jresult
        jresult => NullHighScoresSingletonFactory_jm_getInstance_0()
        return
  end function

  recursive function HighScoresHelperBase_jm_getHighScoresArray_0(this) result(jresult)
    class(HighScoresHelperBase), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_highScoresArrayP
        return
  end function

  recursive subroutine HighScoresHelperBase_jm_selectHighScores_0(this)
    class(HighScoresHelperBase), target :: this
    continue
  end subroutine
end module HighScoresHelperBase_m

