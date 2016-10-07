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
static const char *ng0 = "E:/Xilinx/workspace/pcpu/single_clk_cpu/alu.v";
static unsigned int ng1[] = {1U, 0U};
static int ng2[] = {1, 0};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {3U, 0U};
static unsigned int ng5[] = {4U, 0U};
static unsigned int ng6[] = {5U, 0U};
static unsigned int ng7[] = {6U, 0U};
static unsigned int ng8[] = {7U, 0U};
static unsigned int ng9[] = {8U, 0U};
static unsigned int ng10[] = {9U, 0U};
static unsigned int ng11[] = {10U, 0U};
static unsigned int ng12[] = {11U, 0U};
static unsigned int ng13[] = {13U, 0U};
static unsigned int ng14[] = {0U, 0U};
static unsigned int ng15[] = {12U, 0U};
static int ng16[] = {0, 0};
static int ng17[] = {2, 0};
static unsigned int ng18[] = {14U, 0U};



static void Always_25_0(char *t0)
{
    char t10[8];
    char t12[8];
    char t44[8];
    char t45[8];
    char t51[8];
    char t54[8];
    char t61[8];
    char t69[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    unsigned int t43;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t52;
    char *t53;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t62;
    char *t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    int t75;

LAB0:    t1 = (t0 + 2848U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 3168);
    *((int *)t2) = 1;
    t3 = (t0 + 2880);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(26, ng0);

LAB5:    xsi_set_current_line(27, ng0);
    t4 = (t0 + 1368U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng6)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB33;

LAB34:
LAB36:
LAB35:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = (t0 + 1928);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    xsi_vlogtype_concat(t10, 19, 19, 2U, t9, 3, t4, 16);
    t11 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t11, t10, 0, 0, 16, 0LL);
    t13 = (t0 + 1928);
    xsi_vlogvar_wait_assign_value(t13, t10, 16, 0, 3, 0LL);

LAB37:    goto LAB2;

LAB7:    xsi_set_current_line(28, ng0);
    t7 = (t0 + 1048U);
    t8 = *((char **)t7);
    t7 = (t0 + 1208U);
    t9 = *((char **)t7);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 17, t8, 16, t9, 16);
    t7 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t7, t10, 0, 0, 16, 0LL);
    t11 = (t0 + 1928);
    t13 = (t0 + 1928);
    t14 = (t13 + 72U);
    t15 = *((char **)t14);
    t16 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t12, t15, 2, t16, 32, 1);
    t17 = (t12 + 4);
    t18 = *((unsigned int *)t17);
    t19 = (!(t18));
    if (t19 == 1)
        goto LAB38;

LAB39:    goto LAB37;

LAB9:    xsi_set_current_line(29, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 17, t4, 16, t7, 16);
    t3 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t3, t10, 0, 0, 16, 0LL);
    t8 = (t0 + 1928);
    t9 = (t0 + 1928);
    t11 = (t9 + 72U);
    t13 = *((char **)t11);
    t14 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t12, t13, 2, t14, 32, 1);
    t15 = (t12 + 4);
    t18 = *((unsigned int *)t15);
    t19 = (!(t18));
    if (t19 == 1)
        goto LAB40;

LAB41:    goto LAB37;

LAB11:    xsi_set_current_line(30, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    t18 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t7);
    t21 = (t18 & t20);
    *((unsigned int *)t10) = t21;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t22 = *((unsigned int *)t3);
    t23 = *((unsigned int *)t8);
    t24 = (t22 | t23);
    *((unsigned int *)t9) = t24;
    t25 = *((unsigned int *)t9);
    t26 = (t25 != 0);
    if (t26 == 1)
        goto LAB42;

LAB43:
LAB44:    t14 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t14, t10, 0, 0, 16, 0LL);
    goto LAB37;

LAB13:    xsi_set_current_line(31, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    t18 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t7);
    t21 = (t18 | t20);
    *((unsigned int *)t10) = t21;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t22 = *((unsigned int *)t3);
    t23 = *((unsigned int *)t8);
    t24 = (t22 | t23);
    *((unsigned int *)t9) = t24;
    t25 = *((unsigned int *)t9);
    t26 = (t25 != 0);
    if (t26 == 1)
        goto LAB45;

LAB46:
LAB47:    t14 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t14, t10, 0, 0, 16, 0LL);
    goto LAB37;

