! Generated Code Do Not Modify
! package org.bouncycastle.jce.provider
module BouncyCastleProvider_m
  use JR_m
  use Provider_m
  implicit none

  type, extends(Provider) :: BouncyCastleProvider
  contains
    procedure :: jm_setParameter_2 => BouncyCastleProvider_jm_setParameter_2
  end type

  character(len=:), allocatable, save :: BouncyCastleProvider_jcell_info
  logical, save :: BouncyCastleProvider_jset_info = .false.
  character(len=:), allocatable, save :: BouncyCastleProvider_jcell_PROVIDER_NAME
  logical, save :: BouncyCastleProvider_jset_PROVIDER_NAME = .false.

contains

  function BouncyCastleProvider_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(BouncyCastleProvider), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (BouncyCastleProvider)
      jresult => object
    end select
  end function

  function BouncyCastleProvider_jstatic_info() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. BouncyCastleProvider_jset_info) then
      BouncyCastleProvider_jset_info = .true.
      BouncyCastleProvider_jcell_info = 'BouncyCastle Security Provider v1.41'
    end if
    jresult = BouncyCastleProvider_jcell_info
  end function

  subroutine BouncyCastleProvider_jsetstatic_info(jvalue)
    character(len=*), intent(in) :: jvalue
    BouncyCastleProvider_jset_info = .true.
    BouncyCastleProvider_jcell_info = jvalue
  end subroutine

  function BouncyCastleProvider_jstatic_PROVIDER_NAME() result(jresult)
    character(len=:), allocatable :: jresult
    if (.not. BouncyCastleProvider_jset_PROVIDER_NAME) then
      BouncyCastleProvider_jset_PROVIDER_NAME = .true.
      BouncyCastleProvider_jcell_PROVIDER_NAME = 'BC'
    end if
    jresult = BouncyCastleProvider_jcell_PROVIDER_NAME
  end function

  subroutine BouncyCastleProvider_jsetstatic_PROVIDER_NAME(jvalue)
    character(len=*), intent(in) :: jvalue
    BouncyCastleProvider_jset_PROVIDER_NAME = .true.
    BouncyCastleProvider_jcell_PROVIDER_NAME = jvalue
  end subroutine

  recursive function BouncyCastleProvider_jnew_0() result(this)
    class(BouncyCastleProvider), pointer :: this
    allocate(this)
    this%jclass = 'BouncyCastleProvider'
        continue ! super()
  end function

  recursive subroutine BouncyCastleProvider_jm_setParameter_2(this, j_parameterName, j_parameter)
    class(BouncyCastleProvider), target :: this
    character(len=*), intent(in) :: j_parameterName
    class(JObject), target, optional :: j_parameter
    continue
  end subroutine
end module BouncyCastleProvider_m

function BouncyCastleProvider_jnew_0_jext() result(this)
  use BouncyCastleProvider_m, only: JObject, BouncyCastleProvider_jnew_0
  implicit none
  class(JObject), pointer :: this
  this => BouncyCastleProvider_jnew_0()
end function

