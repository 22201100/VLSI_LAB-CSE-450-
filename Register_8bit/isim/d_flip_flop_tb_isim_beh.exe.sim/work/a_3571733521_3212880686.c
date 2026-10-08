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
static const char *ng0 = "/home/ise/VLSI_LAB_EXMPLES/Register_8bit/D_flipflop_Test1.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3571733521_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;

LAB0:    t1 = (t0 + 2664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 3408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(25, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2472);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 3408);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(26, ng0);
    t7 = (10 * 1000LL);
    t2 = (t0 + 2472);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3571733521_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned char t7;
    int64 t8;
    unsigned char t9;

LAB0:    t1 = (t0 + 2912U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3472);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(32, ng0);

LAB6:    t2 = (t0 + 3232);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    t4 = (t0 + 3232);
    *((int *)t4) = 0;
    xsi_set_current_line(32, ng0);
    t8 = (2 * 1000LL);
    t2 = (t0 + 2720);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    t3 = (t0 + 1152U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB4;
    else
        goto LAB6;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t9 = (t7 == (unsigned char)2);
    if (t9 == 0)
        goto LAB12;

LAB13:    xsi_set_current_line(36, ng0);

LAB16:    t2 = (t0 + 3248);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    t2 = (t0 + 5396);
    xsi_report(t2, 38U, (unsigned char)2);
    goto LAB13;

LAB14:    t3 = (t0 + 3248);
    *((int *)t3) = 0;
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 3472);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(38, ng0);
    t8 = (2 * 1000LL);
    t2 = (t0 + 2720);
    xsi_process_wait(t2, t8);

LAB20:    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB15:    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t7 = *((unsigned char *)t4);
    t9 = (t7 == (unsigned char)3);
    if (t9 == 1)
        goto LAB14;
    else
        goto LAB16;

LAB17:    goto LAB15;

LAB18:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t9 = (t7 == (unsigned char)2);
    if (t9 == 0)
        goto LAB22;

LAB23:    xsi_set_current_line(43, ng0);

LAB26:    t2 = (t0 + 3264);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB19:    goto LAB18;

LAB21:    goto LAB19;

LAB22:    t2 = (t0 + 5434);
    xsi_report(t2, 42U, (unsigned char)2);
    goto LAB23;

LAB24:    t3 = (t0 + 3264);
    *((int *)t3) = 0;
    xsi_set_current_line(44, ng0);

LAB30:    t2 = (t0 + 3280);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t7 = *((unsigned char *)t4);
    t9 = (t7 == (unsigned char)2);
    if (t9 == 1)
        goto LAB24;
    else
        goto LAB26;

LAB27:    goto LAB25;

LAB28:    t4 = (t0 + 3280);
    *((int *)t4) = 0;
    xsi_set_current_line(45, ng0);
    t8 = (2 * 1000LL);
    t2 = (t0 + 2720);
    xsi_process_wait(t2, t8);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB29:    t3 = (t0 + 1152U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB28;
    else
        goto LAB30;

LAB31:    goto LAB29;

LAB32:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t9 = (t7 == (unsigned char)3);
    if (t9 == 0)
        goto LAB36;

LAB37:    xsi_set_current_line(49, ng0);

LAB40:    t2 = (t0 + 3296);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB41;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    t2 = (t0 + 5476);
    xsi_report(t2, 44U, (unsigned char)2);
    goto LAB37;

LAB38:    t3 = (t0 + 3296);
    *((int *)t3) = 0;
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 3472);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(51, ng0);
    t8 = (2 * 1000LL);
    t2 = (t0 + 2720);
    xsi_process_wait(t2, t8);

LAB44:    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB39:    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t7 = *((unsigned char *)t4);
    t9 = (t7 == (unsigned char)3);
    if (t9 == 1)
        goto LAB38;
    else
        goto LAB40;

LAB41:    goto LAB39;

LAB42:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t9 = (t7 == (unsigned char)3);
    if (t9 == 0)
        goto LAB46;

LAB47:    xsi_set_current_line(54, ng0);

LAB50:    t2 = (t0 + 3312);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB43:    goto LAB42;

LAB45:    goto LAB43;

LAB46:    t2 = (t0 + 5520);
    xsi_report(t2, 48U, (unsigned char)2);
    goto LAB47;

LAB48:    t3 = (t0 + 3312);
    *((int *)t3) = 0;
    xsi_set_current_line(55, ng0);

LAB54:    t2 = (t0 + 3328);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB55;
    goto LAB1;

LAB49:    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t7 = *((unsigned char *)t4);
    t9 = (t7 == (unsigned char)2);
    if (t9 == 1)
        goto LAB48;
    else
        goto LAB50;

LAB51:    goto LAB49;

LAB52:    t4 = (t0 + 3328);
    *((int *)t4) = 0;
    xsi_set_current_line(56, ng0);
    t8 = (2 * 1000LL);
    t2 = (t0 + 2720);
    xsi_process_wait(t2, t8);

LAB58:    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB53:    t3 = (t0 + 1152U);
    t7 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t7 == 1)
        goto LAB52;
    else
        goto LAB54;

LAB55:    goto LAB53;

LAB56:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t7 = *((unsigned char *)t3);
    t9 = (t7 == (unsigned char)2);
    if (t9 == 0)
        goto LAB60;

LAB61:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 5612);
    xsi_report(t2, 37U, (unsigned char)0);
    xsi_set_current_line(60, ng0);

LAB64:    *((char **)t1) = &&LAB65;
    goto LAB1;

LAB57:    goto LAB56;

LAB59:    goto LAB57;

LAB60:    t2 = (t0 + 5568);
    xsi_report(t2, 44U, (unsigned char)2);
    goto LAB61;

LAB62:    goto LAB2;

LAB63:    goto LAB62;

LAB65:    goto LAB63;

}


extern void work_a_3571733521_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3571733521_3212880686_p_0,(void *)work_a_3571733521_3212880686_p_1};
	xsi_register_didat("work_a_3571733521_3212880686", "isim/d_flip_flop_tb_isim_beh.exe.sim/work/a_3571733521_3212880686.didat");
	xsi_register_executes(pe);
}
