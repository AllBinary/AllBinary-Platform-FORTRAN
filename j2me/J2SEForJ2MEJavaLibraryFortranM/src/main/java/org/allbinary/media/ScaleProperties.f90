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
! package org.allbinary.media
module ScaleProperties_m
  use JR_m
  use StringMaker_m
  use CommonLabels_m
  implicit none

  type, extends(JObject) :: ScaleProperties
    real(4) :: f_scaleX = 0.0
    real(4) :: f_scaleY = 0.0
    integer(4) :: f_scaleWidth = 0
    integer(4) :: f_scaleHeight = 0
    logical :: f_shouldScale = .false.
  contains
    procedure :: jm_toString_0 => ScaleProperties_jm_toString_0
  end type

  class(ScaleProperties), pointer, save :: ScaleProperties_jcell_instance => null()
  logical, save :: ScaleProperties_jset_instance = .false.

contains

  function ScaleProperties_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(ScaleProperties), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (ScaleProperties)
      jresult => object
    end select
  end function

  function ScaleProperties_jstatic_instance() result(jresult)
    class(ScaleProperties), pointer :: jresult
    if (.not. ScaleProperties_jset_instance) then
      ScaleProperties_jset_instance = .true.
      ScaleProperties_jcell_instance => ScaleProperties_jnew_0()
    end if
    jresult => ScaleProperties_jcell_instance
  end function

  subroutine ScaleProperties_jsetstatic_instance(jvalue)
    class(ScaleProperties), target, optional :: jvalue
    ScaleProperties_jset_instance = .true.
    if (present(jvalue)) then
      ScaleProperties_jcell_instance => jvalue
    else
      ScaleProperties_jcell_instance => null()
    end if
  end subroutine

  function ScaleProperties_jnew_0() result(this)
    class(ScaleProperties), pointer :: this
    allocate(this)
    this%jclass = 'ScaleProperties'
    
    
    
    
    
  end function

  recursive function ScaleProperties_jm_toString_0(this) result(jresult)
    class(ScaleProperties), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: jtemp1
    class(StringMaker), pointer :: jtemp2
    class(StringMaker), pointer :: jtemp3
    class(StringMaker), pointer :: jtemp4
    class(StringMaker), pointer :: jtemp5
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(CommonLabels), pointer :: jtemp12
        jtemp12 => CommonLabels_jm_getInstance_0()
        jtemp11 => StringMaker_jnew_0()
        jtemp10 => jtemp11%jm_append_1(jtemp12%f_COLON_SEP)
        jtemp9 => jtemp10%jm_appendboolean_1(this%f_shouldScale)
        jtemp8 => jtemp9%jm_append_1('scaleX: ')
        jtemp7 => jtemp8%jm_appendfloat_1(this%f_scaleX)
        jtemp6 => jtemp7%jm_append_1('scaleY: ')
        jtemp5 => jtemp6%jm_appendfloat_1(this%f_scaleY)
        jtemp4 => jtemp5%jm_append_1('scaleWidth: ')
        jtemp3 => jtemp4%jm_appendint_1(this%f_scaleWidth)
        jtemp2 => jtemp3%jm_append_1('scaleHeight: ')
        jtemp1 => jtemp2%jm_appendint_1(this%f_scaleHeight)
        jresult = jtemp1%jm_toString_0()
        return
  end function
end module ScaleProperties_m

