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
module TempHorizontalFormProcessor_m
  use JR_m
  use Processor_m
  use ScrollCurrentSelectionForm_m
  implicit none

  type, extends(Processor) :: TempHorizontalFormProcessor
    class(ScrollCurrentSelectionForm), pointer :: f_scrollCurrentSelectionForm => null()
  contains
    procedure :: jm_process_0 => TempHorizontalFormProcessor_jm_process_0
  end type


contains

  function TempHorizontalFormProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TempHorizontalFormProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TempHorizontalFormProcessor)
      jresult => object
    end select
  end function

  recursive function TempHorizontalFormProcessor_jnew_1(j_scrollCurrentSelectionForm) result(this)
    class(ScrollCurrentSelectionForm), target, optional :: j_scrollCurrentSelectionForm
    class(TempHorizontalFormProcessor), pointer :: this
    allocate(this)
    this%jclass = 'TempHorizontalFormProcessor'
    
        this%f_scrollCurrentSelectionForm => j_scrollCurrentSelectionForm
  end function

  recursive subroutine TempHorizontalFormProcessor_jm_process_0(this)
    class(TempHorizontalFormProcessor), target :: this
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_scrollCurrentSelectionForm%jm_processTempHorizontalForm_0()
        this%f_scrollCurrentSelectionForm%f_processor => Processor_jm_getInstance_0()
  end subroutine
end module TempHorizontalFormProcessor_m

