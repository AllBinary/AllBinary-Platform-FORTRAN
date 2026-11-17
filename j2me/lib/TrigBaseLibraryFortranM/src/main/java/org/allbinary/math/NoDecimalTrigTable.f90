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
module NoDecimalTrigTable_m
  use JR_m
  use PreLogUtil_m
  use MathUtil_m
  use StringMaker_m
  use CommonLabels_m
  use CommonSeps_m
  use Integer_m
  use AngleFactory_m
  use PositionStrings_m
  use Angle_m
  implicit none

  type, extends(JObject) :: NoDecimalTrigTable
    class(MathUtil), pointer :: f_mathUtil => null()
    integer(8), allocatable :: f_noDecimalSin(:)
    integer(8), allocatable :: f_noDecimalCos(:)
    integer(8), allocatable :: f_noDecimalTan(:)
    integer(4) :: f_SCALE = 0
  contains
    procedure :: jm_sin_1 => NoDecimalTrigTable_jm_sin_1
    procedure :: jm_cos_1 => NoDecimalTrigTable_jm_cos_1
    procedure :: jm_tan_1 => NoDecimalTrigTable_jm_tan_1
    procedure :: jm_antiTan_2 => NoDecimalTrigTable_jm_antiTan_2
    procedure :: jm_antiTanDebug_4 => NoDecimalTrigTable_jm_antiTanDebug_4
  end type

  class(NoDecimalTrigTable), pointer, save :: NoDecimalTrigTable_jcell_instance => null()
  logical, save :: NoDecimalTrigTable_jset_instance = .false.

