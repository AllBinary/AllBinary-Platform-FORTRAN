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
! package org.allbinary.game.ag.ai.tactical
module BasicRandomAI_m
  use JR_m
  use BasicAI_m
  use InputProbability_m
  use GameInput_m
  use MyRandomFactory_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use Visitor_m
  use GameTickTimeDelayHelperFactory_m
  use Integer_m
  implicit none

  type, extends(BasicAI) :: BasicRandomAI
    integer(4) :: f_i_random = 0
    class(InputProbability), pointer :: f_inputProbability => null()
    class(Visitor), pointer :: f_visitor => null()
    integer(4), allocatable :: f_keyArray(:)
    class(MyRandomFactory), pointer :: f_myRandomFactory => null()
  contains
    procedure :: jm_processAI_1 => BasicRandomAI_jm_processAI_1
  end type


contains

  function BasicRandomAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BasicRandomAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BasicRandomAI)
      jresult => object
    end select
  end function

  recursive function BasicRandomAI_jnew_4(j_ownerLayerInterface, j_gameInput, j_inputProbability, j_visitor) result(this)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(InputProbability), target, optional :: j_inputProbability
    class(Visitor), target, optional :: j_visitor
    class(BasicRandomAI), pointer :: this
    allocate(this)
    this%jclass = 'BasicRandomAI'
    this%f_i_random = 0
    
    
    this%f_keyArray = [integer(4) :: Canvas_jstatic_UP(), Canvas_jstatic_DOWN(), Canvas_jstatic_LEFT(), Canvas_jstatic_RIGHT(), Canvas_jstatic_KEY_NUM1(), Canvas_jstatic_KEY_NUM7(), Canvas_jstatic_KEY_NUM9()]
    this%f_myRandomFactory => MyRandomFactory_jm_getInstance_0()
        continue ! super()
        this%f_inputProbability => j_inputProbability
        this%f_visitor => j_visitor
  end function

  recursive subroutine BasicRandomAI_jm_processAI_1(this, j_layerManager)
    class(BasicRandomAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    logical :: j_repeat
    integer(4), allocatable :: j_repeatLikelyhoodIntegerArray(:)
    integer(4), allocatable :: j_likelyhoodIntegerArray(:,:)
    integer(4) :: j_size
    integer(4), allocatable :: j_likelyhoodIntegerKeyArray(:)
    integer(4) :: j_key
    integer(4) :: j_index
    class(TimeDelayHelper), pointer :: jtemp1
    class(GameTickTimeDelayHelperFactory), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp2 => GameTickTimeDelayHelperFactory_jm_getInstance_0()
        jtemp1 => this%f_inputProbability%jm_getTimeDelayHelper_0()
        if (jtemp1%jm_isTime_1(jtemp2%f_startTime)) then
            this%f_i_random = this%f_myRandomFactory%jm_getAbsoluteNextInt_1(this%f_inputProbability%jm_getMax_0())
            j_repeat = .false.
            j_repeatLikelyhoodIntegerArray = this%f_inputProbability%jm_getRepeatLikelyhoodIntegerArray_0()
            if (((this%jm_getLastKey_0() /= (-1)) .and. (int(j_repeatLikelyhoodIntegerArray((this%jm_getLastKey_0()) + 1), 4) >= this%f_i_random))) then
                j_repeat = .true.
            end if
            if ((.not. j_repeat)) then
                j_likelyhoodIntegerArray = this%f_inputProbability%jm_getLikelyhoodIntegerArray_0()
                this%f_i_random = this%f_myRandomFactory%jm_getAbsoluteNextInt_1(this%f_inputProbability%jm_getMax_0())
                j_size = size(this%f_keyArray, 1)
                continue
                j_index = 0
                do while ((j_index < j_size))
                    j_key = this%f_keyArray((j_index) + 1)
                    j_likelyhoodIntegerKeyArray = j_likelyhoodIntegerArray((j_key) + 1, :)
                    if (((size(j_likelyhoodIntegerArray, 1) >= j_key) .and. .true.)) then
                        if (((this%f_i_random >= int(j_likelyhoodIntegerKeyArray((0) + 1), 4)) .and. (this%f_i_random < int(j_likelyhoodIntegerKeyArray((1) + 1), 4)))) then
                            call this%jm_setLastKey_1(j_key)
                            exit
                        end if
                    end if
                    j_index = j_index + 1
                end do
            end if
            jdiscardRef => this%f_visitor%jm_visit_1(this)
        end if
  end subroutine
end module BasicRandomAI_m

