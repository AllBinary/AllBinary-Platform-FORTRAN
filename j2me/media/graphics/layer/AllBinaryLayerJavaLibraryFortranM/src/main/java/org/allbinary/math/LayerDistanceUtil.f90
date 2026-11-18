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
! package org.allbinary.math
module LayerDistanceUtil_m
  use JR_m
  use GPoint_m
  use AllBinaryLayer_m
  use MathUtil_m
  implicit none

  type, extends(JObject) :: LayerDistanceUtil
    class(MathUtil), pointer :: f_mathUtil => null()
  contains
    procedure :: jm_getDistance_2 => LayerDistanceUtil_jm_getDistance_2
    procedure :: jm_getDistance3D_2 => LayerDistanceUtil_jm_getDistance3D_2
    procedure :: jm_getDistanceAt_2 => LayerDistanceUtil_jm_getDistanceAt_2
  end type

  class(LayerDistanceUtil), pointer, save :: LayerDistanceUtil_jcell_instance => null()
  logical, save :: LayerDistanceUtil_jset_instance = .false.

contains

  function LayerDistanceUtil_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(LayerDistanceUtil), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (LayerDistanceUtil)
      jresult => object
    end select
  end function

  function LayerDistanceUtil_jstatic_instance() result(jresult)
    class(LayerDistanceUtil), pointer :: jresult
    if (.not. LayerDistanceUtil_jset_instance) then
      LayerDistanceUtil_jset_instance = .true.
      LayerDistanceUtil_jcell_instance => LayerDistanceUtil_jnew_0()
    end if
    jresult => LayerDistanceUtil_jcell_instance
  end function

  subroutine LayerDistanceUtil_jsetstatic_instance(jvalue)
    class(LayerDistanceUtil), target, optional :: jvalue
    LayerDistanceUtil_jset_instance = .true.
    if (present(jvalue)) then
      LayerDistanceUtil_jcell_instance => jvalue
    else
      LayerDistanceUtil_jcell_instance => null()
    end if
  end subroutine

  function LayerDistanceUtil_jnew_0() result(this)
    class(LayerDistanceUtil), pointer :: this
    allocate(this)
    this%jclass = 'LayerDistanceUtil'
    this%f_mathUtil => MathUtil_jm_getInstance_0()
  end function

  recursive function LayerDistanceUtil_jm_getInstance_0() result(jresult)
    class(LayerDistanceUtil), pointer :: jresult
        jresult => LayerDistanceUtil_jstatic_instance()
        return
  end function

  recursive function LayerDistanceUtil_jm_getDistance_2(this, j_layerInterface, j_layerInterface2) result(jresult)
    class(LayerDistanceUtil), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(AllBinaryLayer), target, optional :: j_layerInterface2
    integer(4) :: jresult
    integer(4) :: j_dx
    integer(4) :: j_dy
        j_dx = (((j_layerInterface%jm_getXP_0() + j_layerInterface%jm_getHalfWidth_0())) - ((j_layerInterface2%jm_getXP_0() + j_layerInterface2%jm_getHalfWidth_0())))
        j_dy = (((j_layerInterface%jm_getYP_0() + j_layerInterface%jm_getHalfHeight_0())) - ((j_layerInterface2%jm_getYP_0() + j_layerInterface2%jm_getHalfHeight_0())))
        jresult = this%f_mathUtil%jm_sqrt_1((((j_dx * j_dx)) + ((j_dy * j_dy))))
        return
  end function

  recursive function LayerDistanceUtil_jm_getDistance3D_2(this, j_layerInterface, j_layerInterface2) result(jresult)
    class(LayerDistanceUtil), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(AllBinaryLayer), target, optional :: j_layerInterface2
    integer(4) :: jresult
    integer(4) :: j_dx
    integer(4) :: j_dy
    integer(4) :: j_dz
        j_dx = (((j_layerInterface%jm_getXP_0() + j_layerInterface%jm_getHalfWidth_0())) - ((j_layerInterface2%jm_getXP_0() + j_layerInterface2%jm_getHalfWidth_0())))
        j_dy = (((j_layerInterface%jm_getYP_0() + j_layerInterface%jm_getHalfHeight_0())) - ((j_layerInterface2%jm_getYP_0() + j_layerInterface2%jm_getHalfHeight_0())))
        j_dz = (((j_layerInterface%jm_getZP_0() + j_layerInterface%jm_getHalfDepth_0())) - ((j_layerInterface2%jm_getZP_0() + j_layerInterface2%jm_getHalfDepth_0())))
        jresult = this%f_mathUtil%jm_sqrt_1(((((j_dx * j_dx)) + ((j_dy * j_dy))) + ((j_dz * j_dz))))
        return
  end function

  recursive function LayerDistanceUtil_jm_getDistanceAt_2(this, j_layerInterface, j_point) result(jresult)
    class(LayerDistanceUtil), target :: this
    class(AllBinaryLayer), target, optional :: j_layerInterface
    class(GPoint), target, optional :: j_point
    integer(4) :: jresult
    integer(4) :: j_dx
    integer(4) :: j_dy
        j_dx = (j_layerInterface%jm_getXP_0() - j_point%jm_getX_0())
        j_dy = (j_layerInterface%jm_getYP_0() - j_point%jm_getY_0())
        jresult = this%f_mathUtil%jm_sqrt_1((((j_dx * j_dx)) + ((j_dy * j_dy))))
        return
  end function
end module LayerDistanceUtil_m

