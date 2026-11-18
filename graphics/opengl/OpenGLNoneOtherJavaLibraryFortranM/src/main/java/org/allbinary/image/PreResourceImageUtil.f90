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
! package org.allbinary.image
module PreResourceImageUtil_m
  use JR_m
  use GL_m
  implicit none

  type, extends(JObject) :: PreResourceImageUtil
  contains
    procedure :: jm_encapsulate_1 => PreResourceImageUtil_jm_encapsulate_1
    procedure :: jm_updateGL_2 => PreResourceImageUtil_jm_updateGL_2
    procedure :: jm_update_2 => PreResourceImageUtil_jm_update_2
  end type

  class(PreResourceImageUtil), pointer, save :: PreResourceImageUtil_jcell_instance => null()
  logical, save :: PreResourceImageUtil_jset_instance = .false.

contains

  function PreResourceImageUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PreResourceImageUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PreResourceImageUtil)
      jresult => object
    end select
  end function

  function PreResourceImageUtil_jstatic_instance() result(jresult)
    class(PreResourceImageUtil), pointer :: jresult
    if (.not. PreResourceImageUtil_jset_instance) then
      PreResourceImageUtil_jset_instance = .true.
      PreResourceImageUtil_jcell_instance => PreResourceImageUtil_jnew_0()
    end if
    jresult => PreResourceImageUtil_jcell_instance
  end function

  subroutine PreResourceImageUtil_jsetstatic_instance(jvalue)
    class(PreResourceImageUtil), target, optional :: jvalue
    PreResourceImageUtil_jset_instance = .true.
    if (present(jvalue)) then
      PreResourceImageUtil_jcell_instance => jvalue
    else
      PreResourceImageUtil_jcell_instance => null()
    end if
  end subroutine

  function PreResourceImageUtil_jnew_0() result(this)
    class(PreResourceImageUtil), pointer :: this
    allocate(this)
    this%jclass = 'PreResourceImageUtil'
  end function

  recursive function PreResourceImageUtil_jm_getInstance_0() result(jresult)
    class(PreResourceImageUtil), pointer :: jresult
        jresult => PreResourceImageUtil_jstatic_instance()
        return
  end function

  recursive function PreResourceImageUtil_jm_encapsulate_1(this, j_image) result(jresult)
    class(PreResourceImageUtil), target :: this
    class(Image), target, optional :: j_image
    class(Image), pointer :: jresult
        jresult => j_image
        return
  end function

  recursive subroutine PreResourceImageUtil_jm_updateGL_2(this, j_gl, j_image)
    class(PreResourceImageUtil), target :: this
    class(GL), target, optional :: j_gl
    class(Image), target, optional :: j_image
    continue
  end subroutine

  recursive subroutine PreResourceImageUtil_jm_update_2(this, j_graphics, j_image)
    class(PreResourceImageUtil), target :: this
    class(Graphics), target, optional :: j_graphics
    class(Image), target, optional :: j_image
    continue
  end subroutine
end module PreResourceImageUtil_m