LAB15:    xsi_set_current_line(32, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    t18 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t7);
    t21 = (t18 ^ t20);
    *((unsigned int *)t10) = t21;
    t3 = (t4 + 4);
    t8 = (t7 + 4);
    t9 = (t10 + 4);
    t22 = *((unsigned int *)t3);
    t23 = *((unsigned int *)t8);
    t24 = (t22 | t23);
    *((unsigned int *)t9) = t24;
    t25 = *((unsigned int *)t9);
    t26 = (t25 != 0);
    if (t26 == 1)
        goto LAB48;

LAB49:
LAB50:    t11 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t11, t10, 0, 0, 16, 0LL);
    goto LAB37;

LAB17:    xsi_set_current_line(33, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t10 + 4);
    t8 = (t7 + 4);
    t18 = *((unsigned int *)t7);
    t20 = (t18 >> 0);
    *((unsigned int *)t10) = t20;
    t21 = *((unsigned int *)t8);
    t22 = (t21 >> 0);
    *((unsigned int *)t3) = t22;
    t23 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t23 & 15U);
    t24 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t24 & 15U);
    memset(t12, 0, 8);
    xsi_vlog_unsigned_lshift(t12, 16, t4, 16, t10, 4);
    t9 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t9, t12, 0, 0, 16, 0LL);
    goto LAB37;

LAB19:    xsi_set_current_line(34, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    t3 = (t10 + 4);
    t8 = (t7 + 4);
    t18 = *((unsigned int *)t7);
    t20 = (t18 >> 0);
    *((unsigned int *)t10) = t20;
    t21 = *((unsigned int *)t8);
    t22 = (t21 >> 0);
    *((unsigned int *)t3) = t22;
    t23 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t23 & 15U);
    t24 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t24 & 15U);
    memset(t12, 0, 8);
    xsi_vlog_unsigned_rshift(t12, 16, t4, 16, t10, 4);
    t9 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t9, t12, 0, 0, 16, 0LL);
    goto LAB37;

LAB21:    xsi_set_current_line(35, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t12, 0, 8);
    t3 = (t12 + 4);
    t8 = (t7 + 4);
    t18 = *((unsigned int *)t7);
    t20 = (t18 >> 0);
    *((unsigned int *)t12) = t20;
    t21 = *((unsigned int *)t8);
    t22 = (t21 >> 0);
    *((unsigned int *)t3) = t22;
    t23 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t23 & 15U);
    t24 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t24 & 15U);
    memset(t44, 0, 8);
    xsi_vlog_signed_arith_lshift(t44, 16, t4, 16, t12, 4);
    t9 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t9, t44, 0, 0, 16, 0LL);
    goto LAB37;

LAB23:    xsi_set_current_line(36, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t12, 0, 8);
    t3 = (t12 + 4);
    t8 = (t7 + 4);
    t18 = *((unsigned int *)t7);
    t20 = (t18 >> 0);
    *((unsigned int *)t12) = t20;
    t21 = *((unsigned int *)t8);
    t22 = (t21 >> 0);
    *((unsigned int *)t3) = t22;
    t23 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t23 & 15U);
    t24 = *((unsigned int *)t3);
    *((unsigned int *)t3) = (t24 & 15U);
    memset(t44, 0, 8);
    xsi_vlog_signed_arith_rshift(t44, 16, t4, 16, t12, 4);
    t9 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t9, t44, 0, 0, 16, 0LL);
    goto LAB37;

LAB25:    xsi_set_current_line(37, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_add(t10, 17, t4, 16, t7, 16);
    t3 = (t0 + 1928);
    t8 = (t3 + 56U);
    t9 = *((char **)t8);
    t11 = (t0 + 1928);
    t13 = (t11 + 72U);
    t14 = *((char **)t13);
    t15 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t12, 17, t9, t14, 2, t15, 32, 1);
    memset(t44, 0, 8);
    xsi_vlog_unsigned_add(t44, 17, t10, 17, t12, 17);
    t16 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t16, t44, 0, 0, 16, 0LL);
    t17 = (t0 + 1928);
    t46 = (t0 + 1928);
    t47 = (t46 + 72U);
    t48 = *((char **)t47);
    t49 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t45, t48, 2, t49, 32, 1);
    t50 = (t45 + 4);
    t18 = *((unsigned int *)t50);
    t19 = (!(t18));
    if (t19 == 1)
        goto LAB51;

LAB52:    goto LAB37;

