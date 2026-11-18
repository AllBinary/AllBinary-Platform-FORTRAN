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
! package org.allbinary.graphics
module RectangleFactory_m
  use JR_m
  use Rectangle_m
  use PointFactory_m
  implicit none

  type, extends(JObject) :: RectangleFactory
  end type

  class(Rectangle), pointer, save :: RectangleFactory_jcell_SINGLETON => null()
  logical, save :: RectangleFactory_jset_SINGLETON = .false.
  type(JRef), allocatable, save :: RectangleFactory_jcell_ARRAY_OF_ARRAYS(:,:)
  logical, save :: RectangleFactory_jset_ARRAY_OF_ARRAYS = .false.

contains

  function RectangleFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(RectangleFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (RectangleFactory)
      jresult => object
    end select
  end function

  function RectangleFactory_jstatic_SINGLETON() result(jresult)
    class(Rectangle), pointer :: jresult
    class(PointFactory), pointer :: jtemp1
    if (.not. RectangleFactory_jset_SINGLETON) then
      RectangleFactory_jset_SINGLETON = .true.
      jtemp1 => PointFactory_jm_getInstance_0()
    RectangleFactory_jcell_SINGLETON => Rectangle_jnew_3(jtemp1%f_ZERO_ZERO, 0, 0)
    end if
    jresult => RectangleFactory_jcell_SINGLETON
  end function

  subroutine RectangleFactory_jsetstatic_SINGLETON(jvalue)
    class(Rectangle), target, optional :: jvalue
    RectangleFactory_jset_SINGLETON = .true.
    if (present(jvalue)) then
      RectangleFactory_jcell_SINGLETON => jvalue
    else
      RectangleFactory_jcell_SINGLETON => null()
    end if
  end subroutine

  function RectangleFactory_jstatic_ARRAY_OF_ARRAYS() result(jresult)
    type(JRef), allocatable :: jresult(:,:)
    if (.not. RectangleFactory_jset_ARRAY_OF_ARRAYS) then
      RectangleFactory_jset_ARRAY_OF_ARRAYS = .true.
      RectangleFactory_jcell_ARRAY_OF_ARRAYS = JR_newRefArray2(0, 0)
    end if
    jresult = RectangleFactory_jcell_ARRAY_OF_ARRAYS
  end function

  subroutine RectangleFactory_jsetstatic_ARRAY_OF_ARRAYS(jvalue)
    type(JRef) :: jvalue(:,:)
    RectangleFactory_jset_ARRAY_OF_ARRAYS = .true.
    RectangleFactory_jcell_ARRAY_OF_ARRAYS = jvalue
  end subroutine

  function RectangleFactory_jnew_0() result(this)
    class(RectangleFactory), pointer :: this
    allocate(this)
    this%jclass = 'RectangleFactory'
  end function
end module RectangleFactory_m

