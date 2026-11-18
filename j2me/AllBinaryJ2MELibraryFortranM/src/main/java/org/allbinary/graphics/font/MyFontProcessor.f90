! 
! AllBinary Open License Version 1 
! Copyright (c) 2025 AllBinary 
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
! package org.allbinary.graphics.font
module MyFontProcessor_m
  use JR_m
  implicit none

  type, extends(JObject) :: MyFontProcessor
  contains
    procedure :: jm_process_1 => MyFontProcessor_jm_process_1
  end type

  class(MyFontProcessor), pointer, save :: MyFontProcessor_jcell_instance => null()
  logical, save :: MyFontProcessor_jset_instance = .false.

contains

  function MyFontProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(MyFontProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (MyFontProcessor)
      jresult => object
    end select
  end function

  function MyFontProcessor_jstatic_instance() result(jresult)
    class(MyFontProcessor), pointer :: jresult
    if (.not. MyFontProcessor_jset_instance) then
      MyFontProcessor_jset_instance = .true.
      MyFontProcessor_jcell_instance => MyFontProcessor_jnew_0()
    end if
    jresult => MyFontProcessor_jcell_instance
  end function

  subroutine MyFontProcessor_jsetstatic_instance(jvalue)
    class(MyFontProcessor), target, optional :: jvalue
    MyFontProcessor_jset_instance = .true.
    if (present(jvalue)) then
      MyFontProcessor_jcell_instance => jvalue
    else
      MyFontProcessor_jcell_instance => null()
    end if
  end subroutine

  function MyFontProcessor_jnew_0() result(this)
    class(MyFontProcessor), pointer :: this
    allocate(this)
    this%jclass = 'MyFontProcessor'
  end function

  recursive function MyFontProcessor_jm_defaultCharWidth_1(j_font) result(jresult)
    class(Font), target, optional :: j_font
    integer(4) :: jresult
        jresult = j_font%jm_charWidth_1(iachar('C'))
        return
  end function

  recursive function MyFontProcessor_jm_defaultStringWidth_2(j_font, j_size) result(jresult)
    class(Font), target, optional :: j_font
    integer(4), value :: j_size
    integer(4) :: jresult
        jresult = (MyFontProcessor_jm_defaultCharWidth_1(j_font) * j_size)
        return
  end function

  recursive function MyFontProcessor_jm_getInstance_0() result(jresult)
    class(MyFontProcessor), pointer :: jresult
        jresult => MyFontProcessor_jstatic_instance()
        return
  end function

  recursive subroutine MyFontProcessor_jm_process_1(this, j_graphics)
    class(MyFontProcessor), target :: this
    class(Graphics), target, optional :: j_graphics
    continue
  end subroutine
end module MyFontProcessor_m

