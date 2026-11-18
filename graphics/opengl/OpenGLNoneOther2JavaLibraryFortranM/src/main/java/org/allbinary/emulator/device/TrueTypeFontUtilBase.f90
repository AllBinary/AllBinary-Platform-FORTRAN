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
! package org.allbinary.emulator.device
module TrueTypeFontUtilBase_m
  use JR_m
  implicit none

  type, extends(JObject) :: TrueTypeFontUtilBase
  contains
    procedure :: jm_getAsTextureSize_1 => TrueTypeFontUtilBase_jm_getAsTextureSize_1
    procedure :: jm_getCellSize_1 => TrueTypeFontUtilBase_jm_getCellSize_1
  end type


contains

  function TrueTypeFontUtilBase_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(TrueTypeFontUtilBase), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (TrueTypeFontUtilBase)
      jresult => object
    end select
  end function

  recursive function TrueTypeFontUtilBase_jnew_1(j_scale) result(this)
    integer(4), value :: j_scale
    class(TrueTypeFontUtilBase), pointer :: this
    allocate(this)
    this%jclass = 'TrueTypeFontUtilBase'
        continue
  end function

  recursive function TrueTypeFontUtilBase_jm_getAsTextureSize_1(this, j_textureSize) result(jresult)
    class(TrueTypeFontUtilBase), target :: this
    integer(4), value :: j_textureSize
    integer(4) :: jresult
        jresult = (-1)
        return
  end function

  recursive function TrueTypeFontUtilBase_jm_getCellSize_1(this, j_cellSize) result(jresult)
    class(TrueTypeFontUtilBase), target :: this
    integer(4), value :: j_cellSize
    integer(4) :: jresult
        jresult = (-1)
        return
  end function
end module TrueTypeFontUtilBase_m

