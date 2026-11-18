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
! package org.allbinary.input.motion.button
module CommonButtons_m
  use JR_m
  use PointFactory_m
  use Rectangle_m
  use DisplayInfoSingleton_m
  implicit none

  type, extends(JObject) :: CommonButtons
    integer(4) :: f_STANDARD_BUTTON_SIZE = 0
    class(Rectangle), pointer :: f_NORMAL_BUTTON => null()
    class(Rectangle), pointer :: f_LARGE_BUTTON => null()
  end type

  class(CommonButtons), pointer, save :: CommonButtons_jcell_instance => null()
  logical, save :: CommonButtons_jset_instance = .false.

contains

  function CommonButtons_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(CommonButtons), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (CommonButtons)
      jresult => object
    end select
  end function

  function CommonButtons_jstatic_instance() result(jresult)
    class(CommonButtons), pointer :: jresult
    if (.not. CommonButtons_jset_instance) then
      CommonButtons_jset_instance = .true.
      CommonButtons_jcell_instance => CommonButtons_jnew_0()
    end if
    jresult => CommonButtons_jcell_instance
  end function

  subroutine CommonButtons_jsetstatic_instance(jvalue)
    class(CommonButtons), target, optional :: jvalue
    CommonButtons_jset_instance = .true.
    if (present(jvalue)) then
      CommonButtons_jcell_instance => jvalue
    else
      CommonButtons_jcell_instance => null()
    end if
  end subroutine

  recursive function CommonButtons_jnew_0() result(this)
    class(CommonButtons), pointer :: this
    class(DisplayInfoSingleton), pointer :: j_displayInfo
    integer(4) :: j_commonButtonSize
    integer(4) :: j_totalColumns
    integer(4) :: j_totalRows
    integer(4) :: j_max
    class(PointFactory), pointer :: jtemp1
    class(PointFactory), pointer :: jtemp2
    allocate(this)
    this%jclass = 'CommonButtons'
    
    
    
        j_displayInfo => DisplayInfoSingleton_jm_getInstance_0()
        j_commonButtonSize = 128
        do while ((j_commonButtonSize > 64))
            j_totalColumns = (j_displayInfo%jm_getLastWidth_0() / j_commonButtonSize)
            j_totalRows = (j_displayInfo%jm_getLastHeight_0() / j_commonButtonSize)
            j_max = j_totalColumns
            if ((j_totalRows > j_max)) then
                j_max = j_totalRows
            end if
            if ((j_max > 9)) then
                exit
            end if
            j_commonButtonSize = shifta(j_commonButtonSize, iand(1, 31))
        end do
        this%f_STANDARD_BUTTON_SIZE = j_commonButtonSize
        jtemp1 => PointFactory_jm_getInstance_0()
        this%f_NORMAL_BUTTON => Rectangle_jnew_3(jtemp1%f_ZERO_ZERO, this%f_STANDARD_BUTTON_SIZE, this%f_STANDARD_BUTTON_SIZE)
        jtemp2 => PointFactory_jm_getInstance_0()
        this%f_LARGE_BUTTON => Rectangle_jnew_3(jtemp2%f_ZERO_ZERO, shiftl(this%f_STANDARD_BUTTON_SIZE, iand(1, 31)), shiftl(this%f_STANDARD_BUTTON_SIZE, iand(1, 31)))
  end function

  recursive function CommonButtons_jm_getInstance_0() result(jresult)
    class(CommonButtons), pointer :: jresult
        jresult => CommonButtons_jstatic_instance()
        return
  end function
end module CommonButtons_m