LAB27:    xsi_set_current_line(38, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 17, t4, 16, t7, 16);
    t3 = (t0 + 1928);
    t8 = (t3 + 56U);
    t9 = *((char **)t8);
    t11 = (t0 + 1928);
    t13 = (t11 + 72U);
    t14 = *((char **)t13);
    t15 = ((char*)((ng2)));
    xsi_vlog_generic_get_index_select_value(t12, 17, t9, t14, 2, t15, 32, 1);
    memset(t44, 0, 8);
    xsi_vlog_unsigned_minus(t44, 17, t10, 17, t12, 17);
    t16 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t16, t44, 0, 0, 16, 0LL);
    t17 = (t0 + 1928);
    t46 = (t0 + 1928);
    t47 = (t46 + 72U);
    t48 = *((char **)t47);
    t49 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t45, t48, 2, t49, 32, 1);
    t50 = (t45 + 4);
    t18 = *((unsigned int *)t50);
    t19 = (!(t18));
    if (t19 == 1)
        goto LAB53;

LAB54:    goto LAB37;

LAB29:    xsi_set_current_line(39, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = ((char*)((ng14)));
    t7 = (t0 + 1208U);
    t8 = *((char **)t7);
    memset(t12, 0, 8);
    t7 = (t12 + 4);
    t9 = (t8 + 4);
    t18 = *((unsigned int *)t8);
    t20 = (t18 >> 0);
    *((unsigned int *)t12) = t20;
    t21 = *((unsigned int *)t9);
    t22 = (t21 >> 0);
    *((unsigned int *)t7) = t22;
    t23 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t23 & 255U);
    t24 = *((unsigned int *)t7);
    *((unsigned int *)t7) = (t24 & 255U);
    xsi_vlogtype_concat(t10, 17, 16, 2U, t12, 8, t3, 8);
    memset(t44, 0, 8);
    xsi_vlog_unsigned_add(t44, 17, t4, 16, t10, 17);
    t11 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t11, t44, 0, 0, 16, 0LL);
    t13 = (t0 + 1928);
    t14 = (t0 + 1928);
    t15 = (t14 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t45, t16, 2, t17, 32, 1);
    t46 = (t45 + 4);
    t25 = *((unsigned int *)t46);
    t19 = (!(t25));
    if (t19 == 1)
        goto LAB55;

LAB56:    goto LAB37;

LAB31:    xsi_set_current_line(41, ng0);

LAB57:    xsi_set_current_line(42, ng0);
    t3 = (t0 + 1048U);
    t4 = *((char **)t3);
    t3 = (t0 + 1208U);
    t7 = *((char **)t3);
    memset(t10, 0, 8);
    xsi_vlog_unsigned_minus(t10, 16, t4, 16, t7, 16);
    t3 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t3, t10, 0, 0, 16, 0LL);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t7 = (t10 + 4);
    t8 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t20 = (t18 >> 15);
    t21 = (t20 & 1);
    *((unsigned int *)t10) = t21;
    t22 = *((unsigned int *)t8);
    t23 = (t22 >> 15);
    t24 = (t23 & 1);
    *((unsigned int *)t7) = t24;
    t9 = (t0 + 1928);
    t11 = (t0 + 1928);
    t13 = (t11 + 72U);
    t14 = *((char **)t13);
    t15 = ((char*)((ng16)));
    xsi_vlog_generic_convert_bit_index(t12, t14, 2, t15, 32, 1);
    t16 = (t12 + 4);
    t25 = *((unsigned int *)t16);
    t6 = (!(t25));
    if (t6 == 1)
        goto LAB58;

LAB59:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1928);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t10, 0, 8);
    t7 = (t10 + 4);
    t8 = (t4 + 4);
    t18 = *((unsigned int *)t4);
    t20 = (t18 >> 1);
    t21 = (t20 & 1);
    *((unsigned int *)t10) = t21;
    t22 = *((unsigned int *)t8);
    t23 = (t22 >> 1);
    t24 = (t23 & 1);
    *((unsigned int *)t7) = t24;
    t9 = (t0 + 1928);
    t11 = (t0 + 1928);
    t13 = (t11 + 72U);
    t14 = *((char **)t13);
    t15 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t12, t14, 2, t15, 32, 1);
    t16 = (t12 + 4);
    t25 = *((unsigned int *)t16);
    t6 = (!(t25));
    if (t6 == 1)
        goto LAB60;