contains

  function NoDecimalTrigTable_jcast(object) result(jresult)
    class(JObject), pointer, intent(in) :: object
    class(NoDecimalTrigTable), pointer :: jresult
    jresult => null()
    if (.not. associated(object)) return
    select type (object)
    class is (NoDecimalTrigTable)
      jresult => object
    end select
  end function

  function NoDecimalTrigTable_jstatic_instance() result(jresult)
    class(NoDecimalTrigTable), pointer :: jresult
    if (.not. NoDecimalTrigTable_jset_instance) then
      NoDecimalTrigTable_jset_instance = .true.
      NoDecimalTrigTable_jcell_instance => NoDecimalTrigTable_jnew_0()
    end if
    jresult => NoDecimalTrigTable_jcell_instance
  end function

  recursive function NoDecimalTrigTable_jnew_0() result(this)
    class(NoDecimalTrigTable), pointer :: this
    integer(4) :: j_TOTAL_ANGLE
    integer(8) :: j_MAX_VALUE
    class(AngleFactory), pointer :: jtemp1
    allocate(this)
    this%jclass = 'NoDecimalTrigTable'
    this%f_mathUtil => MathUtil_jm_getInstance_0()
    
    
    
    this%f_SCALE = 10000
        jtemp1 => AngleFactory_jm_getInstance_0()
        j_TOTAL_ANGLE = jtemp1%f_TOTAL_ANGLE
        j_MAX_VALUE = (int(Integer_jstatic_MAX_VALUE(), 8))
        this%f_noDecimalSin = JR_newLongArray(j_TOTAL_ANGLE)
        this%f_noDecimalCos = JR_newLongArray(j_TOTAL_ANGLE)
        this%f_noDecimalTan = JR_newLongArray((j_TOTAL_ANGLE + 1))
        this%f_noDecimalSin((0) + 1) = 0_8
        this%f_noDecimalSin((1) + 1) = 174_8
        this%f_noDecimalSin((2) + 1) = 348_8
        this%f_noDecimalSin((3) + 1) = 523_8
        this%f_noDecimalSin((4) + 1) = 697_8
        this%f_noDecimalSin((5) + 1) = 871_8
        this%f_noDecimalSin((6) + 1) = 1045_8
        this%f_noDecimalSin((7) + 1) = 1218_8
        this%f_noDecimalSin((8) + 1) = 1391_8
        this%f_noDecimalSin((9) + 1) = 1564_8
        this%f_noDecimalSin((10) + 1) = 1736_8
        this%f_noDecimalSin((11) + 1) = 1908_8
        this%f_noDecimalSin((12) + 1) = 2079_8
        this%f_noDecimalSin((13) + 1) = 2249_8
        this%f_noDecimalSin((14) + 1) = 2419_8
        this%f_noDecimalSin((15) + 1) = 2588_8
        this%f_noDecimalSin((16) + 1) = 2756_8
        this%f_noDecimalSin((17) + 1) = 2923_8
        this%f_noDecimalSin((18) + 1) = 3090_8
        this%f_noDecimalSin((19) + 1) = 3255_8
        this%f_noDecimalSin((20) + 1) = 3420_8
        this%f_noDecimalSin((21) + 1) = 3583_8
        this%f_noDecimalSin((22) + 1) = 3746_8
        this%f_noDecimalSin((23) + 1) = 3907_8
        this%f_noDecimalSin((24) + 1) = 4067_8
        this%f_noDecimalSin((25) + 1) = 4226_8
        this%f_noDecimalSin((26) + 1) = 4383_8
        this%f_noDecimalSin((27) + 1) = 4539_8
        this%f_noDecimalSin((28) + 1) = 4694_8
        this%f_noDecimalSin((29) + 1) = 4848_8
        this%f_noDecimalSin((30) + 1) = 4999_8
        this%f_noDecimalSin((31) + 1) = 5150_8
        this%f_noDecimalSin((32) + 1) = 5299_8
        this%f_noDecimalSin((33) + 1) = 5446_8
        this%f_noDecimalSin((34) + 1) = 5591_8
        this%f_noDecimalSin((35) + 1) = 5735_8
        this%f_noDecimalSin((36) + 1) = 5877_8
        this%f_noDecimalSin((37) + 1) = 6018_8
        this%f_noDecimalSin((38) + 1) = 6156_8
        this%f_noDecimalSin((39) + 1) = 6293_8
        this%f_noDecimalSin((40) + 1) = 6427_8
        this%f_noDecimalSin((41) + 1) = 6560_8
        this%f_noDecimalSin((42) + 1) = 6691_8
        this%f_noDecimalSin((43) + 1) = 6819_8
        this%f_noDecimalSin((44) + 1) = 6946_8
        this%f_noDecimalSin((45) + 1) = 7071_8
        this%f_noDecimalSin((46) + 1) = 7193_8
        this%f_noDecimalSin((47) + 1) = 7313_8
        this%f_noDecimalSin((48) + 1) = 7431_8
        this%f_noDecimalSin((49) + 1) = 7547_8
        this%f_noDecimalSin((50) + 1) = 7660_8
        this%f_noDecimalSin((51) + 1) = 7771_8
        this%f_noDecimalSin((52) + 1) = 7880_8
        this%f_noDecimalSin((53) + 1) = 7986_8
        this%f_noDecimalSin((54) + 1) = 8090_8
        this%f_noDecimalSin((55) + 1) = 8191_8
        this%f_noDecimalSin((56) + 1) = 8290_8
        this%f_noDecimalSin((57) + 1) = 8386_8
        this%f_noDecimalSin((58) + 1) = 8480_8
        this%f_noDecimalSin((59) + 1) = 8571_8
        this%f_noDecimalSin((60) + 1) = 8660_8
        this%f_noDecimalSin((61) + 1) = 8746_8
        this%f_noDecimalSin((62) + 1) = 8829_8
        this%f_noDecimalSin((63) + 1) = 8910_8
        this%f_noDecimalSin((64) + 1) = 8987_8
        this%f_noDecimalSin((65) + 1) = 9063_8
        this%f_noDecimalSin((66) + 1) = 9135_8
        this%f_noDecimalSin((67) + 1) = 9205_8
        this%f_noDecimalSin((68) + 1) = 9271_8
        this%f_noDecimalSin((69) + 1) = 9335_8
        this%f_noDecimalSin((70) + 1) = 9396_8
        this%f_noDecimalSin((71) + 1) = 9455_8
        this%f_noDecimalSin((72) + 1) = 9510_8
        this%f_noDecimalSin((73) + 1) = 9563_8
        this%f_noDecimalSin((74) + 1) = 9612_8
        this%f_noDecimalSin((75) + 1) = 9659_8
        this%f_noDecimalSin((76) + 1) = 9702_8
        this%f_noDecimalSin((77) + 1) = 9743_8
        this%f_noDecimalSin((78) + 1) = 9781_8
        this%f_noDecimalSin((79) + 1) = 9816_8
        this%f_noDecimalSin((80) + 1) = 9848_8
        this%f_noDecimalSin((81) + 1) = 9876_8
        this%f_noDecimalSin((82) + 1) = 9902_8
        this%f_noDecimalSin((83) + 1) = 9925_8
        this%f_noDecimalSin((84) + 1) = 9945_8
        this%f_noDecimalSin((85) + 1) = 9961_8
        this%f_noDecimalSin((86) + 1) = 9975_8
        this%f_noDecimalSin((87) + 1) = 9986_8
        this%f_noDecimalSin((88) + 1) = 9993_8
        this%f_noDecimalSin((89) + 1) = 9998_8
        this%f_noDecimalSin((90) + 1) = 10000_8
        this%f_noDecimalSin((91) + 1) = 9998_8
        this%f_noDecimalSin((92) + 1) = 9993_8
        this%f_noDecimalSin((93) + 1) = 9986_8
        this%f_noDecimalSin((94) + 1) = 9975_8
        this%f_noDecimalSin((95) + 1) = 9961_8
        this%f_noDecimalSin((96) + 1) = 9945_8
        this%f_noDecimalSin((97) + 1) = 9925_8
        this%f_noDecimalSin((98) + 1) = 9902_8
        this%f_noDecimalSin((99) + 1) = 9876_8
        this%f_noDecimalSin((100) + 1) = 9848_8
        this%f_noDecimalSin((101) + 1) = 9816_8
        this%f_noDecimalSin((102) + 1) = 9781_8
        this%f_noDecimalSin((103) + 1) = 9743_8
        this%f_noDecimalSin((104) + 1) = 9702_8
        this%f_noDecimalSin((105) + 1) = 9659_8
        this%f_noDecimalSin((106) + 1) = 9612_8
        this%f_noDecimalSin((107) + 1) = 9563_8
        this%f_noDecimalSin((108) + 1) = 9510_8
        this%f_noDecimalSin((109) + 1) = 9455_8
        this%f_noDecimalSin((110) + 1) = 9396_8
        this%f_noDecimalSin((111) + 1) = 9335_8
        this%f_noDecimalSin((112) + 1) = 9271_8
        this%f_noDecimalSin((113) + 1) = 9205_8
        this%f_noDecimalSin((114) + 1) = 9135_8
        this%f_noDecimalSin((115) + 1) = 9063_8
        this%f_noDecimalSin((116) + 1) = 8987_8
        this%f_noDecimalSin((117) + 1) = 8910_8
        this%f_noDecimalSin((118) + 1) = 8829_8
        this%f_noDecimalSin((119) + 1) = 8746_8
        this%f_noDecimalSin((120) + 1) = 8660_8
        this%f_noDecimalSin((121) + 1) = 8571_8
        this%f_noDecimalSin((122) + 1) = 8480_8
        this%f_noDecimalSin((123) + 1) = 8386_8
        this%f_noDecimalSin((124) + 1) = 8290_8
        this%f_noDecimalSin((125) + 1) = 8191_8
        this%f_noDecimalSin((126) + 1) = 8090_8
        this%f_noDecimalSin((127) + 1) = 7986_8
        this%f_noDecimalSin((128) + 1) = 7880_8
        this%f_noDecimalSin((129) + 1) = 7771_8
        this%f_noDecimalSin((130) + 1) = 7660_8
        this%f_noDecimalSin((131) + 1) = 7547_8
        this%f_noDecimalSin((132) + 1) = 7431_8
        this%f_noDecimalSin((133) + 1) = 7313_8
        this%f_noDecimalSin((134) + 1) = 7193_8
        this%f_noDecimalSin((135) + 1) = 7071_8
        this%f_noDecimalSin((136) + 1) = 6946_8
        this%f_noDecimalSin((137) + 1) = 6819_8
        this%f_noDecimalSin((138) + 1) = 6691_8
        this%f_noDecimalSin((139) + 1) = 6560_8
        this%f_noDecimalSin((140) + 1) = 6427_8
        this%f_noDecimalSin((141) + 1) = 6293_8
        this%f_noDecimalSin((142) + 1) = 6156_8
        this%f_noDecimalSin((143) + 1) = 6018_8
        this%f_noDecimalSin((144) + 1) = 5877_8
        this%f_noDecimalSin((145) + 1) = 5735_8
        this%f_noDecimalSin((146) + 1) = 5591_8
        this%f_noDecimalSin((147) + 1) = 5446_8
        this%f_noDecimalSin((148) + 1) = 5299_8
        this%f_noDecimalSin((149) + 1) = 5150_8
        this%f_noDecimalSin((150) + 1) = 4999_8
        this%f_noDecimalSin((151) + 1) = 4848_8
        this%f_noDecimalSin((152) + 1) = 4694_8
        this%f_noDecimalSin((153) + 1) = 4539_8
        this%f_noDecimalSin((154) + 1) = 4383_8
        this%f_noDecimalSin((155) + 1) = 4226_8
        this%f_noDecimalSin((156) + 1) = 4067_8
        this%f_noDecimalSin((157) + 1) = 3907_8
        this%f_noDecimalSin((158) + 1) = 3746_8
        this%f_noDecimalSin((159) + 1) = 3583_8
        this%f_noDecimalSin((160) + 1) = 3420_8
        this%f_noDecimalSin((161) + 1) = 3255_8
        this%f_noDecimalSin((162) + 1) = 3090_8
        this%f_noDecimalSin((163) + 1) = 2923_8
        this%f_noDecimalSin((164) + 1) = 2756_8
        this%f_noDecimalSin((165) + 1) = 2588_8
        this%f_noDecimalSin((166) + 1) = 2419_8
        this%f_noDecimalSin((167) + 1) = 2249_8
        this%f_noDecimalSin((168) + 1) = 2079_8
        this%f_noDecimalSin((169) + 1) = 1908_8
        this%f_noDecimalSin((170) + 1) = 1736_8
        this%f_noDecimalSin((171) + 1) = 1564_8
        this%f_noDecimalSin((172) + 1) = 1391_8
        this%f_noDecimalSin((173) + 1) = 1218_8
        this%f_noDecimalSin((174) + 1) = 1045_8
        this%f_noDecimalSin((175) + 1) = 871_8
        this%f_noDecimalSin((176) + 1) = 697_8
        this%f_noDecimalSin((177) + 1) = 523_8
        this%f_noDecimalSin((178) + 1) = 348_8
        this%f_noDecimalSin((179) + 1) = 174_8
        this%f_noDecimalSin((180) + 1) = 0_8
        this%f_noDecimalSin((181) + 1) = int((-174), 8)
        this%f_noDecimalSin((182) + 1) = int((-348), 8)
        this%f_noDecimalSin((183) + 1) = int((-523), 8)
        this%f_noDecimalSin((184) + 1) = int((-697), 8)
        this%f_noDecimalSin((185) + 1) = int((-871), 8)
        this%f_noDecimalSin((186) + 1) = int((-1045), 8)
        this%f_noDecimalSin((187) + 1) = int((-1218), 8)
        this%f_noDecimalSin((188) + 1) = int((-1391), 8)
        this%f_noDecimalSin((189) + 1) = int((-1564), 8)
        this%f_noDecimalSin((190) + 1) = int((-1736), 8)
        this%f_noDecimalSin((191) + 1) = int((-1908), 8)
        this%f_noDecimalSin((192) + 1) = int((-2079), 8)
        this%f_noDecimalSin((193) + 1) = int((-2249), 8)
        this%f_noDecimalSin((194) + 1) = int((-2419), 8)
        this%f_noDecimalSin((195) + 1) = int((-2588), 8)
        this%f_noDecimalSin((196) + 1) = int((-2756), 8)
        this%f_noDecimalSin((197) + 1) = int((-2923), 8)
        this%f_noDecimalSin((198) + 1) = int((-3090), 8)
        this%f_noDecimalSin((199) + 1) = int((-3255), 8)
        this%f_noDecimalSin((200) + 1) = int((-3420), 8)
        this%f_noDecimalSin((201) + 1) = int((-3583), 8)
        this%f_noDecimalSin((202) + 1) = int((-3746), 8)
        this%f_noDecimalSin((203) + 1) = int((-3907), 8)
        this%f_noDecimalSin((204) + 1) = int((-4067), 8)
        this%f_noDecimalSin((205) + 1) = int((-4226), 8)
        this%f_noDecimalSin((206) + 1) = int((-4383), 8)
        this%f_noDecimalSin((207) + 1) = int((-4539), 8)
        this%f_noDecimalSin((208) + 1) = int((-4694), 8)
        this%f_noDecimalSin((209) + 1) = int((-4848), 8)
        this%f_noDecimalSin((210) + 1) = int((-5000), 8)
        this%f_noDecimalSin((211) + 1) = int((-5150), 8)
        this%f_noDecimalSin((212) + 1) = int((-5299), 8)
        this%f_noDecimalSin((213) + 1) = int((-5446), 8)
        this%f_noDecimalSin((214) + 1) = int((-5591), 8)
        this%f_noDecimalSin((215) + 1) = int((-5735), 8)
        this%f_noDecimalSin((216) + 1) = int((-5877), 8)
        this%f_noDecimalSin((217) + 1) = int((-6018), 8)
        this%f_noDecimalSin((218) + 1) = int((-6156), 8)
        this%f_noDecimalSin((219) + 1) = int((-6293), 8)
        this%f_noDecimalSin((220) + 1) = int((-6427), 8)
        this%f_noDecimalSin((221) + 1) = int((-6560), 8)
        this%f_noDecimalSin((222) + 1) = int((-6691), 8)
        this%f_noDecimalSin((223) + 1) = int((-6819), 8)
        this%f_noDecimalSin((224) + 1) = int((-6946), 8)
        this%f_noDecimalSin((225) + 1) = int((-7071), 8)
        this%f_noDecimalSin((226) + 1) = int((-7193), 8)
        this%f_noDecimalSin((227) + 1) = int((-7313), 8)
        this%f_noDecimalSin((228) + 1) = int((-7431), 8)
        this%f_noDecimalSin((229) + 1) = int((-7547), 8)
        this%f_noDecimalSin((230) + 1) = int((-7660), 8)
        this%f_noDecimalSin((231) + 1) = int((-7771), 8)
        this%f_noDecimalSin((232) + 1) = int((-7880), 8)
        this%f_noDecimalSin((233) + 1) = int((-7986), 8)
        this%f_noDecimalSin((234) + 1) = int((-8090), 8)
        this%f_noDecimalSin((235) + 1) = int((-8191), 8)
        this%f_noDecimalSin((236) + 1) = int((-8290), 8)
        this%f_noDecimalSin((237) + 1) = int((-8386), 8)
        this%f_noDecimalSin((238) + 1) = int((-8480), 8)
        this%f_noDecimalSin((239) + 1) = int((-8571), 8)
        this%f_noDecimalSin((240) + 1) = int((-8660), 8)
        this%f_noDecimalSin((241) + 1) = int((-8746), 8)
        this%f_noDecimalSin((242) + 1) = int((-8829), 8)
        this%f_noDecimalSin((243) + 1) = int((-8910), 8)
        this%f_noDecimalSin((244) + 1) = int((-8987), 8)
        this%f_noDecimalSin((245) + 1) = int((-9063), 8)
        this%f_noDecimalSin((246) + 1) = int((-9135), 8)
        this%f_noDecimalSin((247) + 1) = int((-9205), 8)
        this%f_noDecimalSin((248) + 1) = int((-9271), 8)
        this%f_noDecimalSin((249) + 1) = int((-9335), 8)
        this%f_noDecimalSin((250) + 1) = int((-9396), 8)
        this%f_noDecimalSin((251) + 1) = int((-9455), 8)
        this%f_noDecimalSin((252) + 1) = int((-9510), 8)
        this%f_noDecimalSin((253) + 1) = int((-9563), 8)
        this%f_noDecimalSin((254) + 1) = int((-9612), 8)
        this%f_noDecimalSin((255) + 1) = int((-9659), 8)
        this%f_noDecimalSin((256) + 1) = int((-9702), 8)
        this%f_noDecimalSin((257) + 1) = int((-9743), 8)
        this%f_noDecimalSin((258) + 1) = int((-9781), 8)
        this%f_noDecimalSin((259) + 1) = int((-9816), 8)
        this%f_noDecimalSin((260) + 1) = int((-9848), 8)
        this%f_noDecimalSin((261) + 1) = int((-9876), 8)
        this%f_noDecimalSin((262) + 1) = int((-9902), 8)
        this%f_noDecimalSin((263) + 1) = int((-9925), 8)
        this%f_noDecimalSin((264) + 1) = int((-9945), 8)
        this%f_noDecimalSin((265) + 1) = int((-9961), 8)
        this%f_noDecimalSin((266) + 1) = int((-9975), 8)
        this%f_noDecimalSin((267) + 1) = int((-9986), 8)
        this%f_noDecimalSin((268) + 1) = int((-9993), 8)
        this%f_noDecimalSin((269) + 1) = int((-9998), 8)
        this%f_noDecimalSin((270) + 1) = int((-10000), 8)
        this%f_noDecimalSin((271) + 1) = int((-9998), 8)
        this%f_noDecimalSin((272) + 1) = int((-9993), 8)
        this%f_noDecimalSin((273) + 1) = int((-9986), 8)
        this%f_noDecimalSin((274) + 1) = int((-9975), 8)
        this%f_noDecimalSin((275) + 1) = int((-9961), 8)
        this%f_noDecimalSin((276) + 1) = int((-9945), 8)
        this%f_noDecimalSin((277) + 1) = int((-9925), 8)
        this%f_noDecimalSin((278) + 1) = int((-9902), 8)
        this%f_noDecimalSin((279) + 1) = int((-9876), 8)
        this%f_noDecimalSin((280) + 1) = int((-9848), 8)
        this%f_noDecimalSin((281) + 1) = int((-9816), 8)
        this%f_noDecimalSin((282) + 1) = int((-9781), 8)
        this%f_noDecimalSin((283) + 1) = int((-9743), 8)
        this%f_noDecimalSin((284) + 1) = int((-9702), 8)
        this%f_noDecimalSin((285) + 1) = int((-9659), 8)
        this%f_noDecimalSin((286) + 1) = int((-9612), 8)
        this%f_noDecimalSin((287) + 1) = int((-9563), 8)
        this%f_noDecimalSin((288) + 1) = int((-9510), 8)
        this%f_noDecimalSin((289) + 1) = int((-9455), 8)
        this%f_noDecimalSin((290) + 1) = int((-9396), 8)
        this%f_noDecimalSin((291) + 1) = int((-9335), 8)
        this%f_noDecimalSin((292) + 1) = int((-9271), 8)
        this%f_noDecimalSin((293) + 1) = int((-9205), 8)
        this%f_noDecimalSin((294) + 1) = int((-9135), 8)
        this%f_noDecimalSin((295) + 1) = int((-9063), 8)
        this%f_noDecimalSin((296) + 1) = int((-8987), 8)
        this%f_noDecimalSin((297) + 1) = int((-8910), 8)
        this%f_noDecimalSin((298) + 1) = int((-8829), 8)
        this%f_noDecimalSin((299) + 1) = int((-8746), 8)
        this%f_noDecimalSin((300) + 1) = int((-8660), 8)
        this%f_noDecimalSin((301) + 1) = int((-8571), 8)
        this%f_noDecimalSin((302) + 1) = int((-8480), 8)
        this%f_noDecimalSin((303) + 1) = int((-8386), 8)
        this%f_noDecimalSin((304) + 1) = int((-8290), 8)
        this%f_noDecimalSin((305) + 1) = int((-8191), 8)
        this%f_noDecimalSin((306) + 1) = int((-8090), 8)
        this%f_noDecimalSin((307) + 1) = int((-7986), 8)
        this%f_noDecimalSin((308) + 1) = int((-7880), 8)
        this%f_noDecimalSin((309) + 1) = int((-7771), 8)
        this%f_noDecimalSin((310) + 1) = int((-7660), 8)
        this%f_noDecimalSin((311) + 1) = int((-7547), 8)
        this%f_noDecimalSin((312) + 1) = int((-7431), 8)
        this%f_noDecimalSin((313) + 1) = int((-7313), 8)
        this%f_noDecimalSin((314) + 1) = int((-7193), 8)
        this%f_noDecimalSin((315) + 1) = int((-7071), 8)
        this%f_noDecimalSin((316) + 1) = int((-6946), 8)
        this%f_noDecimalSin((317) + 1) = int((-6819), 8)
        this%f_noDecimalSin((318) + 1) = int((-6691), 8)
        this%f_noDecimalSin((319) + 1) = int((-6560), 8)
        this%f_noDecimalSin((320) + 1) = int((-6427), 8)
        this%f_noDecimalSin((321) + 1) = int((-6293), 8)
        this%f_noDecimalSin((322) + 1) = int((-6156), 8)
        this%f_noDecimalSin((323) + 1) = int((-6018), 8)
        this%f_noDecimalSin((324) + 1) = int((-5877), 8)
        this%f_noDecimalSin((325) + 1) = int((-5735), 8)
        this%f_noDecimalSin((326) + 1) = int((-5591), 8)
        this%f_noDecimalSin((327) + 1) = int((-5446), 8)
        this%f_noDecimalSin((328) + 1) = int((-5299), 8)
        this%f_noDecimalSin((329) + 1) = int((-5150), 8)
        this%f_noDecimalSin((330) + 1) = int((-5000), 8)
        this%f_noDecimalSin((331) + 1) = int((-4848), 8)
        this%f_noDecimalSin((332) + 1) = int((-4694), 8)
        this%f_noDecimalSin((333) + 1) = int((-4539), 8)
        this%f_noDecimalSin((334) + 1) = int((-4383), 8)
        this%f_noDecimalSin((335) + 1) = int((-4226), 8)
        this%f_noDecimalSin((336) + 1) = int((-4067), 8)
        this%f_noDecimalSin((337) + 1) = int((-3907), 8)
        this%f_noDecimalSin((338) + 1) = int((-3746), 8)
        this%f_noDecimalSin((339) + 1) = int((-3583), 8)
        this%f_noDecimalSin((340) + 1) = int((-3420), 8)
        this%f_noDecimalSin((341) + 1) = int((-3255), 8)
        this%f_noDecimalSin((342) + 1) = int((-3090), 8)
        this%f_noDecimalSin((343) + 1) = int((-2923), 8)
        this%f_noDecimalSin((344) + 1) = int((-2756), 8)
        this%f_noDecimalSin((345) + 1) = int((-2588), 8)
        this%f_noDecimalSin((346) + 1) = int((-2419), 8)
        this%f_noDecimalSin((347) + 1) = int((-2249), 8)
        this%f_noDecimalSin((348) + 1) = int((-2079), 8)
        this%f_noDecimalSin((349) + 1) = int((-1908), 8)
        this%f_noDecimalSin((350) + 1) = int((-1736), 8)
        this%f_noDecimalSin((351) + 1) = int((-1564), 8)
        this%f_noDecimalSin((352) + 1) = int((-1391), 8)
        this%f_noDecimalSin((353) + 1) = int((-1218), 8)
        this%f_noDecimalSin((354) + 1) = int((-1045), 8)
        this%f_noDecimalSin((355) + 1) = int((-871), 8)
        this%f_noDecimalSin((356) + 1) = int((-697), 8)
        this%f_noDecimalSin((357) + 1) = int((-523), 8)
        this%f_noDecimalSin((358) + 1) = int((-348), 8)
        this%f_noDecimalSin((359) + 1) = int((-174), 8)
        this%f_noDecimalCos((0) + 1) = 10000_8
        this%f_noDecimalCos((1) + 1) = 9998_8
        this%f_noDecimalCos((2) + 1) = 9993_8
        this%f_noDecimalCos((3) + 1) = 9986_8
        this%f_noDecimalCos((4) + 1) = 9975_8
        this%f_noDecimalCos((5) + 1) = 9961_8
        this%f_noDecimalCos((6) + 1) = 9945_8
        this%f_noDecimalCos((7) + 1) = 9925_8
        this%f_noDecimalCos((8) + 1) = 9902_8
        this%f_noDecimalCos((9) + 1) = 9876_8
        this%f_noDecimalCos((10) + 1) = 9848_8
        this%f_noDecimalCos((11) + 1) = 9816_8
        this%f_noDecimalCos((12) + 1) = 9781_8
        this%f_noDecimalCos((13) + 1) = 9743_8
        this%f_noDecimalCos((14) + 1) = 9702_8
        this%f_noDecimalCos((15) + 1) = 9659_8
        this%f_noDecimalCos((16) + 1) = 9612_8
        this%f_noDecimalCos((17) + 1) = 9563_8
        this%f_noDecimalCos((18) + 1) = 9510_8
        this%f_noDecimalCos((19) + 1) = 9455_8
        this%f_noDecimalCos((20) + 1) = 9396_8
        this%f_noDecimalCos((21) + 1) = 9335_8
        this%f_noDecimalCos((22) + 1) = 9271_8
        this%f_noDecimalCos((23) + 1) = 9205_8
        this%f_noDecimalCos((24) + 1) = 9135_8
        this%f_noDecimalCos((25) + 1) = 9063_8
        this%f_noDecimalCos((26) + 1) = 8987_8
        this%f_noDecimalCos((27) + 1) = 8910_8
        this%f_noDecimalCos((28) + 1) = 8829_8
        this%f_noDecimalCos((29) + 1) = 8746_8
        this%f_noDecimalCos((30) + 1) = 8660_8
        this%f_noDecimalCos((31) + 1) = 8571_8
        this%f_noDecimalCos((32) + 1) = 8480_8
        this%f_noDecimalCos((33) + 1) = 8386_8
        this%f_noDecimalCos((34) + 1) = 8290_8
        this%f_noDecimalCos((35) + 1) = 8191_8
        this%f_noDecimalCos((36) + 1) = 8090_8
        this%f_noDecimalCos((37) + 1) = 7986_8
        this%f_noDecimalCos((38) + 1) = 7880_8
        this%f_noDecimalCos((39) + 1) = 7771_8
        this%f_noDecimalCos((40) + 1) = 7660_8
        this%f_noDecimalCos((41) + 1) = 7547_8
        this%f_noDecimalCos((42) + 1) = 7431_8
        this%f_noDecimalCos((43) + 1) = 7313_8
        this%f_noDecimalCos((44) + 1) = 7193_8
        this%f_noDecimalCos((45) + 1) = 7071_8
        this%f_noDecimalCos((46) + 1) = 6946_8
        this%f_noDecimalCos((47) + 1) = 6819_8
        this%f_noDecimalCos((48) + 1) = 6691_8
        this%f_noDecimalCos((49) + 1) = 6560_8
        this%f_noDecimalCos((50) + 1) = 6427_8
        this%f_noDecimalCos((51) + 1) = 6293_8
        this%f_noDecimalCos((52) + 1) = 6156_8
        this%f_noDecimalCos((53) + 1) = 6018_8
        this%f_noDecimalCos((54) + 1) = 5877_8
        this%f_noDecimalCos((55) + 1) = 5735_8
        this%f_noDecimalCos((56) + 1) = 5591_8
        this%f_noDecimalCos((57) + 1) = 5446_8
        this%f_noDecimalCos((58) + 1) = 5299_8
        this%f_noDecimalCos((59) + 1) = 5150_8
        this%f_noDecimalCos((60) + 1) = 5000_8
        this%f_noDecimalCos((61) + 1) = 4848_8
        this%f_noDecimalCos((62) + 1) = 4694_8
        this%f_noDecimalCos((63) + 1) = 4539_8
        this%f_noDecimalCos((64) + 1) = 4383_8
        this%f_noDecimalCos((65) + 1) = 4226_8
        this%f_noDecimalCos((66) + 1) = 4067_8
        this%f_noDecimalCos((67) + 1) = 3907_8
        this%f_noDecimalCos((68) + 1) = 3746_8
        this%f_noDecimalCos((69) + 1) = 3583_8
        this%f_noDecimalCos((70) + 1) = 3420_8
        this%f_noDecimalCos((71) + 1) = 3255_8
        this%f_noDecimalCos((72) + 1) = 3090_8
        this%f_noDecimalCos((73) + 1) = 2923_8
        this%f_noDecimalCos((74) + 1) = 2756_8
        this%f_noDecimalCos((75) + 1) = 2588_8
        this%f_noDecimalCos((76) + 1) = 2419_8
        this%f_noDecimalCos((77) + 1) = 2249_8
        this%f_noDecimalCos((78) + 1) = 2079_8
        this%f_noDecimalCos((79) + 1) = 1908_8
        this%f_noDecimalCos((80) + 1) = 1736_8
        this%f_noDecimalCos((81) + 1) = 1564_8
        this%f_noDecimalCos((82) + 1) = 1391_8
        this%f_noDecimalCos((83) + 1) = 1218_8
        this%f_noDecimalCos((84) + 1) = 1045_8
        this%f_noDecimalCos((85) + 1) = 871_8
        this%f_noDecimalCos((86) + 1) = 697_8
        this%f_noDecimalCos((87) + 1) = 523_8
        this%f_noDecimalCos((88) + 1) = 348_8
        this%f_noDecimalCos((89) + 1) = 174_8
        this%f_noDecimalCos((90) + 1) = 0_8
        this%f_noDecimalCos((91) + 1) = int((-174), 8)
        this%f_noDecimalCos((92) + 1) = int((-348), 8)
        this%f_noDecimalCos((93) + 1) = int((-523), 8)
        this%f_noDecimalCos((94) + 1) = int((-697), 8)
        this%f_noDecimalCos((95) + 1) = int((-871), 8)
        this%f_noDecimalCos((96) + 1) = int((-1045), 8)
        this%f_noDecimalCos((97) + 1) = int((-1218), 8)
        this%f_noDecimalCos((98) + 1) = int((-1391), 8)
        this%f_noDecimalCos((99) + 1) = int((-1564), 8)
        this%f_noDecimalCos((100) + 1) = int((-1736), 8)
        this%f_noDecimalCos((101) + 1) = int((-1908), 8)
        this%f_noDecimalCos((102) + 1) = int((-2079), 8)
        this%f_noDecimalCos((103) + 1) = int((-2249), 8)
        this%f_noDecimalCos((104) + 1) = int((-2419), 8)
        this%f_noDecimalCos((105) + 1) = int((-2588), 8)
        this%f_noDecimalCos((106) + 1) = int((-2756), 8)
        this%f_noDecimalCos((107) + 1) = int((-2923), 8)
        this%f_noDecimalCos((108) + 1) = int((-3090), 8)
        this%f_noDecimalCos((109) + 1) = int((-3255), 8)
        this%f_noDecimalCos((110) + 1) = int((-3420), 8)
        this%f_noDecimalCos((111) + 1) = int((-3583), 8)
        this%f_noDecimalCos((112) + 1) = int((-3746), 8)
        this%f_noDecimalCos((113) + 1) = int((-3907), 8)
        this%f_noDecimalCos((114) + 1) = int((-4067), 8)
        this%f_noDecimalCos((115) + 1) = int((-4226), 8)
        this%f_noDecimalCos((116) + 1) = int((-4383), 8)
        this%f_noDecimalCos((117) + 1) = int((-4539), 8)
        this%f_noDecimalCos((118) + 1) = int((-4694), 8)
        this%f_noDecimalCos((119) + 1) = int((-4848), 8)
        this%f_noDecimalCos((120) + 1) = int((-4999), 8)
        this%f_noDecimalCos((121) + 1) = int((-5150), 8)
        this%f_noDecimalCos((122) + 1) = int((-5299), 8)
        this%f_noDecimalCos((123) + 1) = int((-5446), 8)
        this%f_noDecimalCos((124) + 1) = int((-5591), 8)
        this%f_noDecimalCos((125) + 1) = int((-5735), 8)
        this%f_noDecimalCos((126) + 1) = int((-5877), 8)
        this%f_noDecimalCos((127) + 1) = int((-6018), 8)
        this%f_noDecimalCos((128) + 1) = int((-6156), 8)
        this%f_noDecimalCos((129) + 1) = int((-6293), 8)
        this%f_noDecimalCos((130) + 1) = int((-6427), 8)
        this%f_noDecimalCos((131) + 1) = int((-6560), 8)
        this%f_noDecimalCos((132) + 1) = int((-6691), 8)
        this%f_noDecimalCos((133) + 1) = int((-6819), 8)
        this%f_noDecimalCos((134) + 1) = int((-6946), 8)
        this%f_noDecimalCos((135) + 1) = int((-7071), 8)
        this%f_noDecimalCos((136) + 1) = int((-7193), 8)
        this%f_noDecimalCos((137) + 1) = int((-7313), 8)
        this%f_noDecimalCos((138) + 1) = int((-7431), 8)
        this%f_noDecimalCos((139) + 1) = int((-7547), 8)
        this%f_noDecimalCos((140) + 1) = int((-7660), 8)
        this%f_noDecimalCos((141) + 1) = int((-7771), 8)
        this%f_noDecimalCos((142) + 1) = int((-7880), 8)
        this%f_noDecimalCos((143) + 1) = int((-7986), 8)
        this%f_noDecimalCos((144) + 1) = int((-8090), 8)
        this%f_noDecimalCos((145) + 1) = int((-8191), 8)
        this%f_noDecimalCos((146) + 1) = int((-8290), 8)
        this%f_noDecimalCos((147) + 1) = int((-8386), 8)
        this%f_noDecimalCos((148) + 1) = int((-8480), 8)
        this%f_noDecimalCos((149) + 1) = int((-8571), 8)
        this%f_noDecimalCos((150) + 1) = int((-8660), 8)
        this%f_noDecimalCos((151) + 1) = int((-8746), 8)
        this%f_noDecimalCos((152) + 1) = int((-8829), 8)
        this%f_noDecimalCos((153) + 1) = int((-8910), 8)
        this%f_noDecimalCos((154) + 1) = int((-8987), 8)
        this%f_noDecimalCos((155) + 1) = int((-9063), 8)
        this%f_noDecimalCos((156) + 1) = int((-9135), 8)
        this%f_noDecimalCos((157) + 1) = int((-9205), 8)
        this%f_noDecimalCos((158) + 1) = int((-9271), 8)
        this%f_noDecimalCos((159) + 1) = int((-9335), 8)
        this%f_noDecimalCos((160) + 1) = int((-9396), 8)
        this%f_noDecimalCos((161) + 1) = int((-9455), 8)
        this%f_noDecimalCos((162) + 1) = int((-9510), 8)
        this%f_noDecimalCos((163) + 1) = int((-9563), 8)
        this%f_noDecimalCos((164) + 1) = int((-9612), 8)
        this%f_noDecimalCos((165) + 1) = int((-9659), 8)
        this%f_noDecimalCos((166) + 1) = int((-9702), 8)
        this%f_noDecimalCos((167) + 1) = int((-9743), 8)
        this%f_noDecimalCos((168) + 1) = int((-9781), 8)
        this%f_noDecimalCos((169) + 1) = int((-9816), 8)
        this%f_noDecimalCos((170) + 1) = int((-9848), 8)
        this%f_noDecimalCos((171) + 1) = int((-9876), 8)
        this%f_noDecimalCos((172) + 1) = int((-9902), 8)
        this%f_noDecimalCos((173) + 1) = int((-9925), 8)
        this%f_noDecimalCos((174) + 1) = int((-9945), 8)
        this%f_noDecimalCos((175) + 1) = int((-9961), 8)
        this%f_noDecimalCos((176) + 1) = int((-9975), 8)
        this%f_noDecimalCos((177) + 1) = int((-9986), 8)
        this%f_noDecimalCos((178) + 1) = int((-9993), 8)
        this%f_noDecimalCos((179) + 1) = int((-9998), 8)
        this%f_noDecimalCos((180) + 1) = int((-10000), 8)
        this%f_noDecimalCos((181) + 1) = int((-9998), 8)
        this%f_noDecimalCos((182) + 1) = int((-9993), 8)
        this%f_noDecimalCos((183) + 1) = int((-9986), 8)
        this%f_noDecimalCos((184) + 1) = int((-9975), 8)
        this%f_noDecimalCos((185) + 1) = int((-9961), 8)
        this%f_noDecimalCos((186) + 1) = int((-9945), 8)
        this%f_noDecimalCos((187) + 1) = int((-9925), 8)
        this%f_noDecimalCos((188) + 1) = int((-9902), 8)
        this%f_noDecimalCos((189) + 1) = int((-9876), 8)
        this%f_noDecimalCos((190) + 1) = int((-9848), 8)
        this%f_noDecimalCos((191) + 1) = int((-9816), 8)
        this%f_noDecimalCos((192) + 1) = int((-9781), 8)
        this%f_noDecimalCos((193) + 1) = int((-9743), 8)
        this%f_noDecimalCos((194) + 1) = int((-9702), 8)
        this%f_noDecimalCos((195) + 1) = int((-9659), 8)
        this%f_noDecimalCos((196) + 1) = int((-9612), 8)
        this%f_noDecimalCos((197) + 1) = int((-9563), 8)
        this%f_noDecimalCos((198) + 1) = int((-9510), 8)
        this%f_noDecimalCos((199) + 1) = int((-9455), 8)
        this%f_noDecimalCos((200) + 1) = int((-9396), 8)
        this%f_noDecimalCos((201) + 1) = int((-9335), 8)
        this%f_noDecimalCos((202) + 1) = int((-9271), 8)
        this%f_noDecimalCos((203) + 1) = int((-9205), 8)
        this%f_noDecimalCos((204) + 1) = int((-9135), 8)
        this%f_noDecimalCos((205) + 1) = int((-9063), 8)
        this%f_noDecimalCos((206) + 1) = int((-8987), 8)
        this%f_noDecimalCos((207) + 1) = int((-8910), 8)
        this%f_noDecimalCos((208) + 1) = int((-8829), 8)
        this%f_noDecimalCos((209) + 1) = int((-8746), 8)
        this%f_noDecimalCos((210) + 1) = int((-8660), 8)
        this%f_noDecimalCos((211) + 1) = int((-8571), 8)
        this%f_noDecimalCos((212) + 1) = int((-8480), 8)
        this%f_noDecimalCos((213) + 1) = int((-8386), 8)
        this%f_noDecimalCos((214) + 1) = int((-8290), 8)
        this%f_noDecimalCos((215) + 1) = int((-8191), 8)
        this%f_noDecimalCos((216) + 1) = int((-8090), 8)
        this%f_noDecimalCos((217) + 1) = int((-7986), 8)
        this%f_noDecimalCos((218) + 1) = int((-7880), 8)
        this%f_noDecimalCos((219) + 1) = int((-7771), 8)
        this%f_noDecimalCos((220) + 1) = int((-7660), 8)
        this%f_noDecimalCos((221) + 1) = int((-7547), 8)
        this%f_noDecimalCos((222) + 1) = int((-7431), 8)
        this%f_noDecimalCos((223) + 1) = int((-7313), 8)
        this%f_noDecimalCos((224) + 1) = int((-7193), 8)
        this%f_noDecimalCos((225) + 1) = int((-7071), 8)
        this%f_noDecimalCos((226) + 1) = int((-6946), 8)
        this%f_noDecimalCos((227) + 1) = int((-6819), 8)
        this%f_noDecimalCos((228) + 1) = int((-6691), 8)
        this%f_noDecimalCos((229) + 1) = int((-6560), 8)
        this%f_noDecimalCos((230) + 1) = int((-6427), 8)
        this%f_noDecimalCos((231) + 1) = int((-6293), 8)
        this%f_noDecimalCos((232) + 1) = int((-6156), 8)
        this%f_noDecimalCos((233) + 1) = int((-6018), 8)
        this%f_noDecimalCos((234) + 1) = int((-5877), 8)
        this%f_noDecimalCos((235) + 1) = int((-5735), 8)
        this%f_noDecimalCos((236) + 1) = int((-5591), 8)
        this%f_noDecimalCos((237) + 1) = int((-5446), 8)
        this%f_noDecimalCos((238) + 1) = int((-5299), 8)
        this%f_noDecimalCos((239) + 1) = int((-5150), 8)
        this%f_noDecimalCos((240) + 1) = int((-5000), 8)
        this%f_noDecimalCos((241) + 1) = int((-4848), 8)
        this%f_noDecimalCos((242) + 1) = int((-4694), 8)
        this%f_noDecimalCos((243) + 1) = int((-4539), 8)
        this%f_noDecimalCos((244) + 1) = int((-4383), 8)
        this%f_noDecimalCos((245) + 1) = int((-4226), 8)
        this%f_noDecimalCos((246) + 1) = int((-4067), 8)
        this%f_noDecimalCos((247) + 1) = int((-3907), 8)
        this%f_noDecimalCos((248) + 1) = int((-3746), 8)
        this%f_noDecimalCos((249) + 1) = int((-3583), 8)
        this%f_noDecimalCos((250) + 1) = int((-3420), 8)
        this%f_noDecimalCos((251) + 1) = int((-3255), 8)
        this%f_noDecimalCos((252) + 1) = int((-3090), 8)
        this%f_noDecimalCos((253) + 1) = int((-2923), 8)
        this%f_noDecimalCos((254) + 1) = int((-2756), 8)
        this%f_noDecimalCos((255) + 1) = int((-2588), 8)
        this%f_noDecimalCos((256) + 1) = int((-2419), 8)
        this%f_noDecimalCos((257) + 1) = int((-2249), 8)
        this%f_noDecimalCos((258) + 1) = int((-2079), 8)
        this%f_noDecimalCos((259) + 1) = int((-1908), 8)
        this%f_noDecimalCos((260) + 1) = int((-1736), 8)
        this%f_noDecimalCos((261) + 1) = int((-1564), 8)
        this%f_noDecimalCos((262) + 1) = int((-1391), 8)
        this%f_noDecimalCos((263) + 1) = int((-1218), 8)
        this%f_noDecimalCos((264) + 1) = int((-1045), 8)
        this%f_noDecimalCos((265) + 1) = int((-871), 8)
        this%f_noDecimalCos((266) + 1) = int((-697), 8)
        this%f_noDecimalCos((267) + 1) = int((-523), 8)
        this%f_noDecimalCos((268) + 1) = int((-348), 8)
        this%f_noDecimalCos((269) + 1) = int((-174), 8)
        this%f_noDecimalCos((270) + 1) = 0_8
        this%f_noDecimalCos((271) + 1) = 174_8
        this%f_noDecimalCos((272) + 1) = 348_8
        this%f_noDecimalCos((273) + 1) = 523_8
        this%f_noDecimalCos((274) + 1) = 697_8
        this%f_noDecimalCos((275) + 1) = 871_8
        this%f_noDecimalCos((276) + 1) = 1045_8
        this%f_noDecimalCos((277) + 1) = 1218_8
        this%f_noDecimalCos((278) + 1) = 1391_8
        this%f_noDecimalCos((279) + 1) = 1564_8
        this%f_noDecimalCos((280) + 1) = 1736_8
        this%f_noDecimalCos((281) + 1) = 1908_8
        this%f_noDecimalCos((282) + 1) = 2079_8
        this%f_noDecimalCos((283) + 1) = 2249_8
        this%f_noDecimalCos((284) + 1) = 2419_8
        this%f_noDecimalCos((285) + 1) = 2588_8
        this%f_noDecimalCos((286) + 1) = 2756_8
        this%f_noDecimalCos((287) + 1) = 2923_8
        this%f_noDecimalCos((288) + 1) = 3090_8
        this%f_noDecimalCos((289) + 1) = 3255_8
        this%f_noDecimalCos((290) + 1) = 3420_8
        this%f_noDecimalCos((291) + 1) = 3583_8
        this%f_noDecimalCos((292) + 1) = 3746_8
        this%f_noDecimalCos((293) + 1) = 3907_8
        this%f_noDecimalCos((294) + 1) = 4067_8
        this%f_noDecimalCos((295) + 1) = 4226_8
        this%f_noDecimalCos((296) + 1) = 4383_8
        this%f_noDecimalCos((297) + 1) = 4539_8
        this%f_noDecimalCos((298) + 1) = 4694_8
        this%f_noDecimalCos((299) + 1) = 4848_8
        this%f_noDecimalCos((300) + 1) = 5000_8
        this%f_noDecimalCos((301) + 1) = 5150_8
        this%f_noDecimalCos((302) + 1) = 5299_8
        this%f_noDecimalCos((303) + 1) = 5446_8
        this%f_noDecimalCos((304) + 1) = 5591_8
        this%f_noDecimalCos((305) + 1) = 5735_8
        this%f_noDecimalCos((306) + 1) = 5877_8
        this%f_noDecimalCos((307) + 1) = 6018_8
        this%f_noDecimalCos((308) + 1) = 6156_8
        this%f_noDecimalCos((309) + 1) = 6293_8
        this%f_noDecimalCos((310) + 1) = 6427_8
        this%f_noDecimalCos((311) + 1) = 6560_8
        this%f_noDecimalCos((312) + 1) = 6691_8
        this%f_noDecimalCos((313) + 1) = 6819_8
        this%f_noDecimalCos((314) + 1) = 6946_8
        this%f_noDecimalCos((315) + 1) = 7071_8
        this%f_noDecimalCos((316) + 1) = 7193_8
        this%f_noDecimalCos((317) + 1) = 7313_8
        this%f_noDecimalCos((318) + 1) = 7431_8
        this%f_noDecimalCos((319) + 1) = 7547_8
        this%f_noDecimalCos((320) + 1) = 7660_8
        this%f_noDecimalCos((321) + 1) = 7771_8
        this%f_noDecimalCos((322) + 1) = 7880_8
        this%f_noDecimalCos((323) + 1) = 7986_8
        this%f_noDecimalCos((324) + 1) = 8090_8
        this%f_noDecimalCos((325) + 1) = 8191_8
        this%f_noDecimalCos((326) + 1) = 8290_8
        this%f_noDecimalCos((327) + 1) = 8386_8
        this%f_noDecimalCos((328) + 1) = 8480_8
        this%f_noDecimalCos((329) + 1) = 8571_8
        this%f_noDecimalCos((330) + 1) = 8660_8
        this%f_noDecimalCos((331) + 1) = 8746_8
        this%f_noDecimalCos((332) + 1) = 8829_8
        this%f_noDecimalCos((333) + 1) = 8910_8
        this%f_noDecimalCos((334) + 1) = 8987_8
        this%f_noDecimalCos((335) + 1) = 9063_8
        this%f_noDecimalCos((336) + 1) = 9135_8
        this%f_noDecimalCos((337) + 1) = 9205_8
        this%f_noDecimalCos((338) + 1) = 9271_8
        this%f_noDecimalCos((339) + 1) = 9335_8
        this%f_noDecimalCos((340) + 1) = 9396_8
        this%f_noDecimalCos((341) + 1) = 9455_8
        this%f_noDecimalCos((342) + 1) = 9510_8
        this%f_noDecimalCos((343) + 1) = 9563_8
        this%f_noDecimalCos((344) + 1) = 9612_8
        this%f_noDecimalCos((345) + 1) = 9659_8
        this%f_noDecimalCos((346) + 1) = 9702_8
        this%f_noDecimalCos((347) + 1) = 9743_8
        this%f_noDecimalCos((348) + 1) = 9781_8
        this%f_noDecimalCos((349) + 1) = 9816_8
        this%f_noDecimalCos((350) + 1) = 9848_8
        this%f_noDecimalCos((351) + 1) = 9876_8
        this%f_noDecimalCos((352) + 1) = 9902_8
        this%f_noDecimalCos((353) + 1) = 9925_8
        this%f_noDecimalCos((354) + 1) = 9945_8
        this%f_noDecimalCos((355) + 1) = 9961_8
        this%f_noDecimalCos((356) + 1) = 9975_8
        this%f_noDecimalCos((357) + 1) = 9986_8
        this%f_noDecimalCos((358) + 1) = 9993_8
        this%f_noDecimalCos((359) + 1) = 9998_8
        this%f_noDecimalTan((0) + 1) = 0_8
        this%f_noDecimalTan((1) + 1) = 174_8
        this%f_noDecimalTan((2) + 1) = 349_8
        this%f_noDecimalTan((3) + 1) = 524_8
        this%f_noDecimalTan((4) + 1) = 699_8
        this%f_noDecimalTan((5) + 1) = 874_8
        this%f_noDecimalTan((6) + 1) = 1051_8
        this%f_noDecimalTan((7) + 1) = 1227_8
        this%f_noDecimalTan((8) + 1) = 1405_8
        this%f_noDecimalTan((9) + 1) = 1583_8
        this%f_noDecimalTan((10) + 1) = 1763_8
        this%f_noDecimalTan((11) + 1) = 1943_8
        this%f_noDecimalTan((12) + 1) = 2125_8
        this%f_noDecimalTan((13) + 1) = 2308_8
        this%f_noDecimalTan((14) + 1) = 2493_8
        this%f_noDecimalTan((15) + 1) = 2679_8
        this%f_noDecimalTan((16) + 1) = 2867_8
        this%f_noDecimalTan((17) + 1) = 3057_8
        this%f_noDecimalTan((18) + 1) = 3249_8
        this%f_noDecimalTan((19) + 1) = 3443_8
        this%f_noDecimalTan((20) + 1) = 3639_8
        this%f_noDecimalTan((21) + 1) = 3838_8
        this%f_noDecimalTan((22) + 1) = 4040_8
        this%f_noDecimalTan((23) + 1) = 4244_8
        this%f_noDecimalTan((24) + 1) = 4452_8
        this%f_noDecimalTan((25) + 1) = 4663_8
        this%f_noDecimalTan((26) + 1) = 4877_8
        this%f_noDecimalTan((27) + 1) = 5095_8
        this%f_noDecimalTan((28) + 1) = 5317_8
        this%f_noDecimalTan((29) + 1) = 5543_8
        this%f_noDecimalTan((30) + 1) = 5773_8
        this%f_noDecimalTan((31) + 1) = 6008_8
        this%f_noDecimalTan((32) + 1) = 6248_8
        this%f_noDecimalTan((33) + 1) = 6494_8
        this%f_noDecimalTan((34) + 1) = 6745_8
        this%f_noDecimalTan((35) + 1) = 7002_8
        this%f_noDecimalTan((36) + 1) = 7265_8
        this%f_noDecimalTan((37) + 1) = 7535_8
        this%f_noDecimalTan((38) + 1) = 7812_8
        this%f_noDecimalTan((39) + 1) = 8097_8
        this%f_noDecimalTan((40) + 1) = 8390_8
        this%f_noDecimalTan((41) + 1) = 8692_8
        this%f_noDecimalTan((42) + 1) = 9004_8
        this%f_noDecimalTan((43) + 1) = 9325_8
        this%f_noDecimalTan((44) + 1) = 9656_8
        this%f_noDecimalTan((45) + 1) = 9999_8
        this%f_noDecimalTan((46) + 1) = 10355_8
        this%f_noDecimalTan((47) + 1) = 10723_8
        this%f_noDecimalTan((48) + 1) = 11106_8
        this%f_noDecimalTan((49) + 1) = 11503_8
        this%f_noDecimalTan((50) + 1) = 11917_8
        this%f_noDecimalTan((51) + 1) = 12348_8
        this%f_noDecimalTan((52) + 1) = 12799_8
        this%f_noDecimalTan((53) + 1) = 13270_8
        this%f_noDecimalTan((54) + 1) = 13763_8
        this%f_noDecimalTan((55) + 1) = 14281_8
        this%f_noDecimalTan((56) + 1) = 14825_8
        this%f_noDecimalTan((57) + 1) = 15398_8
        this%f_noDecimalTan((58) + 1) = 16003_8
        this%f_noDecimalTan((59) + 1) = 16642_8
        this%f_noDecimalTan((60) + 1) = 17320_8
        this%f_noDecimalTan((61) + 1) = 18040_8
        this%f_noDecimalTan((62) + 1) = 18807_8
        this%f_noDecimalTan((63) + 1) = 19626_8
        this%f_noDecimalTan((64) + 1) = 20503_8
        this%f_noDecimalTan((65) + 1) = 21445_8
        this%f_noDecimalTan((66) + 1) = 22460_8
        this%f_noDecimalTan((67) + 1) = 23558_8
        this%f_noDecimalTan((68) + 1) = 24750_8
        this%f_noDecimalTan((69) + 1) = 26050_8
        this%f_noDecimalTan((70) + 1) = 27474_8
        this%f_noDecimalTan((71) + 1) = 29042_8
        this%f_noDecimalTan((72) + 1) = 30776_8
        this%f_noDecimalTan((73) + 1) = 32708_8
        this%f_noDecimalTan((74) + 1) = 34874_8
        this%f_noDecimalTan((75) + 1) = 37320_8
        this%f_noDecimalTan((76) + 1) = 40107_8
        this%f_noDecimalTan((77) + 1) = 43314_8
        this%f_noDecimalTan((78) + 1) = 47046_8
        this%f_noDecimalTan((79) + 1) = 51445_8
        this%f_noDecimalTan((80) + 1) = 56712_8
        this%f_noDecimalTan((81) + 1) = 63137_8
        this%f_noDecimalTan((82) + 1) = 71153_8
        this%f_noDecimalTan((83) + 1) = 81443_8
        this%f_noDecimalTan((84) + 1) = 95143_8
        this%f_noDecimalTan((85) + 1) = 114300_8
        this%f_noDecimalTan((86) + 1) = 143006_8
        this%f_noDecimalTan((87) + 1) = 190811_8
        this%f_noDecimalTan((88) + 1) = 286362_8
        this%f_noDecimalTan((89) + 1) = 572899_8
        this%f_noDecimalTan((90) + 1) = j_MAX_VALUE
        this%f_noDecimalTan((91) + 1) = int((-572899), 8)
        this%f_noDecimalTan((92) + 1) = int((-286362), 8)
        this%f_noDecimalTan((93) + 1) = int((-190811), 8)
        this%f_noDecimalTan((94) + 1) = int((-143006), 8)
        this%f_noDecimalTan((95) + 1) = int((-114300), 8)
        this%f_noDecimalTan((96) + 1) = int((-95143), 8)
        this%f_noDecimalTan((97) + 1) = int((-81443), 8)
        this%f_noDecimalTan((98) + 1) = int((-71153), 8)
        this%f_noDecimalTan((99) + 1) = int((-63137), 8)
        this%f_noDecimalTan((100) + 1) = int((-56712), 8)
        this%f_noDecimalTan((101) + 1) = int((-51445), 8)
        this%f_noDecimalTan((102) + 1) = int((-47046), 8)
        this%f_noDecimalTan((103) + 1) = int((-43314), 8)
        this%f_noDecimalTan((104) + 1) = int((-40107), 8)
        this%f_noDecimalTan((105) + 1) = int((-37320), 8)
        this%f_noDecimalTan((106) + 1) = int((-34874), 8)
        this%f_noDecimalTan((107) + 1) = int((-32708), 8)
        this%f_noDecimalTan((108) + 1) = int((-30776), 8)
        this%f_noDecimalTan((109) + 1) = int((-29042), 8)
        this%f_noDecimalTan((110) + 1) = int((-27474), 8)
        this%f_noDecimalTan((111) + 1) = int((-26050), 8)
        this%f_noDecimalTan((112) + 1) = int((-24750), 8)
        this%f_noDecimalTan((113) + 1) = int((-23558), 8)
        this%f_noDecimalTan((114) + 1) = int((-22460), 8)
        this%f_noDecimalTan((115) + 1) = int((-21445), 8)
        this%f_noDecimalTan((116) + 1) = int((-20503), 8)
        this%f_noDecimalTan((117) + 1) = int((-19626), 8)
        this%f_noDecimalTan((118) + 1) = int((-18807), 8)
        this%f_noDecimalTan((119) + 1) = int((-18040), 8)
        this%f_noDecimalTan((120) + 1) = int((-17320), 8)
        this%f_noDecimalTan((121) + 1) = int((-16642), 8)
        this%f_noDecimalTan((122) + 1) = int((-16003), 8)
        this%f_noDecimalTan((123) + 1) = int((-15398), 8)
        this%f_noDecimalTan((124) + 1) = int((-14825), 8)
        this%f_noDecimalTan((125) + 1) = int((-14281), 8)
        this%f_noDecimalTan((126) + 1) = int((-13763), 8)
        this%f_noDecimalTan((127) + 1) = int((-13270), 8)
        this%f_noDecimalTan((128) + 1) = int((-12799), 8)
        this%f_noDecimalTan((129) + 1) = int((-12348), 8)
        this%f_noDecimalTan((130) + 1) = int((-11917), 8)
        this%f_noDecimalTan((131) + 1) = int((-11503), 8)
        this%f_noDecimalTan((132) + 1) = int((-11106), 8)
        this%f_noDecimalTan((133) + 1) = int((-10723), 8)
        this%f_noDecimalTan((134) + 1) = int((-10355), 8)
        this%f_noDecimalTan((135) + 1) = int((-10000), 8)
        this%f_noDecimalTan((136) + 1) = int((-9656), 8)
        this%f_noDecimalTan((137) + 1) = int((-9325), 8)
        this%f_noDecimalTan((138) + 1) = int((-9004), 8)
        this%f_noDecimalTan((139) + 1) = int((-8692), 8)
        this%f_noDecimalTan((140) + 1) = int((-8390), 8)
        this%f_noDecimalTan((141) + 1) = int((-8097), 8)
        this%f_noDecimalTan((142) + 1) = int((-7812), 8)
        this%f_noDecimalTan((143) + 1) = int((-7535), 8)
        this%f_noDecimalTan((144) + 1) = int((-7265), 8)
        this%f_noDecimalTan((145) + 1) = int((-7002), 8)
        this%f_noDecimalTan((146) + 1) = int((-6745), 8)
        this%f_noDecimalTan((147) + 1) = int((-6494), 8)
        this%f_noDecimalTan((148) + 1) = int((-6248), 8)
        this%f_noDecimalTan((149) + 1) = int((-6008), 8)
        this%f_noDecimalTan((150) + 1) = int((-5773), 8)
        this%f_noDecimalTan((151) + 1) = int((-5543), 8)
        this%f_noDecimalTan((152) + 1) = int((-5317), 8)
        this%f_noDecimalTan((153) + 1) = int((-5095), 8)
        this%f_noDecimalTan((154) + 1) = int((-4877), 8)
        this%f_noDecimalTan((155) + 1) = int((-4663), 8)
        this%f_noDecimalTan((156) + 1) = int((-4452), 8)
        this%f_noDecimalTan((157) + 1) = int((-4244), 8)
        this%f_noDecimalTan((158) + 1) = int((-4040), 8)
        this%f_noDecimalTan((159) + 1) = int((-3838), 8)
        this%f_noDecimalTan((160) + 1) = int((-3639), 8)
        this%f_noDecimalTan((161) + 1) = int((-3443), 8)
        this%f_noDecimalTan((162) + 1) = int((-3249), 8)
        this%f_noDecimalTan((163) + 1) = int((-3057), 8)
        this%f_noDecimalTan((164) + 1) = int((-2867), 8)
        this%f_noDecimalTan((165) + 1) = int((-2679), 8)
        this%f_noDecimalTan((166) + 1) = int((-2493), 8)
        this%f_noDecimalTan((167) + 1) = int((-2308), 8)
        this%f_noDecimalTan((168) + 1) = int((-2125), 8)
        this%f_noDecimalTan((169) + 1) = int((-1943), 8)
        this%f_noDecimalTan((170) + 1) = int((-1763), 8)
        this%f_noDecimalTan((171) + 1) = int((-1583), 8)
        this%f_noDecimalTan((172) + 1) = int((-1405), 8)
        this%f_noDecimalTan((173) + 1) = int((-1227), 8)
        this%f_noDecimalTan((174) + 1) = int((-1051), 8)
        this%f_noDecimalTan((175) + 1) = int((-874), 8)
        this%f_noDecimalTan((176) + 1) = int((-699), 8)
        this%f_noDecimalTan((177) + 1) = int((-524), 8)
        this%f_noDecimalTan((178) + 1) = int((-349), 8)
        this%f_noDecimalTan((179) + 1) = int((-174), 8)
        this%f_noDecimalTan((180) + 1) = 0_8
        this%f_noDecimalTan((181) + 1) = 174_8
        this%f_noDecimalTan((182) + 1) = 349_8
        this%f_noDecimalTan((183) + 1) = 524_8
        this%f_noDecimalTan((184) + 1) = 699_8
        this%f_noDecimalTan((185) + 1) = 874_8
        this%f_noDecimalTan((186) + 1) = 1051_8
        this%f_noDecimalTan((187) + 1) = 1227_8
        this%f_noDecimalTan((188) + 1) = 1405_8
        this%f_noDecimalTan((189) + 1) = 1583_8
        this%f_noDecimalTan((190) + 1) = 1763_8
        this%f_noDecimalTan((191) + 1) = 1943_8
        this%f_noDecimalTan((192) + 1) = 2125_8
        this%f_noDecimalTan((193) + 1) = 2308_8
        this%f_noDecimalTan((194) + 1) = 2493_8
        this%f_noDecimalTan((195) + 1) = 2679_8
        this%f_noDecimalTan((196) + 1) = 2867_8
        this%f_noDecimalTan((197) + 1) = 3057_8
        this%f_noDecimalTan((198) + 1) = 3249_8
        this%f_noDecimalTan((199) + 1) = 3443_8
        this%f_noDecimalTan((200) + 1) = 3639_8
        this%f_noDecimalTan((201) + 1) = 3838_8
        this%f_noDecimalTan((202) + 1) = 4040_8
        this%f_noDecimalTan((203) + 1) = 4244_8
        this%f_noDecimalTan((204) + 1) = 4452_8
        this%f_noDecimalTan((205) + 1) = 4663_8
        this%f_noDecimalTan((206) + 1) = 4877_8
        this%f_noDecimalTan((207) + 1) = 5095_8
        this%f_noDecimalTan((208) + 1) = 5317_8
        this%f_noDecimalTan((209) + 1) = 5543_8
        this%f_noDecimalTan((210) + 1) = 5773_8
        this%f_noDecimalTan((211) + 1) = 6008_8
        this%f_noDecimalTan((212) + 1) = 6248_8
        this%f_noDecimalTan((213) + 1) = 6494_8
        this%f_noDecimalTan((214) + 1) = 6745_8
        this%f_noDecimalTan((215) + 1) = 7002_8
        this%f_noDecimalTan((216) + 1) = 7265_8
        this%f_noDecimalTan((217) + 1) = 7535_8
        this%f_noDecimalTan((218) + 1) = 7812_8
        this%f_noDecimalTan((219) + 1) = 8097_8
        this%f_noDecimalTan((220) + 1) = 8390_8
        this%f_noDecimalTan((221) + 1) = 8692_8
        this%f_noDecimalTan((222) + 1) = 9004_8
        this%f_noDecimalTan((223) + 1) = 9325_8
        this%f_noDecimalTan((224) + 1) = 9656_8
        this%f_noDecimalTan((225) + 1) = 9999_8
        this%f_noDecimalTan((226) + 1) = 10355_8
        this%f_noDecimalTan((227) + 1) = 10723_8
        this%f_noDecimalTan((228) + 1) = 11106_8
        this%f_noDecimalTan((229) + 1) = 11503_8
        this%f_noDecimalTan((230) + 1) = 11917_8
        this%f_noDecimalTan((231) + 1) = 12348_8
        this%f_noDecimalTan((232) + 1) = 12799_8
        this%f_noDecimalTan((233) + 1) = 13270_8
        this%f_noDecimalTan((234) + 1) = 13763_8
        this%f_noDecimalTan((235) + 1) = 14281_8
        this%f_noDecimalTan((236) + 1) = 14825_8
        this%f_noDecimalTan((237) + 1) = 15398_8
        this%f_noDecimalTan((238) + 1) = 16003_8
        this%f_noDecimalTan((239) + 1) = 16642_8
        this%f_noDecimalTan((240) + 1) = 17320_8
        this%f_noDecimalTan((241) + 1) = 18040_8
        this%f_noDecimalTan((242) + 1) = 18807_8
        this%f_noDecimalTan((243) + 1) = 19626_8
        this%f_noDecimalTan((244) + 1) = 20503_8
        this%f_noDecimalTan((245) + 1) = 21445_8
        this%f_noDecimalTan((246) + 1) = 22460_8
        this%f_noDecimalTan((247) + 1) = 23558_8
        this%f_noDecimalTan((248) + 1) = 24750_8
        this%f_noDecimalTan((249) + 1) = 26050_8
        this%f_noDecimalTan((250) + 1) = 27474_8
        this%f_noDecimalTan((251) + 1) = 29042_8
        this%f_noDecimalTan((252) + 1) = 30776_8
        this%f_noDecimalTan((253) + 1) = 32708_8
        this%f_noDecimalTan((254) + 1) = 34874_8
        this%f_noDecimalTan((255) + 1) = 37320_8
        this%f_noDecimalTan((256) + 1) = 40107_8
        this%f_noDecimalTan((257) + 1) = 43314_8
        this%f_noDecimalTan((258) + 1) = 47046_8
        this%f_noDecimalTan((259) + 1) = 51445_8
        this%f_noDecimalTan((260) + 1) = 56712_8
        this%f_noDecimalTan((261) + 1) = 63137_8
        this%f_noDecimalTan((262) + 1) = 71153_8
        this%f_noDecimalTan((263) + 1) = 81443_8
        this%f_noDecimalTan((264) + 1) = 95143_8
        this%f_noDecimalTan((265) + 1) = 114300_8
        this%f_noDecimalTan((266) + 1) = 143006_8
        this%f_noDecimalTan((267) + 1) = 190811_8
        this%f_noDecimalTan((268) + 1) = 286362_8
        this%f_noDecimalTan((269) + 1) = 572899_8
        this%f_noDecimalTan((270) + 1) = j_MAX_VALUE
        this%f_noDecimalTan((271) + 1) = int((-572899), 8)
        this%f_noDecimalTan((272) + 1) = int((-286362), 8)
        this%f_noDecimalTan((273) + 1) = int((-190811), 8)
        this%f_noDecimalTan((274) + 1) = int((-143006), 8)
        this%f_noDecimalTan((275) + 1) = int((-114300), 8)
        this%f_noDecimalTan((276) + 1) = int((-95143), 8)
        this%f_noDecimalTan((277) + 1) = int((-81443), 8)
        this%f_noDecimalTan((278) + 1) = int((-71153), 8)
        this%f_noDecimalTan((279) + 1) = int((-63137), 8)
        this%f_noDecimalTan((280) + 1) = int((-56712), 8)
        this%f_noDecimalTan((281) + 1) = int((-51445), 8)
        this%f_noDecimalTan((282) + 1) = int((-47046), 8)
        this%f_noDecimalTan((283) + 1) = int((-43314), 8)
        this%f_noDecimalTan((284) + 1) = int((-40107), 8)
        this%f_noDecimalTan((285) + 1) = int((-37320), 8)
        this%f_noDecimalTan((286) + 1) = int((-34874), 8)
        this%f_noDecimalTan((287) + 1) = int((-32708), 8)
        this%f_noDecimalTan((288) + 1) = int((-30776), 8)
        this%f_noDecimalTan((289) + 1) = int((-29042), 8)
        this%f_noDecimalTan((290) + 1) = int((-27474), 8)
        this%f_noDecimalTan((291) + 1) = int((-26050), 8)
        this%f_noDecimalTan((292) + 1) = int((-24750), 8)
        this%f_noDecimalTan((293) + 1) = int((-23558), 8)
        this%f_noDecimalTan((294) + 1) = int((-22460), 8)
        this%f_noDecimalTan((295) + 1) = int((-21445), 8)
        this%f_noDecimalTan((296) + 1) = int((-20503), 8)
        this%f_noDecimalTan((297) + 1) = int((-19626), 8)
        this%f_noDecimalTan((298) + 1) = int((-18807), 8)
        this%f_noDecimalTan((299) + 1) = int((-18040), 8)
        this%f_noDecimalTan((300) + 1) = int((-17320), 8)
        this%f_noDecimalTan((301) + 1) = int((-16642), 8)
        this%f_noDecimalTan((302) + 1) = int((-16003), 8)
        this%f_noDecimalTan((303) + 1) = int((-15398), 8)
        this%f_noDecimalTan((304) + 1) = int((-14825), 8)
        this%f_noDecimalTan((305) + 1) = int((-14281), 8)
        this%f_noDecimalTan((306) + 1) = int((-13763), 8)
        this%f_noDecimalTan((307) + 1) = int((-13270), 8)
        this%f_noDecimalTan((308) + 1) = int((-12799), 8)
        this%f_noDecimalTan((309) + 1) = int((-12348), 8)
        this%f_noDecimalTan((310) + 1) = int((-11917), 8)
        this%f_noDecimalTan((311) + 1) = int((-11503), 8)
        this%f_noDecimalTan((312) + 1) = int((-11106), 8)
        this%f_noDecimalTan((313) + 1) = int((-10723), 8)
        this%f_noDecimalTan((314) + 1) = int((-10355), 8)
        this%f_noDecimalTan((315) + 1) = int((-10000), 8)
        this%f_noDecimalTan((316) + 1) = int((-9656), 8)
        this%f_noDecimalTan((317) + 1) = int((-9325), 8)
        this%f_noDecimalTan((318) + 1) = int((-9004), 8)
        this%f_noDecimalTan((319) + 1) = int((-8692), 8)
        this%f_noDecimalTan((320) + 1) = int((-8390), 8)
        this%f_noDecimalTan((321) + 1) = int((-8097), 8)
        this%f_noDecimalTan((322) + 1) = int((-7812), 8)
        this%f_noDecimalTan((323) + 1) = int((-7535), 8)
        this%f_noDecimalTan((324) + 1) = int((-7265), 8)
        this%f_noDecimalTan((325) + 1) = int((-7002), 8)
        this%f_noDecimalTan((326) + 1) = int((-6745), 8)
        this%f_noDecimalTan((327) + 1) = int((-6494), 8)
        this%f_noDecimalTan((328) + 1) = int((-6248), 8)
        this%f_noDecimalTan((329) + 1) = int((-6008), 8)
        this%f_noDecimalTan((330) + 1) = int((-5773), 8)
        this%f_noDecimalTan((331) + 1) = int((-5543), 8)
        this%f_noDecimalTan((332) + 1) = int((-5317), 8)
        this%f_noDecimalTan((333) + 1) = int((-5095), 8)
        this%f_noDecimalTan((334) + 1) = int((-4877), 8)
        this%f_noDecimalTan((335) + 1) = int((-4663), 8)
        this%f_noDecimalTan((336) + 1) = int((-4452), 8)
        this%f_noDecimalTan((337) + 1) = int((-4244), 8)
        this%f_noDecimalTan((338) + 1) = int((-4040), 8)
        this%f_noDecimalTan((339) + 1) = int((-3838), 8)
        this%f_noDecimalTan((340) + 1) = int((-3639), 8)
        this%f_noDecimalTan((341) + 1) = int((-3443), 8)
        this%f_noDecimalTan((342) + 1) = int((-3249), 8)
        this%f_noDecimalTan((343) + 1) = int((-3057), 8)
        this%f_noDecimalTan((344) + 1) = int((-2867), 8)
        this%f_noDecimalTan((345) + 1) = int((-2679), 8)
        this%f_noDecimalTan((346) + 1) = int((-2493), 8)
        this%f_noDecimalTan((347) + 1) = int((-2308), 8)
        this%f_noDecimalTan((348) + 1) = int((-2125), 8)
        this%f_noDecimalTan((349) + 1) = int((-1943), 8)
        this%f_noDecimalTan((350) + 1) = int((-1763), 8)
        this%f_noDecimalTan((351) + 1) = int((-1583), 8)
        this%f_noDecimalTan((352) + 1) = int((-1405), 8)
        this%f_noDecimalTan((353) + 1) = int((-1227), 8)
        this%f_noDecimalTan((354) + 1) = int((-1051), 8)
        this%f_noDecimalTan((355) + 1) = int((-874), 8)
        this%f_noDecimalTan((356) + 1) = int((-699), 8)
        this%f_noDecimalTan((357) + 1) = int((-524), 8)
        this%f_noDecimalTan((358) + 1) = int((-349), 8)
        this%f_noDecimalTan((359) + 1) = int((-174), 8)
        this%f_noDecimalTan((0) + 1) = int((-174), 8)
  end function

  recursive function NoDecimalTrigTable_jm_getInstance_0() result(jresult)
    class(NoDecimalTrigTable), pointer :: jresult
        jresult => NoDecimalTrigTable_jstatic_instance()
        return
  end function

  recursive function NoDecimalTrigTable_jm_sin_1(this, j_angle) result(jresult)
    class(NoDecimalTrigTable), target :: this
    integer(4), value :: j_angle
    integer(8) :: jresult
        jresult = this%f_noDecimalSin((j_angle) + 1)
        return
  end function

  recursive function NoDecimalTrigTable_jm_cos_1(this, j_angle) result(jresult)
    class(NoDecimalTrigTable), target :: this
    integer(4), value :: j_angle
    integer(8) :: jresult
        jresult = this%f_noDecimalCos((j_angle) + 1)
        return
  end function

  recursive function NoDecimalTrigTable_jm_tan_1(this, j_angle) result(jresult)
    class(NoDecimalTrigTable), target :: this
    integer(4), value :: j_angle
    integer(8) :: jresult
        jresult = this%f_noDecimalTan((j_angle) + 1)
        return
  end function

  recursive function NoDecimalTrigTable_jm_antiTan_2(this, j_dx, j_dy) result(jresult)
    class(NoDecimalTrigTable), target :: this
    integer(4), value :: j_dx
    integer(4), value :: j_dy
    integer(4) :: jresult
    integer(8) :: j_MAX_VALUE
    integer(8) :: j_MIN_VALUE
    integer(8) :: j_ratio
    integer(8) :: j_dxl
    integer(4) :: j_index
    class(StringMaker), pointer :: j_stringBuffer
    class(CommonSeps), pointer :: jtemp2
    class(PositionStrings), pointer :: jtemp3
    class(CommonSeps), pointer :: jtemp4
    class(PositionStrings), pointer :: jtemp5
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_MAX_VALUE = (int(Integer_jstatic_MAX_VALUE(), 8))
        j_MIN_VALUE = (int(Integer_jstatic_MIN_VALUE(), 8))
        j_ratio = ((j_MAX_VALUE - 1_8))
        if ((j_dy /= 0)) then
            j_dxl = (int(j_dx, 8))
            j_ratio = ((int(this%f_SCALE, 8) * j_dxl) / int(j_dy, 8))
            if (((j_dx <= 0) .and. (j_dy < 0))) then
                j_ratio = this%f_mathUtil%jm_abslong_1(j_ratio)
            end if
        end if
        if ((((j_dx >= 0) .and. (j_dy < 0)))) then
            j_index = 180
            do while ((j_index > 90))
                if ((j_ratio <= this%f_noDecimalTan((j_index) + 1))) then
                    if ((j_ratio > this%f_noDecimalTan(((j_index - 1)) + 1))) then
                        jresult = (JR_i16(j_index))
                        return
                    else if (((this%f_noDecimalTan(((j_index - 1)) + 1) == j_MAX_VALUE) .and. (j_ratio > j_MIN_VALUE))) then
                        jresult = (JR_i16(j_index))
                        return
                    end if
                end if
                j_index = j_index - 1
            end do
        else if ((((j_dx < 0) .and. (j_dy <= 0)))) then
            j_index = 270
            do while ((j_index > 180))
                if (((j_ratio < this%f_noDecimalTan((j_index) + 1)) .and. (j_ratio >= this%f_noDecimalTan(((j_index - 1)) + 1)))) then
                    jresult = (JR_i16(j_index))
                    return
                end if
                j_index = j_index - 1
            end do
        else if ((((j_dx < 0) .and. (j_dy > 0)))) then
            j_index = ((size(this%f_noDecimalTan, 1) - 1))
            do while ((j_index > 270))
                if ((j_ratio < this%f_noDecimalTan((j_index) + 1))) then
                    if ((j_ratio >= this%f_noDecimalTan(((j_index - 1)) + 1))) then
                        jresult = (JR_i16(j_index))
                        return
                    else if (((this%f_noDecimalTan(((j_index - 1)) + 1) == j_MAX_VALUE) .and. (j_ratio >= j_MIN_VALUE))) then
                        jresult = (JR_i16(j_index))
                        return
                    end if
                end if
                j_index = j_index - 1
            end do
        else if ((((j_dx >= 0) .and. (j_dy >= 0)))) then
            j_index = 90
            do while ((j_index > 0))
                if (((j_ratio < this%f_noDecimalTan((j_index) + 1)) .and. (j_ratio >= this%f_noDecimalTan(((j_index - 1)) + 1)))) then
                    jresult = (JR_i16(j_index))
                    return
                end if
                j_index = j_index - 1
            end do
        end if
        j_stringBuffer => StringMaker_jnew_0()
        jdiscardRef => j_stringBuffer%jm_append_1('Invalid Ratio: ')
        jdiscardRef => j_stringBuffer%jm_appendlong_1(j_ratio)
        jtemp2 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp2%f_SPACE)
        jtemp3 => PositionStrings_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp3%f_DX_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_dx)
        jtemp4 => CommonSeps_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp4%f_SPACE)
        jtemp5 => PositionStrings_jm_getInstance_0()
        jdiscardRef => j_stringBuffer%jm_append_1(jtemp5%f_DX_LABEL)
        jdiscardRef => j_stringBuffer%jm_appendint_1(j_dy)
        error stop JR_toString(JR_newJObject('Exception'))
  end function

  recursive function NoDecimalTrigTable_jm_antiTanDebug_4(this, j_screenX, j_screenY, j_targetX, j_targetY) result(jresult)
    class(NoDecimalTrigTable), target :: this
    integer(4), value :: j_screenX
    integer(4), value :: j_screenY
    integer(4), value :: j_targetX
    integer(4), value :: j_targetY
    integer(4) :: jresult
    character(len=:), allocatable :: j_METHOD_NAME
    character(len=:), allocatable :: j_TARGET_ANGLE
    class(StringMaker), pointer :: j_stringMaker
    integer(4) :: j_targetX2
    integer(4) :: j_targetY2
    integer(4) :: j_screenX2
    integer(4) :: j_screenY2
    integer(4), allocatable :: j_dx(:)
    integer(4), allocatable :: j_dy(:)
    integer(4) :: j_angleOfTarget
    class(AngleFactory), pointer :: j_angleFactory
    class(Angle), pointer :: j_angle
    integer(4) :: j_index2
    integer(4) :: j_index
    class(StringMaker), pointer :: jtemp6
    class(StringMaker), pointer :: jtemp7
    class(StringMaker), pointer :: jtemp8
    class(StringMaker), pointer :: jtemp9
    class(StringMaker), pointer :: jtemp10
    class(StringMaker), pointer :: jtemp11
    class(StringMaker), pointer :: jtemp12
    class(StringMaker), pointer :: jtemp13
    class(StringMaker), pointer :: jtemp14
    class(StringMaker), pointer :: jtemp15
    class(StringMaker), pointer :: jtemp16
    class(StringMaker), pointer :: jtemp17
    class(StringMaker), pointer :: jtemp18
    class(StringMaker), pointer :: jtemp19
    class(StringMaker), pointer :: jtemp20
    class(StringMaker), pointer :: jtemp21
    class(StringMaker), pointer :: jtemp22
    class(StringMaker), pointer :: jtemp23
    class(StringMaker), pointer :: jtemp24
    class(StringMaker), pointer :: jtemp25
    class(CommonLabels), pointer :: jtemp26
    class(PositionStrings), pointer :: jtemp27
    class(PositionStrings), pointer :: jtemp28
    class(CommonSeps), pointer :: jtemp29
    class(JObject), pointer :: jdiscardRef
    character(len=:), allocatable :: jdiscardString
    integer(4) :: jdiscardInt
    integer(8) :: jdiscardLong
    real(4) :: jdiscardFloat
    real(8) :: jdiscardDouble
    logical :: jdiscardBoolean
        j_METHOD_NAME = 'antiTanDebug'
        j_TARGET_ANGLE = ' Targeting angle: '
        j_stringMaker => StringMaker_jnew_0()
        jtemp13 => j_stringMaker%jm_append_1('screenX: ')
        jtemp12 => jtemp13%jm_appendint_1(j_screenX)
        jtemp11 => jtemp12%jm_append_1(' screenY: ')
        jtemp10 => jtemp11%jm_appendint_1(j_screenY)
        jtemp9 => jtemp10%jm_append_1(' targetX: ')
        jtemp8 => jtemp9%jm_appendint_1(j_targetX)
        jtemp7 => jtemp8%jm_append_1(' targetY: ')
        jtemp6 => jtemp7%jm_appendint_1(j_targetY)
        call PreLogUtil_jm_put_3(jtemp6%jm_toString_0(), this, j_METHOD_NAME)
        j_targetX2 = (-j_targetX)
        j_targetY2 = (-j_targetY)
        j_screenX2 = (-j_screenX)
        j_screenY2 = (-j_screenY)
        j_dx = JR_newIntArray(4)
        j_dx((0) + 1) = ((j_screenX - j_targetX))
        j_dx((1) + 1) = ((j_screenX - j_targetX2))
        j_dx((2) + 1) = ((j_screenX2 - j_targetX))
        j_dx((3) + 1) = ((j_screenX2 - j_targetX2))
        j_dy = JR_newIntArray(4)
        j_dy((0) + 1) = ((j_screenY - j_targetY))
        j_dy((1) + 1) = ((j_screenY - j_targetY2))
        j_dy((2) + 1) = ((j_screenY2 - j_targetY))
        j_dy((3) + 1) = ((j_screenY2 - j_targetY2))
        continue
        j_angleFactory => AngleFactory_jm_getInstance_0()
        continue
        j_index = 0
        do while ((j_index < size(j_dx, 1)))
            j_index2 = 0
            do while ((j_index2 < size(j_dy, 1)))
                j_angleOfTarget = this%jm_antiTan_2(j_dx((j_index) + 1), j_dy((j_index2) + 1))
                j_angle => j_angleFactory%jm_getAt_1(j_angleOfTarget)
                jdiscardRef => j_stringMaker%jm_delete_2(0, j_stringMaker%jm_length_0())
                jtemp26 => CommonLabels_jm_getInstance_0()
                jtemp25 => j_stringMaker%jm_append_1(jtemp26%f_INDEX_LABEL)
                jtemp24 => jtemp25%jm_appendint_1(j_index)
                jtemp27 => PositionStrings_jm_getInstance_0()
                jtemp23 => jtemp24%jm_append_1(' index2: ')
                jtemp22 => jtemp23%jm_appendint_1(j_index2)
                jtemp28 => PositionStrings_jm_getInstance_0()
                jtemp21 => jtemp22%jm_append_1(jtemp27%f_DX_LABEL)
                jtemp20 => jtemp21%jm_appendint_1(j_dx((j_index) + 1))
                jtemp19 => jtemp20%jm_append_1(jtemp28%f_DY_LABEL)
                jtemp18 => jtemp19%jm_appendint_1(j_dy((j_index2) + 1))
                jtemp29 => CommonSeps_jm_getInstance_0()
                jtemp17 => jtemp18%jm_append_1(j_TARGET_ANGLE)
                jtemp16 => jtemp17%jm_appendshort_1(j_angleOfTarget)
                jtemp15 => jtemp16%jm_append_1(jtemp29%f_EQUALS)
                jtemp14 => jtemp15%jm_appendshort_1(j_angle%jm_getValue_0())
                call PreLogUtil_jm_put_3(jtemp14%jm_toString_0(), this, j_METHOD_NAME)
                j_index2 = j_index2 + 1
            end do
            j_index = j_index + 1
        end do
        j_angleOfTarget = this%jm_antiTan_2(j_dx((0) + 1), j_dy((0) + 1))
        jresult = j_angleOfTarget
        return
  end function
end module NoDecimalTrigTable_m

