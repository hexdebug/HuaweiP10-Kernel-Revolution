/******************************************************************************
   ��Ȩ���� (C), 2001-2015, ��Ϊ�������޹�˾

/******************************************************************************
  �ļ���          :
  �汾��          : 1.0
  ����                : K ��Ŀ��
  ��������     : 2015-10-26
  ����޸�     :
  ��������     : VIO LLT��������
  �����б�     :
  �޸���ʷ     :
  ����                : 2015-10-26
  ����                : s00163283
    �޸�����      : ����
*******************************************************************************/
#ifdef __cplusplus
extern "C" {
#endif

struct LLT_TEST LLT_vio = {
	.vio_dev_ioctl = vio_dev_ioctl,
	.vio_dev_init = vio_dev_init,
	.vio_dev_exit = vio_dev_exit,
};

#ifdef __cplusplus
}
#endif