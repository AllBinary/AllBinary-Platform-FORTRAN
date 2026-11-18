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
! package org.allbinary.game.input
module GameInput_m
  use JR_m
  use Features_m
  use InputFeatureFactory_m
  use GameKeyEvent_m
  use LogUtil_m
  use CommonStrings_m
  use BasicArrayList_m
  implicit none

  type, extends(JObject) :: GameInput
    class(LogUtil), pointer :: f_logUtil => null()
    class(CommonStrings), pointer :: f_commonStrings => null()
    class(BasicArrayList), pointer :: f_gameKeyEventList => null()
    class(BasicArrayList), pointer :: f_removalGameKeyEventList => null()
    logical :: f_isRemoveDuplicateKeyPresses = .false.
  contains
    procedure :: jm_add_1 => GameInput_jm_add_1
    procedure :: jm_addForRemoval_1 => GameInput_jm_addForRemoval_1
    procedure :: jm_isForRemoval_1 => GameInput_jm_isForRemoval_1
    procedure :: jm_clear_0 => GameInput_jm_clear_0
    procedure :: jm_removeNonAIInputGameKeyEvents_0 => GameInput_jm_removeNonAIInputGameKeyEvents_0
    procedure :: jm_update_0 => GameInput_jm_update_0
    procedure :: jm_getRemovalGameKeyEventList_0 => GameInput_jm_getRemovalGameKeyEventList_0
    procedure :: jm_getGameKeyEventList_0 => GameInput_jm_getGameKeyEventList_0
  end type


contains

  function GameInput_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(GameInput), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (GameInput)
      jresult => object
    end select
  end function

  recursive function GameInput_jnew_2(j_gameKeyEventList, j_removalGameKeyEventList) result(this)
    class(BasicArrayList), target, optional :: j_gameKeyEventList
    class(BasicArrayList), target, optional :: j_removalGameKeyEventList
    class(GameInput), pointer :: this
    class(Features), pointer :: jtemp1
    class(InputFeatureFactory), pointer :: jtemp2
    allocate(this)
    this%jclass = 'GameInput'
    this%f_logUtil => LogUtil_jm_getInstance_0()
    this%f_commonStrings => CommonStrings_jm_getInstance_0()
    
    
    
        this%f_gameKeyEventList => j_gameKeyEventList
        this%f_removalGameKeyEventList => j_removalGameKeyEventList
        jtemp2 => InputFeatureFactory_jm_getInstance_0()
        jtemp1 => Features_jm_getInstance_0()
        this%f_isRemoveDuplicateKeyPresses = jtemp1%jm_isFeature_1(jtemp2%f_REMOVE_DUPLICATE_KEY_PRESSES)
  end function

  recursive subroutine GameInput_jm_add_1(this, j_gameKeyEvent)
    class(GameInput), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if ((this%f_isRemoveDuplicateKeyPresses .and. this%f_gameKeyEventList%jm_contains_1(j_gameKeyEvent))) then
            return
        end if
        if (present(j_gameKeyEvent)) then
            jdiscardBoolean = this%f_gameKeyEventList%jm_add_1(j_gameKeyEvent)
        else
            call this%f_logUtil%jm_putF_3('Danger Passed Null GameKeyEvent', this, this%f_commonStrings%f_ADD)
        end if
  end subroutine

  recursive subroutine GameInput_jm_addForRemoval_1(this, j_gameKeyEvent)
    class(GameInput), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jdiscardBoolean = this%f_removalGameKeyEventList%jm_add_1(j_gameKeyEvent)
  end subroutine

  recursive function GameInput_jm_isForRemoval_1(this, j_gameKeyEvent) result(jresult)
    class(GameInput), target :: this
    class(GameKeyEvent), target, optional :: j_gameKeyEvent
    logical :: jresult
        jresult = this%f_removalGameKeyEventList%jm_contains_1(j_gameKeyEvent)
        return
  end function

  recursive subroutine GameInput_jm_clear_0(this)
    class(GameInput), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_gameKeyEventList%jm_clear_0()
  end subroutine

  recursive subroutine GameInput_jm_removeNonAIInputGameKeyEvents_0(this)
    class(GameInput), target :: this
    class(BasicArrayList), pointer :: j_list
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    integer(4) :: j_index
    integer(4) :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_list => this%f_gameKeyEventList
        continue
        j_index = j_index - 1
        jtemp3 = j_index
        j_index = j_list%jm_size_0()
        do while ((jtemp3 >= 0))
            j_gameKeyEvent => GameKeyEvent_jcast(j_list%f_objectArray((j_index) + 1)%v)
            if ((j_gameKeyEvent%jm_getSourceId_0() /= 1)) then
                jdiscardRef => j_list%jm_removeAt_1(j_index)
            end if
        end do
  end subroutine

  recursive subroutine GameInput_jm_update_0(this)
    class(GameInput), target :: this
    class(BasicArrayList), pointer :: j_removeList
    class(BasicArrayList), pointer :: j_list
    integer(4) :: j_size
    class(JObject), pointer :: j_anyType
    integer(4) :: j_index2
    integer(4) :: j_index
    integer(4) :: jtemp4
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_removeList => this%f_removalGameKeyEventList
        j_list => this%f_gameKeyEventList
        j_size = j_removeList%jm_size_0()
        j_index = 0
        do while ((j_index < j_size))
            j_anyType => j_removeList%f_objectArray((j_index) + 1)%v
            j_index2 = j_index2 - 1
            jtemp4 = j_index2
            j_index2 = j_list%jm_size_0()
            do while ((jtemp4 >= 0))
                if (JR_same(j_list%f_objectArray((j_index2) + 1)%v, j_anyType)) then
                    jdiscardRef => j_list%jm_removeAt_1(j_index2)
                end if
            end do
            j_index = j_index + 1
        end do
        call j_removeList%jm_clear_0()
  end subroutine

  recursive function GameInput_jm_getRemovalGameKeyEventList_0(this) result(jresult)
    class(GameInput), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_removalGameKeyEventList
        return
  end function

  recursive function GameInput_jm_getGameKeyEventList_0(this) result(jresult)
    class(GameInput), target :: this
    class(BasicArrayList), pointer :: jresult
        jresult => this%f_gameKeyEventList
        return
  end function
end module GameInput_m

