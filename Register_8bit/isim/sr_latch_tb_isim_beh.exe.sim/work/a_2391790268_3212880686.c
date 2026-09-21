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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ise/VLSI_LAB_EXMPLES/Register_8bit/SR_Latch_Test1.vhd";
extern char *IEEE_P_2592010699;
extern char *STD_STANDARD;



static void work_a_2391790268_3212880686_p_0(char *t0)
{
    char t13[16];
    char t16[16];
    char t18[16];
    char t25[16];
    char t27[16];
    char t31[16];
    char t36[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t14;
    char *t15;
    char *t17;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    char *t24;
    char *t26;
    char *t28;
    char *t29;
    int t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;

LAB0:    t1 = (t0 + 2664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(24, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(24, ng0);
    t2 = (t0 + 3112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(24, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2472);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t9 = *((unsigned char *)t3);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB10;

LAB11:    t8 = (unsigned char)0;

LAB12:    if (t8 == 0)
        goto LAB8;

LAB9:    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(29, ng0);
    t2 = (t0 + 3112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(29, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2472);
    xsi_process_wait(t2, t7);

LAB15:    *((char **)t1) = &&LAB16;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t2 = (t0 + 4972);
    xsi_report(t2, 27U, (unsigned char)2);
    goto LAB9;

LAB10:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)2);
    t8 = t12;
    goto LAB12;

LAB13:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 0)
        goto LAB17;

LAB18:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(34, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2472);
    xsi_process_wait(t2, t7);

LAB21:    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB14:    goto LAB13;

LAB16:    goto LAB14;

LAB17:    t2 = (t0 + 4999);
    xsi_report(t2, 39U, (unsigned char)2);
    goto LAB18;

LAB19:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t9 = *((unsigned char *)t3);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 1)
        goto LAB25;

LAB26:    t8 = (unsigned char)0;

LAB27:    if (t8 == 0)
        goto LAB23;

LAB24:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 3112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(39, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2472);
    xsi_process_wait(t2, t7);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

LAB23:    t2 = (t0 + 5038);
    xsi_report(t2, 29U, (unsigned char)2);
    goto LAB24;

LAB25:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t11 = *((unsigned char *)t4);
    t12 = (t11 == (unsigned char)3);
    t8 = t12;
    goto LAB27;

LAB28:    xsi_set_current_line(40, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = (t8 == (unsigned char)2);
    if (t9 == 0)
        goto LAB32;

LAB33:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 3112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(45, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2472);
    xsi_process_wait(t2, t7);

LAB36:    *((char **)t1) = &&LAB37;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    t2 = (t0 + 5067);
    xsi_report(t2, 41U, (unsigned char)2);
    goto LAB33;

LAB34:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 5108);
    t4 = ((IEEE_P_2592010699) + 3216);
    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t8 = *((unsigned char *)t6);
    t5 = xsi_char_to_mem(t8);
    t14 = xsi_string_variable_get_image(t13, t4, t5);
    t17 = ((STD_STANDARD) + 984);
    t19 = (t18 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 1;
    t20 = (t19 + 4U);
    *((int *)t20) = 37;
    t20 = (t19 + 8U);
    *((int *)t20) = 1;
    t21 = (37 - 1);
    t22 = (t21 * 1);
    t22 = (t22 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t22;
    t15 = xsi_base_array_concat(t15, t16, t17, (char)97, t2, t18, (char)97, t14, t13, (char)101);
    t20 = (t0 + 5145);
    t26 = ((STD_STANDARD) + 984);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 1;
    t29 = (t28 + 4U);
    *((int *)t29) = 5;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t30 = (5 - 1);
    t22 = (t30 * 1);
    t22 = (t22 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t22;
    t24 = xsi_base_array_concat(t24, t25, t26, (char)97, t15, t16, (char)97, t20, t27, (char)101);
    t29 = ((IEEE_P_2592010699) + 3216);
    t32 = (t0 + 1512U);
    t33 = *((char **)t32);
    t9 = *((unsigned char *)t33);
    t32 = xsi_char_to_mem(t9);
    t34 = xsi_string_variable_get_image(t31, t29, t32);
    t37 = ((STD_STANDARD) + 984);
    t35 = xsi_base_array_concat(t35, t36, t37, (char)97, t24, t25, (char)97, t34, t31, (char)101);
    t38 = (t13 + 12U);
    t22 = *((unsigned int *)t38);
    t39 = (37U + t22);
    t40 = (t39 + 5U);
    t41 = (t31 + 12U);
    t42 = *((unsigned int *)t41);
    t43 = (t40 + t42);
    xsi_report(t35, t43, (unsigned char)0);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3112);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(50, ng0);
    t7 = (20 * 1000LL);
    t2 = (t0 + 2472);
    xsi_process_wait(t2, t7);

LAB40:    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB35:    goto LAB34;

LAB37:    goto LAB35;

LAB38:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 5150);
    t4 = ((IEEE_P_2592010699) + 3216);
    t5 = (t0 + 1352U);
    t6 = *((char **)t5);
    t8 = *((unsigned char *)t6);
    t5 = xsi_char_to_mem(t8);
    t14 = xsi_string_variable_get_image(t13, t4, t5);
    t17 = ((STD_STANDARD) + 984);
    t19 = (t18 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 1;
    t20 = (t19 + 4U);
    *((int *)t20) = 39;
    t20 = (t19 + 8U);
    *((int *)t20) = 1;
    t21 = (39 - 1);
    t22 = (t21 * 1);
    t22 = (t22 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t22;
    t15 = xsi_base_array_concat(t15, t16, t17, (char)97, t2, t18, (char)97, t14, t13, (char)101);
    t20 = (t0 + 5189);
    t26 = ((STD_STANDARD) + 984);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 1;
    t29 = (t28 + 4U);
    *((int *)t29) = 5;
    t29 = (t28 + 8U);
    *((int *)t29) = 1;
    t30 = (5 - 1);
    t22 = (t30 * 1);
    t22 = (t22 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t22;
    t24 = xsi_base_array_concat(t24, t25, t26, (char)97, t15, t16, (char)97, t20, t27, (char)101);
    t29 = ((IEEE_P_2592010699) + 3216);
    t32 = (t0 + 1512U);
    t33 = *((char **)t32);
    t9 = *((unsigned char *)t33);
    t32 = xsi_char_to_mem(t9);
    t34 = xsi_string_variable_get_image(t31, t29, t32);
    t37 = ((STD_STANDARD) + 984);
    t35 = xsi_base_array_concat(t35, t36, t37, (char)97, t24, t25, (char)97, t34, t31, (char)101);
    t38 = (t13 + 12U);
    t22 = *((unsigned int *)t38);
    t39 = (39U + t22);
    t40 = (t39 + 5U);
    t41 = (t31 + 12U);
    t42 = *((unsigned int *)t41);
    t43 = (t40 + t42);
    xsi_report(t35, t43, (unsigned char)0);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 5194);
    xsi_report(t2, 34U, (unsigned char)0);
    xsi_set_current_line(55, ng0);

LAB44:    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB39:    goto LAB38;

LAB41:    goto LAB39;

LAB42:    goto LAB2;

LAB43:    goto LAB42;

LAB45:    goto LAB43;

}


extern void work_a_2391790268_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2391790268_3212880686_p_0};
	xsi_register_didat("work_a_2391790268_3212880686", "isim/sr_latch_tb_isim_beh.exe.sim/work/a_2391790268_3212880686.didat");
	xsi_register_executes(pe);
}