LAB61:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1768);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t7 = ((char*)((ng14)));
    memset(t10, 0, 8);
    t8 = (t4 + 4);
    t9 = (t7 + 4);
    t18 = *((unsigned int *)t4);
    t20 = *((unsigned int *)t7);
    t21 = (t18 ^ t20);
    t22 = *((unsigned int *)t8);
    t23 = *((unsigned int *)t9);
    t24 = (t22 ^ t23);
    t25 = (t21 | t24);
    t26 = *((unsigned int *)t8);
    t27 = *((unsigned int *)t9);
    t28 = (t26 | t27);
    t29 = (~(t28));
    t30 = (t25 & t29);
    if (t30 != 0)
        goto LAB65;

LAB62:    if (t28 != 0)
        goto LAB64;

LAB63:    *((unsigned int *)t10) = 1;

LAB65:    t13 = (t0 + 1928);
    t14 = (t0 + 1928);
    t15 = (t14 + 72U);
    t16 = *((char **)t15);
    t17 = ((char*)((ng17)));
    xsi_vlog_generic_convert_bit_index(t12, t16, 2, t17, 32, 1);
    t46 = (t12 + 4);
    t31 = *((unsigned int *)t46);
    t6 = (!(t31));
    if (t6 == 1)
        goto LAB66;

LAB67:    goto LAB37;

LAB33:    xsi_set_current_line(48, ng0);
    t3 = (t0 + 1928);
    t4 = (t3 + 56U);
    t7 = *((char **)t4);
    memset(t12, 0, 8);
    t8 = (t12 + 4);
    t9 = (t7 + 4);
    t18 = *((unsigned int *)t7);
    t20 = (t18 >> 2);
    t21 = (t20 & 1);
    *((unsigned int *)t12) = t21;
    t22 = *((unsigned int *)t9);
    t23 = (t22 >> 2);
    t24 = (t23 & 1);
    *((unsigned int *)t8) = t24;
    t11 = (t0 + 1928);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    memset(t44, 0, 8);
    t15 = (t44 + 4);
    t16 = (t14 + 4);
    t25 = *((unsigned int *)t14);
    t26 = (t25 >> 0);
    t27 = (t26 & 1);
    *((unsigned int *)t44) = t27;
    t28 = *((unsigned int *)t16);
    t29 = (t28 >> 0);
    t30 = (t29 & 1);
    *((unsigned int *)t15) = t30;
    t17 = (t0 + 1048U);
    t46 = *((char **)t17);
    t17 = (t0 + 1208U);
    t47 = *((char **)t17);
    memset(t45, 0, 8);
    xsi_vlog_unsigned_add(t45, 16, t46, 16, t47, 16);
    t17 = (t0 + 1928);
    t48 = (t17 + 56U);
    t49 = *((char **)t48);
    memset(t51, 0, 8);
    t50 = (t51 + 4);
    t52 = (t49 + 4);
    t31 = *((unsigned int *)t49);
    t32 = (t31 >> 1);
    t33 = (t32 & 1);
    *((unsigned int *)t51) = t33;
    t34 = *((unsigned int *)t52);
    t35 = (t34 >> 1);
    t36 = (t35 & 1);
    *((unsigned int *)t50) = t36;
    xsi_vlogtype_concat(t10, 19, 19, 4U, t51, 1, t45, 16, t44, 1, t12, 1);
    t53 = (t0 + 1928);
    t55 = (t0 + 1928);
    t56 = (t55 + 72U);
    t57 = *((char **)t56);
    t58 = ((char*)((ng17)));
    xsi_vlog_generic_convert_bit_index(t54, t57, 2, t58, 32, 1);
    t59 = (t54 + 4);
    t38 = *((unsigned int *)t59);
    t19 = (!(t38));
    if (t19 == 1)
        goto LAB68;

LAB69:    t60 = (t0 + 1928);
    t62 = (t0 + 1928);
    t63 = (t62 + 72U);
    t64 = *((char **)t63);
    t65 = ((char*)((ng16)));
    xsi_vlog_generic_convert_bit_index(t61, t64, 2, t65, 32, 1);
    t66 = (t61 + 4);
    t39 = *((unsigned int *)t66);
    t37 = (!(t39));
    if (t37 == 1)
        goto LAB70;

