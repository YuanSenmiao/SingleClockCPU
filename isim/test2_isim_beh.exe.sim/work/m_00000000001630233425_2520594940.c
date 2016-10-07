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
static const char *ng0 = "E:/Xilinx/workspace/pcpu/single_clk_cpu/aludec.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {14U, 0U};
static unsigned int ng6[] = {7U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {4U, 0U};
static unsigned int ng9[] = {8U, 0U};
static unsigned int ng10[] = {5U, 0U};
static unsigned int ng11[] = {10U, 0U};
static unsigned int ng12[] = {11U, 0U};
static unsigned int ng13[] = {12U, 0U};
static unsigned int ng14[] = {13U, 0U};
static unsigned int ng15[] = {9U, 0U};
static unsigned int ng16[] = {15U, 0U};
static unsigned int ng17[] = {27U, 0U};
static unsigned int ng18[] = {15U, 15U};



static void Always_53_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    char *t11;

LAB0:    t1 = (t0 + 2528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2848);
    *((int *)t2) = 1;
    t3 = (t0 + 2560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(54, ng0);

LAB5:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:
LAB14:
LAB13:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1048U);
    t3 = *((char **)t2);

LAB16:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 5, t2, 5);
    if (t6 == 1)
        goto LAB41;

LAB42:    t4 = ((char*)((ng2)));
    t9 = xsi_vlog_unsigned_case_compare(t3, 5, t4, 5);
    if (t9 == 1)
        goto LAB43;

LAB44:    t7 = ((char*)((ng1)));
    t10 = xsi_vlog_unsigned_case_compare(t3, 5, t7, 5);
    if (t10 == 1)
        goto LAB45;

LAB46:
LAB48:
LAB47:    xsi_set_current_line(73, ng0);
    t2 = ((char*)((ng18)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t2, 0, 0, 4, 0LL);

LAB49:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(56, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t8, t7, 0, 0, 4, 0LL);
    goto LAB15;

LAB9:    xsi_set_current_line(57, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB15;

LAB11:    xsi_set_current_line(58, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB15;

LAB17:    xsi_set_current_line(60, ng0);
    t4 = ((char*)((ng4)));
    t7 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB49;

LAB19:    xsi_set_current_line(61, ng0);
    t4 = ((char*)((ng8)));
    t7 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB49;

LAB21:    xsi_set_current_line(62, ng0);
    t4 = ((char*)((ng10)));
    t7 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB49;

LAB23:    xsi_set_current_line(63, ng0);
    t4 = ((char*)((ng7)));
    t7 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB49;

LAB25:    xsi_set_current_line(64, ng0);
    t4 = ((char*)((ng6)));
    t7 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB49;

LAB27:    xsi_set_current_line(65, ng0);
    t4 = ((char*)((ng9)));
    t7 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB49;

LAB29:    xsi_set_current_line(66, ng0);
    t4 = ((char*)((ng15)));
    t7 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB49;

LAB31:    xsi_set_current_line(67, ng0);
    t4 = ((char*)((ng11)));
    t7 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB49;

LAB33:    xsi_set_current_line(68, ng0);
    t4 = ((char*)((ng12)));
    t7 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB49;

LAB35:    xsi_set_current_line(69, ng0);
    t4 = ((char*)((ng13)));
    t7 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB49;

LAB37:    xsi_set_current_line(70, ng0);
    t4 = ((char*)((ng14)));
    t7 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB49;

LAB39:    xsi_set_current_line(71, ng0);
    t4 = ((char*)((ng1)));
    t7 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t7, t4, 0, 0, 4, 0LL);
    goto LAB49;

LAB41:    goto LAB39;

LAB43:    goto LAB39;

LAB45:    xsi_set_current_line(72, ng0);
    t8 = ((char*)((ng16)));
    t11 = (t0 + 1608);
    xsi_vlogvar_wait_assign_value(t11, t8, 0, 0, 4, 0LL);
    goto LAB49;

}


extern void work_m_00000000001630233425_2520594940_init()
{
	static char *pe[] = {(void *)Always_53_0};
	xsi_register_didat("work_m_00000000001630233425_2520594940", "isim/test2_isim_beh.exe.sim/work/m_00000000001630233425_2520594940.didat");
	xsi_register_executes(pe);
}
