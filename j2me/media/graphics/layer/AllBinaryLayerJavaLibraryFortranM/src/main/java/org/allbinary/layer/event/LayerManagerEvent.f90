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
! package org.allbinary.layer.event
module LayerManagerEvent_m
  use JR_m
  use AllBinaryLayer_m
  use ABLayerManager_m
  use StringMaker_m
  use AllBinaryEventObject_m
  implicit none

  type, extends(AllBinaryEventObject) :: LayerManagerEvent
    class(AllBinaryLayer), pointer :: f_layerInterface => null()
    character(len=:), allocatable :: f_crud
  contains
    procedure :: jm_getLayerInterface_0 => LayerManagerEvent_jm_getLayerInterface_0
    procedure :: jm_setLayerInterface_1 => LayerManagerEvent_jm_setLayerInterface_1
    procedure :: jm_toString_0 => LayerManagerEvent_jm_toString_0
  end type


contains

  function LayerManagerEvent_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerManagerEvent), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerManagerEvent)
      jresult => object
    end select
  end function

  recursive function LayerManagerEvent_jnew_2(j_layerManager, j_crud) result(this)
    class(ABLayerManager), target, optional :: j_layerManager
    character(len=*), intent(in) :: j_crud
    class(LayerManagerEvent), pointer :: this
    allocate(this)
    this%jclass = 'LayerManagerEvent'
    this%f_crud = ''
    this%f_layerInterface => AllBinaryLayer_jstatic_NULL_ALLBINARY_LAYER()
    
        continue ! super()
        this%f_crud = j_crud
  end function

  recursive function LayerManagerEvent_jm_getLayerInterface_0(this) result(jresult)
    class(LayerManagerEvent), target :: this
    class(AllBinaryLayer), pointer :: jresult
        jresult => this%f_layerInterface
        return
  end function

  recursive subroutine LayerManagerEvent_jm_setLayerInterface_1(this, j_layerInterface)
    class(LayerManagerEvent), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
        this%f_layerInterface => j_layerInterface
  end subroutine

  recursive function LayerManagerEvent_jm_toString_0(this) result(jresult)
    class(LayerManagerEvent), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(AllBinaryLayer), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1(JR_unescape('LayerManagerEvent: \n'))
        jdiscardRef => j_stringBuffer%jm_append_1('LayerInterface: ')
        jtemp1 => this%jm_getLayerInterface_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp1%jm_toString_0())
        jdiscardRef => j_stringBuffer%jm_append_1(JR_unescape('\nCRUD: '))
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_crud)
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module LayerManagerEvent_m