LAB71:    t67 = (t0 + 1768);
    xsi_vlogvar_wait_assign_value(t67, t10, 2, 0, 16, 0LL);
    t68 = (t0 + 1928);
    t70 = (t0 + 1928);
    t71 = (t70 + 72U);
    t72 = *((char **)t71);
    t73 = ((char*)((ng2)));
    xsi_vlog_generic_convert_bit_index(t69, t72, 2, t73, 32, 1);
    t74 = (t69 + 4);
    t40 = *((unsigned int *)t74);
    t75 = (!(t40));
    if (t75 == 1)
        goto LAB72;

LAB73:    goto LAB37;

LAB38:    xsi_vlogvar_wait_assign_value(t11, t10, 16, *((unsigned int *)t12), 1, 0LL);
    goto LAB39;

LAB40:    xsi_vlogvar_wait_assign_value(t8, t10, 16, *((unsigned int *)t12), 1, 0LL);
    goto LAB41;

LAB42:    t27 = *((unsigned int *)t10);
    t28 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t27 | t28);
    t11 = (t4 + 4);
    t13 = (t7 + 4);
    t29 = *((unsigned int *)t4);
    t30 = (~(t29));
    t31 = *((unsigned int *)t11);
    t32 = (~(t31));
    t33 = *((unsigned int *)t7);
    t34 = (~(t33));
    t35 = *((unsigned int *)t13);
    t36 = (~(t35));
    t19 = (t30 & t32);
    t37 = (t34 & t36);
    t38 = (~(t19));
    t39 = (~(t37));
    t40 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t40 & t38);
    t41 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t41 & t39);
    t42 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t42 & t38);
    t43 = *((unsigned int *)t10);
    *((unsigned int *)t10) = (t43 & t39);
    goto LAB44;

LAB45:    t27 = *((unsigned int *)t10);
    t28 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t27 | t28);
    t11 = (t4 + 4);
    t13 = (t7 + 4);
    t29 = *((unsigned int *)t11);
    t30 = (~(t29));
    t31 = *((unsigned int *)t4);
    t19 = (t31 & t30);
    t32 = *((unsigned int *)t13);
    t33 = (~(t32));
    t34 = *((unsigned int *)t7);
    t37 = (t34 & t33);
    t35 = (~(t19));
    t36 = (~(t37));
    t38 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t38 & t35);
    t39 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t39 & t36);
    goto LAB47;

LAB48:    t27 = *((unsigned int *)t10);
    t28 = *((unsigned int *)t9);
    *((unsigned int *)t10) = (t27 | t28);
    goto LAB50;

LAB51:    xsi_vlogvar_wait_assign_value(t17, t44, 16, *((unsigned int *)t45), 1, 0LL);
    goto LAB52;

LAB53:    xsi_vlogvar_wait_assign_value(t17, t44, 16, *((unsigned int *)t45), 1, 0LL);
    goto LAB54;

LAB55:    xsi_vlogvar_wait_assign_value(t13, t44, 16, *((unsigned int *)t45), 1, 0LL);
    goto LAB56;

LAB58:    xsi_vlogvar_wait_assign_value(t9, t10, 0, *((unsigned int *)t12), 1, 0LL);
    goto LAB59;

LAB60:    xsi_vlogvar_wait_assign_value(t9, t10, 0, *((unsigned int *)t12), 1, 0LL);
    goto LAB61;

LAB64:    t11 = (t10 + 4);
    *((unsigned int *)t10) = 1;
    *((unsigned int *)t11) = 1;
    goto LAB65;

LAB66:    xsi_vlogvar_wait_assign_value(t13, t10, 0, *((unsigned int *)t12), 1, 0LL);
    goto LAB67;

LAB68:    xsi_vlogvar_wait_assign_value(t53, t10, 0, *((unsigned int *)t54), 1, 0LL);
    goto LAB69;

LAB70:    xsi_vlogvar_wait_assign_value(t60, t10, 1, *((unsigned int *)t61), 1, 0LL);
    goto LAB71;

LAB72:    xsi_vlogvar_wait_assign_value(t68, t10, 18, *((unsigned int *)t69), 1, 0LL);
    goto LAB73;

}


extern void work_m_00000000000918461598_2725559894_init()
{
	static char *pe[] = {(void *)Always_25_0};
	xsi_register_didat("work_m_00000000000918461598_2725559894", "isim/test3_isim_beh.exe.sim/work/m_00000000000918461598_2725559894.didat");
	xsi_register_executes(pe);
}
