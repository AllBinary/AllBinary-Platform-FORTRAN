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
! package org.allbinary.game.input.event
module GameKeyEvent_m
  use JR_m
  use NullUtil_m
  use StringMaker_m
  use AllBinaryEventObject_m
  implicit none

  type, extends(AllBinaryEventObject) :: GameKeyEvent
    integer(4) :: f_sourceId = 0
    logical :: f_repeated = .false.
    integer(4) :: f_key = 0
    integer(4) :: f_gameActionKey = 0
    integer(4) :: f_originalKey = 0
  contains
    procedure :: jm_init_1 => GameKeyEvent_jm_init_1
    procedure :: jm_setRepeatEvents_1 => GameKeyEvent_jm_setRepeatEvents_1
    procedure :: jm_hasRepeatEvents_0 => GameKeyEvent_jm_hasRepeatEvents_0
    procedure :: jm_getKey_0 => GameKeyEvent_jm_getKey_0
    procedure :: jm_toString_0 => GameKeyEvent_jm_toString_0
    procedure :: jm_getOriginalKey_0 => GameKeyEvent_jm_getOriginalKey_0
    procedure :: jm_setOriginalKey_1 => GameKeyEvent_jm_setOriginalKey_1
    procedure :: jm_getGameActionKey_0 => GameKeyEvent_jm_getGameActionKey_0
    procedure :: jm_setGameActionKey_1 => GameKeyEvent_jm_setGameActionKey_1
    procedure :: jm_getSourceId_0 => GameKeyEvent_jm_getSourceId_0
  end type

  class(GameKeyEvent), pointer, save :: GameKeyEvent_jcell_NONE => null()
  logical, save :: GameKeyEvent_jset_NONE = .false.

contains

  function GameKeyEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameKeyEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameKeyEvent)
      jresult => object
    end select
  end function

  function GameKeyEvent_jstatic_NONE() result(jresult)
    class(GameKeyEvent), pointer :: jresult
    class(NullUtil), pointer :: jtemp1
    if (.not. GameKeyEvent_jset_NONE) then
      GameKeyEvent_jset_NONE = .true.
      jtemp1 => NullUtil_jm_getInstance_0()
    GameKeyEvent_jcell_NONE => GameKeyEvent_jnew_6(jtemp1%f_NULL_OBJECT, (-1), (-1), (-1), (-1), .false.)
    end if
    jresult => GameKeyEvent_jcell_NONE
  end function

  subroutine GameKeyEvent_jsetstatic_NONE(jvalue)
    class(GameKeyEvent), target, optional :: jvalue
    GameKeyEvent_jset_NONE = .true.
    if (present(jvalue)) then
      GameKeyEvent_jcell_NONE => jvalue
    else
      GameKeyEvent_jcell_NONE => null()
    end if
  end subroutine

  recursive function GameKeyEvent_jnew_6(j_anyType, j_sourceId, j_originalKey, j_gameActionKey, j_key, j_repeated) result(this)
    class(JObject), target, optional :: j_anyType
    integer(4), value :: j_sourceId
    integer(4), value :: j_originalKey
    integer(4), value :: j_gameActionKey
    integer(4), value :: j_key
    logical, value :: j_repeated
    class(GameKeyEvent), pointer :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'GameKeyEvent'
    
    
    
    
    
        continue ! super()
        this%f_sourceId = j_sourceId
        call this%jm_setOriginalKey_1(j_originalKey)
        this%f_key = j_key
        call this%jm_setGameActionKey_1(j_gameActionKey)
        call this%jm_setRepeatEvents_1(j_repeated)
  end function

  recursive function GameKeyEvent_jm_createEvent_3(j_anyType, j_sourceId, j_key) result(jresult)
    class(JObject), target, optional :: j_anyType
    integer(4), value :: j_sourceId
    integer(4), value :: j_key
    class(GameKeyEvent), pointer :: jresult
        jresult => GameKeyEvent_jnew_6(j_anyType, j_sourceId, 0, 0, j_key, .false.)
        return
  end function

  recursive subroutine GameKeyEvent_jm_init_1(this, j_anyType)
    class(GameKeyEvent), target :: this
    class(JObject), target, optional :: j_anyType
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%jm_setSource_1(j_anyType)
  end subroutine

  recursive subroutine GameKeyEvent_jm_setRepeatEvents_1(this, j_repeated)
    class(GameKeyEvent), target :: this
    logical, value :: j_repeated
        this%f_repeated = j_repeated
  end subroutine

  recursive function GameKeyEvent_jm_hasRepeatEvents_0(this) result(jresult)
    class(GameKeyEvent), target :: this
    logical :: jresult
        jresult = this%f_repeated
        return
  end function

  recursive function GameKeyEvent_jm_getKey_0(this) result(jresult)
    class(GameKeyEvent), target :: this
    integer(4) :: jresult
        jresult = this%f_key
        return
  end function

  recursive function GameKeyEvent_jm_toString_0(this) result(jresult)
    class(GameKeyEvent), target :: this
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
        jdiscardRef => j_stringBuffer%jm_append_1(JR_unescape('\nKey: '))
        jdiscardRef => j_stringBuffer%jm_appendint_1(this%jm_getKey_0())
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function

  recursive function GameKeyEvent_jm_getOriginalKey_0(this) result(jresult)
    class(GameKeyEvent), target :: this
    integer(4) :: jresult
        jresult = this%f_originalKey
        return
  end function

  recursive subroutine GameKeyEvent_jm_setOriginalKey_1(this, j_originalKey)
    class(GameKeyEvent), target :: this
    integer(4), value :: j_originalKey
        this%f_originalKey = j_originalKey
  end subroutine

  recursive function GameKeyEvent_jm_getGameActionKey_0(this) result(jresult)
    class(GameKeyEvent), target :: this
    integer(4) :: jresult
        jresult = this%f_gameActionKey
        return
  end function

  recursive subroutine GameKeyEvent_jm_setGameActionKey_1(this, j_gameActionKey)
    class(GameKeyEvent), target :: this
    integer(4), value :: j_gameActionKey
        this%f_gameActionKey = j_gameActionKey
  end subroutine

  recursive function GameKeyEvent_jm_getSourceId_0(this) result(jresult)
    class(GameKeyEvent), target :: this
    integer(4) :: jresult
        jresult = this%f_sourceId
        return
  end function
end module GameKeyEvent_m

