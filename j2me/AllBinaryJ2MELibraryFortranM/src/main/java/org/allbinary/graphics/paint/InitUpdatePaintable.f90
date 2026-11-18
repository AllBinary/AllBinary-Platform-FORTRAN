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
! package org.allbinary.graphics.paint
module InitUpdatePaintable_m
  use JR_m
  use Paintable_m
  use InitUpdatePaintableInterface_m
  implicit none

  type, extends(Paintable) :: InitUpdatePaintable
  contains
    procedure :: jm_init_0 => InitUpdatePaintable_jm_init_0
    procedure :: jm_update_0 => InitUpdatePaintable_jm_update_0
  end type

  ! InitUpdatePaintable used as a InitUpdatePaintableInterface
  type, extends(InitUpdatePaintableInterface) :: InitUpdatePaintable_jas_InitUpdatePaintableInterface
    class(InitUpdatePaintable), pointer :: jtarget => null()
  end type


contains

  function InitUpdatePaintable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(InitUpdatePaintable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (InitUpdatePaintable)
      jresult => object
    end select
  end function

  function InitUpdatePaintable_jas_InitUpdatePaintableInterface_jnew(object) result(jresult)
    class(InitUpdatePaintable), target :: object
    class(InitUpdatePaintable_jas_InitUpdatePaintableInterface), pointer :: jresult
    allocate(jresult)
    jresult%jclass = 'InitUpdatePaintable'
    jresult%jtarget => object
  end function

  recursive function InitUpdatePaintable_jnew_0() result(this)
    class(InitUpdatePaintable), pointer :: this
    allocate(this)
    this%jclass = 'InitUpdatePaintable'
        continue
  end function

  recursive subroutine InitUpdatePaintable_jm_init_0(this)
    class(InitUpdatePaintable), target :: this
    continue
  end subroutine

  recursive subroutine InitUpdatePaintable_jm_update_0(this)
    class(InitUpdatePaintable), target :: this
    continue
  end subroutine
end module InitUpdatePaintable_m

function InitUpdatePaintable_jnew_0_jext() result(this)
  use InitUpdatePaintable_m, only: JObject, InitUpdatePaintable_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => InitUpdatePaintable_jnew_0()
end function

