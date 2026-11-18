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
! package org.allbinary.input.motion.button
module MultitouchReleaseHelper_m
  use JR_m
  use GameKeyEvent_m
  use ReleaseHelper_m
  use TouchButtonRecognizer_m
  use CancelTouchButtonInputFactory_m
  use TouchButtonInput_m
  implicit none

  type, extends(ReleaseHelper) :: MultitouchReleaseHelper
  contains
    procedure :: jm_release_2 => MultitouchReleaseHelper_jm_release_2
  end type


contains

  function MultitouchReleaseHelper_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MultitouchReleaseHelper), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MultitouchReleaseHelper)
      jresult => object
    end select
  end function

  recursive function MultitouchReleaseHelper_jnew_1(j_touchButtonRecognizer) result(this)
    class(TouchButtonRecognizer), target, optional :: j_touchButtonRecognizer
    class(MultitouchReleaseHelper), pointer :: this
    allocate(this)
    this%jclass = 'MultitouchReleaseHelper'
        continue ! super()
  end function

  recursive subroutine MultitouchReleaseHelper_jm_release_2(this, j_touchButtonInput, j_deviceId)
    class(MultitouchReleaseHelper), target :: this
    class(TouchButtonInput), target, optional :: j_touchButtonInput
    integer(4), value :: j_deviceId
    class(TouchButtonInput), pointer :: j_cancelTouchButtonInput
    class(TouchButtonInput), pointer :: j_nextTouchButtonInput
    class(GameKeyEvent), pointer :: j_gameKeyEvent
    integer(4) :: j_index
    class(CancelTouchButtonInputFactory), pointer :: jtemp1
    class(JObject), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => CancelTouchButtonInputFactory_jm_getInstance_0()
        j_cancelTouchButtonInput => jtemp1%jm_getCancel_1(j_touchButtonInput)
        continue
        continue
        j_index = (this%f_touchButtonRecognizer%f_currentlyPressedTouchButtonSingleton%jm_size_0() - 1)
        do while ((j_index >= 0))
            j_nextTouchButtonInput => this%f_touchButtonRecognizer%f_currentlyPressedTouchButtonSingleton%jm_get_1(j_index)
            if (JR_same(j_cancelTouchButtonInput, j_nextTouchButtonInput)) then
                j_gameKeyEvent => j_nextTouchButtonInput%jm_getGameKeyEvent_0()
                call this%f_touchButtonRecognizer%f_upGameKeyEventHandler%jm_fireEvent_1(j_gameKeyEvent)
                jtemp2 => this%f_touchButtonRecognizer%f_upGameKeyEventHandler%jm_getInstanceForDevice_1(j_deviceId)
                call jtemp2%jm_fireEvent_1(j_gameKeyEvent)
                jdiscardRef => this%f_touchButtonRecognizer%f_currentlyPressedTouchButtonSingleton%jm_removeAt_1(j_index)
            end if
            j_index = j_index - 1
        end do
  end subroutine
end module MultitouchReleaseHelper_m

