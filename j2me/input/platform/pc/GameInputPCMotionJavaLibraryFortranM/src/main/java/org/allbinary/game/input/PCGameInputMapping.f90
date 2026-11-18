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
! package org.allbinary.game.input
module PCGameInputMapping_m
  use JR_m
  use GamePersistanceStrings_m
  use PersistentInputMapping_m
  use BasicTouchInputFactory_m
  use TouchMotionGestureFactory_m
  use TrackballMotionGestureFactory_m
  use AbeClientInformationInterface_m
  use PCKeyFactory_m
  use Input_m
  implicit none

  type, extends(PersistentInputMapping) :: PCGameInputMapping
  contains
    procedure :: jm_init_1 => PCGameInputMapping_jm_init_1
    procedure :: jm_isDelete_1 => PCGameInputMapping_jm_isDelete_1
    procedure :: jm_isSystemInput_1 => PCGameInputMapping_jm_isSystemInput_1
  end type


contains

  function PCGameInputMapping_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(PCGameInputMapping), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (PCGameInputMapping)
      jresult => object
    end select
  end function

  recursive function PCGameInputMapping_jnew_0() result(this)
    class(PCGameInputMapping), pointer :: this
    class(GamePersistanceStrings), pointer :: jtemp1
    allocate(this)
    this%jclass = 'PCGameInputMapping'
        jtemp1 => GamePersistanceStrings_jm_getInstance_0()
        continue ! super()
  end function

  recursive subroutine PCGameInputMapping_jm_init_1(this, j_abeClientInformation)
    class(PCGameInputMapping), target :: this
    class(AbeClientInformationInterface), target, optional :: j_abeClientInformation
    class(InputToGameKeyMapping), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        call this%f_logUtil%jm_putF_3(this%f_commonStrings%f_START, this, this%f_commonStrings%f_INIT)
        call PCKeyFactory_jm_getInstance_0()
        call TouchMotionGestureFactory_jm_getInstance_0()
        call TrackballMotionGestureFactory_jm_getInstance_0()
        call BasicTouchInputFactory_jm_getInstance_0()
        call this%PersistentInputMapping%jm_init_1(j_abeClientInformation)
        if (((this%jm_getTotalMapped_0() == 0) .or. this%jm_isDefaultNew_0())) then
            jtemp2 => this%jm_getInputMapping_0()
            call jtemp2%jm_addMapping_1(this%jm_getDefault_0())
            call this%jm_save_1(j_abeClientInformation)
        end if
  end subroutine

  recursive function PCGameInputMapping_jm_isDelete_1(this, j_input) result(jresult)
    class(PCGameInputMapping), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
    class(PCKeyFactory), pointer :: jtemp3
        jtemp3 => PCKeyFactory_jm_getInstance_0()
        if (JR_same(j_input, jtemp3%f_DEL)) then
            jresult = .true.
            return
        else
            jresult = .false.
            return
        end if
  end function

  recursive function PCGameInputMapping_jm_isSystemInput_1(this, j_input) result(jresult)
    class(PCGameInputMapping), target :: this
    class(Input), target, optional :: j_input
    logical :: jresult
        jresult = .false.
        return
  end function
end module PCGameInputMapping_m

function PCGameInputMapping_jnew_0_jext() result(this)
  use PCGameInputMapping_m, only: JObject, PCGameInputMapping_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => PCGameInputMapping_jnew_0()
end function

