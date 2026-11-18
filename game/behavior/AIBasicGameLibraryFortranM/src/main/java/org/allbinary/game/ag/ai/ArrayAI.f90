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
module ArrayAI_m
  use JR_m
  use ArtificialIntelligenceInterface_m
  use GameInput_m
  use AllBinaryLayer_m
  use AllBinaryLayerManager_m
  use BasicAI_m
  implicit none

  type, extends(BasicAI) :: ArrayAI
    type(JRef), allocatable :: f_artificialIntelligenceInterfaceArray(:)
  contains
    procedure :: jm_processAI_1 => ArrayAI_jm_processAI_1
    procedure :: jm_getArtificialIntelligenceInterface_0 => ArrayAI_jm_getArtificialIntelligenceInterface_0
  end type


contains

  function ArrayAI_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ArrayAI), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ArrayAI)
      jresult => object
    end select
  end function

  recursive function ArrayAI_jnew_3(j_artificialIntelligenceInterface, j_ownerLayerInterface, j_gameInput) result(this)
    type(JRef) :: j_artificialIntelligenceInterface(:)
    class(AllBinaryLayer), target, optional :: j_ownerLayerInterface
    class(GameInput), target, optional :: j_gameInput
    class(ArrayAI), pointer :: this
    allocate(this)
    this%jclass = 'ArrayAI'
    
        continue ! super()
        this%f_artificialIntelligenceInterfaceArray = j_artificialIntelligenceInterface
  end function

  recursive subroutine ArrayAI_jm_processAI_1(this, j_layerManager)
    class(ArrayAI), target :: this
    class(AllBinaryLayerManager), target, optional :: j_layerManager
    integer(4) :: j_size
    integer(4) :: j_index
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_size = size(this%f_artificialIntelligenceInterfaceArray, 1)
        j_index = 0
        do while ((j_index < j_size))
            associate (jstaticref1 => ArtificialIntelligenceInterface_jcast(this%f_artificialIntelligenceInterfaceArray((j_index) + 1)%v))
            call jstaticref1%jm_processAI_1(j_layerManager)
            end associate
            j_index = j_index + 1
        end do
  end subroutine

  recursive function ArrayAI_jm_getArtificialIntelligenceInterface_0(this) result(jresult)
    class(ArrayAI), target :: this
    type(JRef), allocatable :: jresult(:)
        jresult = this%f_artificialIntelligenceInterfaceArray
        return
  end function
end module ArrayAI_m

