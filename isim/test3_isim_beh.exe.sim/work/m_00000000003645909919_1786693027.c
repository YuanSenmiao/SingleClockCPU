/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "%h : %b : %b : %b : %b : %b :  %h";
static int ng1[] = {1, 0};
static int ng2[] = {2, 0};
static const char *ng3 = "E:/Xilinx/workspace/pcpu/single_clk_cpu/test3.v";
static int ng4[] = {0, 0};
static const char *ng5 = "pc :      instr       :      aluout      :     result       :      rf1         :         rf2      :pcnext";
static unsigned int ng6[] = {39363U, 0U};
static unsigned int ng7[] = {2048U, 0U};
static unsigned int ng8[] = {32784U, 0U};
static unsigned int ng9[] = {31126U, 0U};
static unsigned int ng10[] = {21010U, 0U};
static unsigned int ng11[] = {23058U, 0U};
static unsigned int ng12[] = {33024U, 0U};
static unsigned int ng13[] = {25106U, 0U};
static unsigned int ng14[] = {27154U, 0U};
static unsigned int ng15[] = {55296U, 0U};

void Monitor_99_1(char *);
void Monitor_99_1(char *);


static void Monitor_99_1_Func(char *t0)
{
    char t17[8];
    char t31[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;

LAB0:    t1 = (t0 + 6000);
    t2 = *((char **)t1);
    t3 = ((((char*)(t2))) + 40U);
    t4 = *((char **)t3);
    t3 = (t0 + 6024);
    t5 = *((char **)t3);
    t6 = ((((char*)(t5))) + 40U);
    t7 = *((char **)t6);
    t6 = (t0 + 6048);
    t8 = *((char **)t6);
    t9 = ((((char*)(t8))) + 40U);
    t10 = *((char **)t9);
    t9 = (t0 + 6072);
    t11 = *((char **)t9);
    t12 = ((((char*)(t11))) + 40U);
    t13 = *((char **)t12);
    t12 = (t0 + 6096);
    t14 = *((char **)t12);
    t15 = ((((char*)(t14))) + 56U);
    t16 = *((char **)t15);
    t18 = (t0 + 6120);
    t19 = *((char **)t18);
    t20 = ((((char*)(t19))) + 72U);
    t21 = *((char **)t20);
    t22 = (t0 + 6144);
    t23 = *((char **)t22);
    t24 = ((((char*)(t23))) + 64U);
    t25 = *((char **)t24);
    t26 = ((char*)((ng1)));
    xsi_vlog_generic_get_array_select_value(t17, 16, t16, t21, t25, 2, 1, t26, 32, 1);
    t27 = (t0 + 6168);
    t28 = *((char **)t27);
    t29 = ((((char*)(t28))) + 56U);
    t30 = *((char **)t29);
    t32 = (t0 + 6192);
    t33 = *((char **)t32);
    t34 = ((((char*)(t33))) + 72U);
    t35 = *((char **)t34);
    t36 = (t0 + 6216);
    t37 = *((char **)t36);
    t38 = ((((char*)(t37))) + 64U);
    t39 = *((char **)t38);
    t40 = ((char*)((ng2)));
    xsi_vlog_generic_get_array_select_value(t31, 16, t30, t35, t39, 2, 1, t40, 32, 1);
    t41 = (t0 + 6240);
    t42 = *((char **)t41);
    t43 = ((((char*)(t42))) + 40U);
    t44 = *((char **)t43);
    xsi_vlogfile_write(1, 0, 3, ng0, 8, t0, (char)118, t4, 8, (char)118, t7, 16, (char)118, t10, 16, (char)118, t13, 16, (char)118, t17, 16, (char)118, t31, 16, (char)118, t44, 8);

LAB1:    return;
}

static void Initial_91_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    t1 = (t0 + 3328U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(91, ng3);

LAB4:    xsi_set_current_line(92, ng3);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1928);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(93, ng3);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2088);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(94, ng3);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2248);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(95, ng3);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2408);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 16);
    xsi_set_current_line(96, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB5;

LAB1:    return;
LAB5:    xsi_set_current_line(98, ng3);
    xsi_vlogfile_write(1, 0, 0, ng5, 1, t0);
    xsi_set_current_line(99, ng3);
    Monitor_99_1(t0);
    xsi_set_current_line(101, ng3);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(102, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB6;
    goto LAB1;

LAB6:    xsi_set_current_line(102, ng3);
    t3 = ((char*)((ng1)));
    t4 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(103, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB7;
    goto LAB1;

LAB7:    xsi_set_current_line(103, ng3);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2088);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 1, 0LL);
    xsi_set_current_line(104, ng3);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 16, 0LL);
    xsi_set_current_line(105, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB8;
    goto LAB1;

LAB8:    xsi_set_current_line(105, ng3);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(106, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB9;
    goto LAB1;

LAB9:    xsi_set_current_line(106, ng3);
    t3 = ((char*)((ng8)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(107, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB10;
    goto LAB1;

LAB10:    xsi_set_current_line(107, ng3);
    t3 = ((char*)((ng9)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(108, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB11:    xsi_set_current_line(108, ng3);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(110, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB12;
    goto LAB1;

LAB12:    xsi_set_current_line(110, ng3);
    t3 = ((char*)((ng10)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(111, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB13;
    goto LAB1;

LAB13:    xsi_set_current_line(111, ng3);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(112, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB14;
    goto LAB1;

LAB14:    xsi_set_current_line(112, ng3);
    t3 = ((char*)((ng11)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(113, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB15:    xsi_set_current_line(113, ng3);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(115, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB16:    xsi_set_current_line(115, ng3);
    t3 = ((char*)((ng12)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(117, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB17:    xsi_set_current_line(117, ng3);
    t3 = ((char*)((ng13)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(118, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB18;
    goto LAB1;

LAB18:    xsi_set_current_line(118, ng3);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(119, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB19:    xsi_set_current_line(119, ng3);
    t3 = ((char*)((ng14)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(120, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB20:    xsi_set_current_line(120, ng3);
    t3 = ((char*)((ng7)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    xsi_set_current_line(122, ng3);
    t2 = (t0 + 3136);
    xsi_process_wait(t2, 10000LL);
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB21:    xsi_set_current_line(122, ng3);
    t3 = ((char*)((ng15)));
    t4 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 16, 0LL);
    goto LAB1;

}

static void Always_125_2(char *t0)
{
    char t3[8];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;

LAB0:    t1 = (t0 + 3576U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(125, ng3);
    t2 = (t0 + 3384);
    xsi_process_wait(t2, 5000LL);
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(125, ng3);
    t4 = (t0 + 1928);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memset(t3, 0, 8);
    t7 = (t6 + 4);
    t8 = *((unsigned int *)t7);
    t9 = (~(t8));
    t10 = *((unsigned int *)t6);
    t11 = (t10 & t9);
    t12 = (t11 & 1U);
    if (t12 != 0)
        goto LAB8;

LAB6:    if (*((unsigned int *)t7) == 0)
        goto LAB5;

LAB7:    t13 = (t3 + 4);
    *((unsigned int *)t3) = 1;
    *((unsigned int *)t13) = 1;

LAB8:    t14 = (t3 + 4);
    t15 = (t6 + 4);
    t16 = *((unsigned int *)t6);
    t17 = (~(t16));
    *((unsigned int *)t3) = t17;
    *((unsigned int *)t14) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB10;

LAB9:    t22 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t22 & 1U);
    t23 = *((unsigned int *)t14);
    *((unsigned int *)t14) = (t23 & 1U);
    t24 = (t0 + 1928);
    xsi_vlogvar_assign_value(t24, t3, 0, 0, 1);
    goto LAB2;

LAB5:    *((unsigned int *)t3) = 1;
    goto LAB8;

LAB10:    t18 = *((unsigned int *)t3);
    t19 = *((unsigned int *)t15);
    *((unsigned int *)t3) = (t18 | t19);
    t20 = *((unsigned int *)t14);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t14) = (t20 | t21);
    goto LAB9;

}

void Monitor_99_1(char *t0)
{
    char *t1;
    char *t2;

LAB0:    t1 = (t0 + 3632);
    t2 = (t0 + 4144);
    xsi_vlogfile_monitor((void *)Monitor_99_1_Func, t1, t2);

LAB1:    return;
}


extern void work_m_00000000003645909919_1786693027_init()
{
	static char *pe[] = {(void *)Initial_91_0,(void *)Always_125_2,(void *)Monitor_99_1};
	xsi_register_didat("work_m_00000000003645909919_1786693027", "isim/test3_isim_beh.exe.sim/work/m_00000000003645909919_1786693027.didat");
	xsi_register_executes(pe);
}
