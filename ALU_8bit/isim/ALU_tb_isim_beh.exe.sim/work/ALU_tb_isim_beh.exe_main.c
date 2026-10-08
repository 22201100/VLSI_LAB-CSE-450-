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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00994630633679084011_3190593924_init();
    work_m_02996333203379674921_3298147383_init();
    work_m_03433980624206396651_1392471159_init();
    work_m_17658063142308651039_2931155317_init();
    work_m_09314656346549213988_0551568267_init();
    work_m_06464012708494820128_0886308060_init();
    work_m_07850009380488949157_4236420359_init();
    work_m_16541823861846354283_2073120511_init();


    xsi_register_tops("work_m_07850009380488949157_4236420359");
    xsi_register_tops("work_m_16541823861846354283_2073120511");


    return xsi_run_simulation(argc, argv);

}
