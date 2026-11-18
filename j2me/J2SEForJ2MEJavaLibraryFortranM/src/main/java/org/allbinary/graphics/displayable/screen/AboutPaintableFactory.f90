!
! AllBinary Open License Version 1
! Copyright (c) 2022 AllBinary
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
! package org.allbinary.graphics.displayable.screen
module AboutPaintableFactory_m
  use JR_m
  use AboutPaintable_m
  use NullPaintable_m
  use Paintable_m
  use StringUtil_m
  implicit none

  type, extends(JObject) :: AboutPaintableFactory
    type(JRef), allocatable :: f_paintableArray(:)
  end type

  class(AboutPaintableFactory), pointer, save :: AboutPaintableFactory_jcell_instance => null()
  logical, save :: AboutPaintableFactory_jset_instance = .false.

contains

  function AboutPaintableFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(AboutPaintableFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (AboutPaintableFactory)
      jresult => object
    end select
  end function

  function AboutPaintableFactory_jstatic_instance() result(jresult)
    class(AboutPaintableFactory), pointer :: jresult
    if (.not. AboutPaintableFactory_jset_instance) then
      AboutPaintableFactory_jset_instance = .true.
      AboutPaintableFactory_jcell_instance => AboutPaintableFactory_jnew_0()
    end if
    jresult => AboutPaintableFactory_jcell_instance
  end function

  subroutine AboutPaintableFactory_jsetstatic_instance(jvalue)
    class(AboutPaintableFactory), target, optional :: jvalue
    AboutPaintableFactory_jset_instance = .true.
    if (present(jvalue)) then
      AboutPaintableFactory_jcell_instance => jvalue
    else
      AboutPaintableFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function AboutPaintableFactory_jnew_0() result(this)
    class(AboutPaintableFactory), pointer :: this
    type(JString), allocatable :: j_INFO(:)
    type(JString), allocatable :: j_DEVELOPERS(:)
    class(StringUtil), pointer :: jtemp1
    class(AboutPaintable), pointer :: jtemp2
    allocate(this)
    this%jclass = 'AboutPaintableFactory'
    this%f_paintableArray = [JRef :: JRef(NullPaintable_jm_getInstance_0())]
        jtemp1 => StringUtil_jm_getInstance_0()
        j_INFO = [JString :: JString('Built with the'), JString('AllBinary Platform'), JString(jtemp1%f_EMPTY_STRING), JString('Comments or Questions:'), JString('support@allbinary.com')]
        j_DEVELOPERS = [JString :: JString('Developed By:'), JString('Travis Berthelot')]
        jtemp2 => AboutPaintable_jm_getInstance_2(j_INFO, j_DEVELOPERS)
        this%f_paintableArray = jtemp2%jm_getPaintableArrayInstance_0()
  end function

  recursive function AboutPaintableFactory_jm_getInstance_0() result(jresult)
    class(AboutPaintableFactory), pointer :: jresult
        jresult => AboutPaintableFactory_jstatic_instance()
        return
  end function
end module AboutPaintableFactory_m

