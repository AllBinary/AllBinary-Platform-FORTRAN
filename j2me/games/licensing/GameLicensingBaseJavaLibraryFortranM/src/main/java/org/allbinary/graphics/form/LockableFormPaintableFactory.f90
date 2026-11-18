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
! package org.allbinary.graphics.form
module LockableFormPaintableFactory_m
  use JR_m
  use ItemPaintableFactory_m
  use LockablePaintable_m
  use ItemPaintable_m
  use PaintableForm_m
  implicit none

  type, extends(ItemPaintableFactory) :: LockableFormPaintableFactory
    integer(4) :: f_lockedIndex = 0
  contains
    procedure :: jm_getInstanceItemPaintable_1 => LockableFormPaintableFactory_jm_getInstanceItemPaintable_1
  end type


contains

  function LockableFormPaintableFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LockableFormPaintableFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LockableFormPaintableFactory)
      jresult => object
    end select
  end function

  recursive function LockableFormPaintableFactory_jnew_1(j_lockedIndex) result(this)
    integer(4), value :: j_lockedIndex
    class(LockableFormPaintableFactory), pointer :: this
    allocate(this)
    this%jclass = 'LockableFormPaintableFactory'
    
        this%f_lockedIndex = j_lockedIndex
  end function

  recursive function LockableFormPaintableFactory_jm_getInstanceItemPaintable_1(this, j_paintableForm) result(jresult)
    class(LockableFormPaintableFactory), target :: this
    class(PaintableForm), target, optional :: j_paintableForm
    class(ItemPaintable), pointer :: jresult
        jresult => LockablePaintable_jnew_1(this%f_lockedIndex)
        return
  end function
end module LockableFormPaintableFactory_m

function LockableFormPaintableFactory_jnew_1_jext(p1) result(this)
  use LockableFormPaintableFactory_m, only: JObject, LockableFormPaintableFactory_jnew_1
  implicit none
      integer(4), value :: p1
  class(JObject), pointer :: this
  this => LockableFormPaintableFactory_jnew_1(p1)
end function

