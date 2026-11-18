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
! package org.allbinary.logic.math.vector
module Vertex_m
  use JR_m
  use BasicDecimal_m
  use StringMaker_m
  use PositionStrings_m
  use CommonSeps_m
  implicit none

  type, extends(JObject) :: Vertex
    class(BasicDecimal), pointer :: f_x => null()
    class(BasicDecimal), pointer :: f_y => null()
    class(BasicDecimal), pointer :: f_z => null()
  contains
    procedure :: jm_toString_0 => Vertex_jm_toString_0
  end type


contains

  function Vertex_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(Vertex), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (Vertex)
      jresult => object
    end select
  end function

  recursive function Vertex_jnew_0() result(this)
    class(Vertex), pointer :: this
    allocate(this)
    this%jclass = 'Vertex'
    this%f_x => BasicDecimal_jnew_1(int(0, 8))
    this%f_y => BasicDecimal_jnew_1(int(0, 8))
    this%f_z => BasicDecimal_jnew_1(int(0, 8))
        continue
  end function

  recursive function Vertex_jm_toString_0(this) result(jresult)
    class(Vertex), target :: this
    character(len=:), allocatable :: jresult
    class(StringMaker), pointer :: j_stringBuffer
    class(PositionStrings), pointer :: j_positionStrings
    class(CommonSeps), pointer :: jtemp1
    class(CommonSeps), pointer :: jtemp2
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_stringBuffer => StringMaker_jnew_0()
        j_positionStrings => PositionStrings_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(j_positionStrings%f_X_LABEL)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_x%jm_toString_0())
        jtemp1 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp1%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_positionStrings%f_Y_LABEL)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_y%jm_toString_0())
        jtemp2 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp2%f_SPACE)
        jdiscardRef => j_stringBuffer%jm_append_1(j_positionStrings%f_Z_LABEL)
        jdiscardRef => j_stringBuffer%jm_append_1(this%f_z%jm_toString_0())
        jresult = j_stringBuffer%jm_toString_0()
        return
  end function
end module Vertex_m

