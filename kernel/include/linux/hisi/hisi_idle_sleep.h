#ifndef _HISILICON_IDLE_SLEEP_H_
#define _HISILICON_IDLE_SLEEP_H_

enum {
	ID_MODEM = 0,
	ID_IOMCU,
	ID_GPS,
	ID_UFS,
	ID_MUX,
};
extern s32 hisi_idle_sleep_vote(u32 modid,u32 val);
extern u32 hisi_idle_sleep_getval(void);

#endif
