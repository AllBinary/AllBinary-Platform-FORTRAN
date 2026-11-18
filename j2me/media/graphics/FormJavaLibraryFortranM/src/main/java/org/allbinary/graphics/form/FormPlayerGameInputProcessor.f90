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
module FormPlayerGameInputProcessor_m
  use JR_m
  use Processor_m
  use PlayerGameInputCompositeInterface_m
  implicit none

  type, extends(Processor) :: FormPlayerGameInputProcessor
    class(PlayerGameInputCompositeInterface), pointer :: f_playerGameInputCompositeInterface => null()
  contains
    procedure :: jm_process_0 => FormPlayerGameInputProcessor_jm_process_0
  end type


contains

  function FormPlayerGameInputProcessor_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(FormPlayerGameInputProcessor), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (FormPlayerGameInputProcessor)
      jresult => object
    end select
  end function

  recursive function FormPlayerGameInputProcessor_jnew_1(j_playerGameInputCompositeInterface) result(this)
    class(PlayerGameInputCompositeInterface), target, optional :: j_playerGameInputCompositeInterface
    class(FormPlayerGameInputProcessor), pointer :: this
    allocate(this)
    this%jclass = 'FormPlayerGameInputProcessor'
    
        this%f_playerGameInputCompositeInterface => j_playerGameInputCompositeInterface
  end function

  recursive subroutine FormPlayerGameInputProcessor_jm_process_0(this)
    class(FormPlayerGameInputProcessor), target :: this
    class(PlayerGameInput), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        jtemp1 => this%f_playerGameInputCompositeInterface%jm_getPlayerGameInput_0()
        call jtemp1%jm_update_0()
  end subroutine
end module FormPlayerGameInputProcessor_m

