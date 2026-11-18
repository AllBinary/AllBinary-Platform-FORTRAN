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
! package org.allbinary.logic.system.security.crypt
module WeakCrypt_m
  use JR_m
  use TsUtil_m
  use PreLogUtil_m
  use StringUtil_m
  use AbCrypt_m
  use KeySpecFactory_m
  use CommonStrings_m
  use DatabaseEncoder_m
  implicit none

  type, extends(JObject) :: WeakCrypt
    class(TsUtil), pointer :: f_tsUtil => null()
    class(AbCrypt), pointer :: f_abCrypt => null()
  contains
    procedure :: jm_encrypt_1 => WeakCrypt_jm_encrypt_1
    procedure :: jm_decrypt_1 => WeakCrypt_jm_decrypt_1
  end type

  type(JString), allocatable, save :: WeakCrypt_jcell_keys(:)
  logical, save :: WeakCrypt_jset_keys = .false.
  integer(4), save :: WeakCrypt_jcell_KEYMAX
  logical, save :: WeakCrypt_jset_KEYMAX = .false.

contains

  function WeakCrypt_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(WeakCrypt), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (WeakCrypt)
      jresult => object
    end select
  end function

  function WeakCrypt_jstatic_keys() result(jresult)
    type(JString), allocatable :: jresult(:)
    if (.not. WeakCrypt_jset_keys) then
      WeakCrypt_jset_keys = .true.
      WeakCrypt_jcell_keys = [JString :: JString('qwres6qewrupoi1132790jfahleavi89398'), JString('143uk32lngf8675gt1tv9214uvt924ut9u9'), JString('12kvjlvlkv11445v12951v512v9m51295v1'), JString('gampipoiupg4g43y5u238tu2485u20u0932'), JString('a93u5uu02s2d2g3259u4395u409u093u9vu'), JString('nlkxzj90je3mln9l8l89qjf0j3v50j23r9j'), JString('2lk5fn5j23nr8f0233vq35n23jn58vhy843'), JString('9q24334m598t092tkn2iv0982456n425j9g'), JString('5m9uvmt9436243m5v34g09d43i52ki35g99'), JString('n123lr1iubiu2br32lv32rbu23b32ub2rlb'), JString('va0u0iovji2ojpvj2oij22poiu4ov2uv28v'), JString('bkk80gn2v9uc902340ut209pcup0u09utc9'), JString('mn32m32neee23c42fn32nf3mf2n3fn2m3fm'), JString('zcxpozo3423voizupovsijevnv3n33o33n3'), JString('v0345324thv93h03893893vh893v8h3vhzz'), JString('v8na898v8wyef9ty39yv98yaw39yeeyf8ye'), JString('45zd36d34jg09434hfshp8uj9sy8s7cyr78'), JString('b098yy0908vdvh983b2lb327980a76s5e5e'), JString('v90y9v9p8y3r98pagsdgsagyr6y3985yhfh'), JString('vblkzhhzp8yvzi8u4t9856456zy3rv8a388'), JString('da7696023rgf28dssfa98asd879hg32hewe'), JString('afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf'), JString('4gijvqo8vq984hv984hj5j3511h832hf833')]
    end if
    jresult = WeakCrypt_jcell_keys
  end function

  subroutine WeakCrypt_jsetstatic_keys(jvalue)
    type(JString) :: jvalue(:)
    WeakCrypt_jset_keys = .true.
    WeakCrypt_jcell_keys = jvalue
  end subroutine

  function WeakCrypt_jstatic_KEYMAX() result(jresult)
    integer(4) :: jresult
    if (.not. WeakCrypt_jset_KEYMAX) then
      WeakCrypt_jset_KEYMAX = .true.
      WeakCrypt_jcell_KEYMAX = size(WeakCrypt_jstatic_keys(), 1)
    end if
    jresult = WeakCrypt_jcell_KEYMAX
  end function

  subroutine WeakCrypt_jsetstatic_KEYMAX(jvalue)
    integer(4), value :: jvalue
    WeakCrypt_jset_KEYMAX = .true.
    WeakCrypt_jcell_KEYMAX = jvalue
  end subroutine

  recursive function WeakCrypt_jnew_1(j_key) result(this)
    integer(4), value :: j_key
    class(WeakCrypt), pointer :: this
    class(CommonStrings), pointer :: j_commonStrings
    class(KeySpecFactory), pointer :: jtemp1
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
    allocate(this)
    this%jclass = 'WeakCrypt'
    this%f_tsUtil => TsUtil_jm_getInstance_0()
    jtemp1 => KeySpecFactory_jm_getInstance_0()
    this%f_abCrypt => AbCrypt_jnew_1(jtemp1%f_DES)
        continue ! try
            associate (jstaticref1 => WeakCrypt_jstatic_keys())
            call this%f_abCrypt%jm_init_1(jstaticref1((j_key) + 1)%v)
            end associate
  end function

  recursive function WeakCrypt_jm_encrypt_1(this, j_value) result(jresult)
    class(WeakCrypt), target :: this
    character(len=*), intent(in) :: j_value
    character(len=:), allocatable :: jresult
    integer(4), allocatable :: j_crypted(:)
    class(StringUtil), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_crypted = this%f_abCrypt%jm_encrypt_1(this%f_tsUtil%jm_getByteArray_1(j_value))
            jresult = DatabaseEncoder_jm_encode_1(j_crypted)
            return
  end function

  recursive function WeakCrypt_jm_decrypt_1(this, j_value) result(jresult)
    class(WeakCrypt), target :: this
    character(len=*), intent(in) :: j_value
    character(len=:), allocatable :: jresult
    integer(4), allocatable :: j_decrypted(:)
    class(StringUtil), pointer :: jtemp3
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        continue ! try
            j_decrypted = this%f_abCrypt%jm_decrypt_1(DatabaseEncoder_jm_decode_1(j_value))
            jresult = j_decrypted
            return
  end function
end module WeakCrypt_m

