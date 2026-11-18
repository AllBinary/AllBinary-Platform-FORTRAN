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
! package org.allbinary.layer
module LayerInterfaceVisitor_m
  use JR_m
  use AllBinaryLayer_m
  implicit none

  type, extends(JObject) :: LayerInterfaceVisitor
  contains
    procedure :: jm_visit_1 => LayerInterfaceVisitor_jm_visit_1
  end type


contains

  function LayerInterfaceVisitor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerInterfaceVisitor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerInterfaceVisitor)
      jresult => object
    end select
  end function

  function LayerInterfaceVisitor_jnew_0() result(this)
    class(LayerInterfaceVisitor), pointer :: this
    allocate(this)
    this%jclass = 'LayerInterfaceVisitor'
  end function

  recursive subroutine LayerInterfaceVisitor_jm_visit_1(this, j_layerInterface)
    class(LayerInterfaceVisitor), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    error stop 'AbstractMethodError: LayerInterfaceVisitor.visit'
  end subroutine
end module LayerInterfaceVisitor_m

