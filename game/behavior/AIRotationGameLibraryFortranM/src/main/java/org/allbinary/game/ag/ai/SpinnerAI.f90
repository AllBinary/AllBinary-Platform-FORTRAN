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
! package org.allbinary.game.ag.ai
module SpinnerAI_m
  use JR_m
  use BasicAI_m
  use GameInput_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  implicit none

  type, extends(BasicAI) :: SpinnerAI
    logical :: f_isEven = .false.
    integer(4), allocatable :: f_direction(:)
  contains
    procedure :: jm_processAI_1 => SpinnerAI_jm_processAI_1
  end type


contains

  function SpinnerAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(SpinnerAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (SpinnerAI)
      jresult => object
    end select
  end function

  recursive function SpinnerAI_jnew_3(j_direction, j_ownerLayerInterface, j_gameInput) result(this)
    integer(4) :: j_direction(:)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(SpinnerAI), pointer :: this
    allocate(this)
    this%jclass = 'SpinnerAI'
    
    
        continue ! super()
        this%f_direction = j_direction
  end function

  recursive subroutine SpinnerAI_jm_processAI_1(this, j_layerManager)
    class(SpinnerAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        if (this%f_isEven) then
            call this%BasicAI%jm_processKeyAI_1(this%f_direction((0) + 1))
            this%f_isEven = .false.
        else
            call this%BasicAI%jm_processKeyAI_1(Canvas_jstatic_KEY_NUM1())
            this%f_isEven = .true.
        end if
  end subroutine
end module SpinnerAI_m

