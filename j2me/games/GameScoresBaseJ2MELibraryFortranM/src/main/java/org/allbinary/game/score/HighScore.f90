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
module HighScore_m
  use JR_m
  use ByteArrayOutputStream_m
  use DataOutputStream_m
  use GameInfo_m
  use StringMaker_m
  use CommonSeps_m
  use Long_m
  implicit none

  type, extends(JObject) :: HighScore
    integer(4) :: f_id = 0
    character(len=:), allocatable :: f_name
    class(GameInfo), pointer :: f_gameInfo => null()
    integer(8) :: f_score = 0_8
    character(len=:), allocatable :: f_scoreString
  contains
    procedure :: jm_getId_0 => HighScore_jm_getId_0
    procedure :: jm_getName_0 => HighScore_jm_getName_0
    procedure :: jm_getScore_0 => HighScore_jm_getScore_0
    procedure :: jm_getAsBytes_0 => HighScore_jm_getAsBytes_0
    procedure :: jm_getGameInfo_0 => HighScore_jm_getGameInfo_0
    procedure :: jm_getScoreString_0 => HighScore_jm_getScoreString_0
    procedure :: jm_setName_1 => HighScore_jm_setName_1
    procedure :: jm_toString_0 => HighScore_jm_toString_0
  end type


contains

  function HighScore_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(HighScore), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (HighScore)
      jresult => object
    end select
  end function

  recursive function HighScore_jnew_4(j_id, j_name, j_gameInfo, j_score) result(this)
    integer(4), value :: j_id
    character(len=*), intent(in) :: j_name
    class(GameInfo), target, optional :: j_gameInfo
    integer(8), value :: j_score
    class(HighScore), pointer :: this
    allocate(this)
    this%jclass = 'HighScore'
    this%f_name = ''
    this%f_scoreString = ''
    
    
    
    
    
        this%f_id = j_id
        this%f_name = j_name
        this%f_gameInfo => j_gameInfo
        this%f_score = j_score
        this%f_scoreString = JR_longString(this%f_score)
  end function

  recursive function HighScore_jm_getId_0(this) result(jresult)
    class(HighScore), target :: this
    integer(4) :: jresult
        jresult = this%f_id
        return
  end function

  recursive function HighScore_jm_getName_0(this) result(jresult)
    class(HighScore), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_name
        return
  end function

  recursive function HighScore_jm_getScore_0(this) result(jresult)
    class(HighScore), target :: this
    integer(8) :: jresult
        jresult = this%f_score
        return
  end function

  recursive function HighScore_jm_getAsBytes_0(this) result(jresult)
    class(HighScore), target :: this
    integer(4), allocatable :: jresult(:)
    class(ByteArrayOutputStream), pointer :: j_byteArrayOutputStream
    class(DataOutputStream), pointer :: j_outputStream
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_byteArrayOutputStream => ByteArrayOutputStream_jnew_0()
        j_outputStream => DataOutputStream_jnew_1(j_byteArrayOutputStream)
        call j_outputStream%jm_writeUTF_1(this%jm_getName_0())
        call j_outputStream%jm_writeLong_1(this%jm_getScore_0())
        jresult = j_byteArrayOutputStream%jm_toByteArray_0()
        return
  end function

  recursive function HighScore_jm_getGameInfo_0(this) result(jresult)
    class(HighScore), target :: this
    class(GameInfo), pointer :: jresult
        jresult => this%f_gameInfo
        return
  end function

  recursive function HighScore_jm_getScoreString_0(this) result(jresult)
    class(HighScore), target :: this
    character(len=:), allocatable :: jresult
        jresult = this%f_scoreString
        return
  end function

  recursive subroutine HighScore_jm_setName_1(this, j_name)
    class(HighScore), target :: this
    character(len=*), intent(in) :: j_name
        this%f_name = j_name
  end subroutine

  recursive function HighScore_jm_toString_0(this) result(jresult)
    class(HighScore), target :: this
    character(len=:), allocatable :: jresult
    class(CommonSeps), pointer :: j_commonSeps
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
        j_commonSeps => CommonSeps_jm_getInstance_0()
        jtemp6 => StringMaker_jnew_0()
        jtemp5 => jtemp6%jm_append_1(this%f_name)
        jtemp4 => jtemp5%jm_append_1(j_commonSeps%f_COLON)
        jtemp3 => jtemp4%jm_appendlong_1(this%f_score)
        jtemp2 => jtemp3%jm_append_1(j_commonSeps%f_FORWARD_SLASH)
        jtemp1 => jtemp2%jm_append_1(this%f_scoreString)
        jresult = jtemp1%jm_toString_0()
        return
  end function
end module HighScore_m

