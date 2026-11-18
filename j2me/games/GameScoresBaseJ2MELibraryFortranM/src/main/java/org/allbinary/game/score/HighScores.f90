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
! package org.allbinary.game.score
module HighScores_m
  use JR_m
  use StringMaker_m
  use CommonLabels_m
  use CommonSeps_m
  use BasicArrayList_m
  use BasicArrayListD_m
  use HighScoresInterface_m
  use HighScore_m
  implicit none

  type, extends(HighScoresInterface) :: HighScores
    class(BasicArrayList), pointer :: f_orderedHighScoresList => null()
    character(len=:), allocatable :: f_name
    character(len=:), allocatable :: f_heading
    character(len=:), allocatable :: f_columnOneHeading
    character(len=:), allocatable :: f_columnTwoHeading
  contains
    procedure :: jm_setList_1 => HighScores_jm_setList_1
    procedure :: jm_getList_0 => HighScores_jm_getList_0
    procedure :: jm_getName_0 => HighScores_jm_getName_0
    procedure :: jm_getTotal_0 => HighScores_jm_getTotal_0
    procedure :: jm_addHighScore_1 => HighScores_jm_addHighScore_1
    procedure :: jm_getHeading_0 => HighScores_jm_getHeading_0
    procedure :: jm_getColumnOneHeading_0 => HighScores_jm_getColumnOneHeading_0
    procedure :: jm_getColumnTwoHeading_0 => HighScores_jm_getColumnTwoHeading_0
    procedure :: jm_isBestScore_1 => HighScores_jm_isBestScore_1
    procedure :: jm_toString_0 => HighScores_jm_toString_0
  end type


contains

  function HighScores_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScores), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScores)
      jresult => object
    end select
  end function

  recursive function HighScores_jnew_3(j_name, j_heading, j_columnTwoHeading) result(this)
    character(len=*), intent(in) :: j_name
    character(len=*), intent(in) :: j_heading
    character(len=*), intent(in) :: j_columnTwoHeading
    class(HighScores), pointer :: this
    allocate(this)
    this%jclass = 'HighScores'
    this%f_name = ''
    this%f_heading = ''
    this%f_columnOneHeading = ''
    this%f_columnTwoHeading = ''
    this%f_orderedHighScoresList => BasicArrayListD_jnew_0()
    
    
    this%f_columnOneHeading = 'Name'
    
        this%f_name = j_name
        this%f_heading = j_heading
        this%f_columnTwoHeading = j_columnTwoHeading
  end function

  recursive subroutine HighScores_jm_setList_1(this, j_orderedHighScoresList)
    class(HighScores), target :: this
    class(BasicArrayList), target, optional :: j_orderedHighScoresList
        this%f_orderedHighScoresList => j_orderedHighScoresList
  end subroutine

  recursive function HighScores_jm_getList_0(this) result(jresult)
    class(HighScores), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_orderedHighScoresList
        return
  end function

  recursive function HighScores_jm_getName_0(this) result(jresult)
    class(HighScores), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive function HighScores_jm_getTotal_0(this) result(jresult)
    class(HighScores), target :: this
    integer(4) :: jresult
    class(BasicArrayList), pointer :: jtemp1
        jtemp1 => this%jm_getList_0()
        jresult = jtemp1%jm_size_0()
        return
  end function

  recursive subroutine HighScores_jm_addHighScore_1(this, j_newHighScore)
    class(HighScores), target :: this
    class(HighScore), target, optional :: j_newHighScore
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_orderedHighScoresList%jm_add_1(j_newHighScore)
  end subroutine

  recursive function HighScores_jm_getHeading_0(this) result(jresult)
    class(HighScores), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_heading
        return
  end function

  recursive function HighScores_jm_getColumnOneHeading_0(this) result(jresult)
    class(HighScores), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_columnOneHeading
        return
  end function

  recursive function HighScores_jm_getColumnTwoHeading_0(this) result(jresult)
    class(HighScores), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_columnTwoHeading
        return
  end function

  recursive function HighScores_jm_isBestScore_1(this, j_newHighScore) result(jresult)
    class(HighScores), target :: this
    class(HighScore), target, optional :: j_newHighScore
    logical :: jresult
        jresult = .false.
        return
  end function

  recursive function HighScores_jm_toString_0(this) result(jresult)
    class(HighScores), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonSeps), pointer :: jtemp2
    class(CommonLabels), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('HighScores: ')
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_heading)
        jtemp2 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp2%f_SPACE)
        jtemp3 => CommonLabels_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp3%f_TOTAL_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%f_orderedHighScoresList%jm_size_0())
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module HighScores_m

