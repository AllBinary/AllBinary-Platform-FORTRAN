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
! package org.allbinary.logic.system.security.crypt.jcehelper
module KeySpecFactory_m
  use JR_m
  use KeySpec_m
  use TsUtil_m
  use PreLogUtil_m
  use CommonStrings_m
  implicit none

  type, extends(JObject) :: KeySpecFactory
    character(len=:), allocatable :: f_DES
    character(len=:), allocatable :: f_DESEDE
    character(len=:), allocatable :: f_BLOWFISH
  contains
    procedure :: jm_getInstance_2 => KeySpecFactory_jm_getInstance_2
  end type

  class(KeySpecFactory), pointer, save :: KeySpecFactory_jcell_instance => null()
  logical, save :: KeySpecFactory_jset_instance = .false.

contains

  function KeySpecFactory_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(KeySpecFactory), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (KeySpecFactory)
      jresult => object
    end select
  end function

  function KeySpecFactory_jstatic_instance() result(jresult)
    class(KeySpecFactory), pointer :: jresult
    if (.not. KeySpecFactory_jset_instance) then
      KeySpecFactory_jset_instance = .true.
      KeySpecFactory_jcell_instance => KeySpecFactory_jnew_0()
    end if
    jresult => KeySpecFactory_jcell_instance
  end function

  subroutine KeySpecFactory_jsetstatic_instance(jvalue)
    class(KeySpecFactory), target, optional :: jvalue
    KeySpecFactory_jset_instance = .true.
    if (present(jvalue)) then
      KeySpecFactory_jcell_instance => jvalue
    else
      KeySpecFactory_jcell_instance => null()
    end if
  end subroutine

  recursive function KeySpecFactory_jnew_0() result(this)
    class(KeySpecFactory), pointer :: this
    allocate(this)
    this%jclass = 'KeySpecFactory'
    this%f_DES = ''
    this%f_DESEDE = ''
    this%f_BLOWFISH = ''
    this%f_DES = 'DES'
    this%f_DESEDE = 'DESede'
    this%f_BLOWFISH = 'Blowfish'
        continue
  end function

  recursive function KeySpecFactory_jm_getInstance_0() result(jresult)
    class(KeySpecFactory), pointer :: jresult
        jresult => KeySpecFactory_jstatic_instance()
        return
  end function

  recursive function KeySpecFactory_jm_getInstance_2(this, j_algorithm, j_keyData) result(jresult)
    class(KeySpecFactory), target :: this
    character(len=*), intent(in) :: j_algorithm
    integer(4) :: j_keyData(:)
    class(KeySpec), pointer :: jresult
    class(TsUtil), pointer :: j_tsUtil
    class(CommonStrings), pointer :: j_commonStrings
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_tsUtil => TsUtil_jm_getInstance_0()
            if ((j_tsUtil%jm_compareTo_2(j_algorithm, this%f_DES) == 0)) then
                jresult => DESKeySpec_jnew_1(j_keyData)
                return
            else if ((j_tsUtil%jm_compareTo_2(j_algorithm, this%f_DESEDE) == 0)) then
                jresult => DESedeKeySpec_jnew_1(j_keyData)
                return
            else
                error stop JR_toString(JR_newJObject('RuntimeException'))
            end if
  end function
end module KeySpecFactory_m

