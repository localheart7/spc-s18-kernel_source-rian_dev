/*
 * sound/soc/sprd/dai/vaudio/vaudio.c
 *
 * SpreadTrum Vaudio for the dsp stream.
 *
 * Copyright (C) 2012 SpreadTrum Ltd.
 *
 * This software is licensed under the terms of the GNU General Public
 * License version 2, as published by the Free Software Foundation, and
 * may be copied, distributed, and modified under those terms.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */
#include "sprd-asoc-debug.h"
#define pr_fmt(fmt) pr_sprd_fmt(" DSP ") fmt

#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/string.h>
#include <linux/sysfs.h>
#include <linux/stat.h>
#include <linux/device.h>
#include <linux/platform_device.h>
#include <linux/slab.h>
#include <linux/of.h>

#include <sound/core.h>
#include <sound/soc.h>
#include <sound/soc-dapm.h>
#include <sound/pcm_params.h>
#include <sound/tlv.h>

#include "sprd-asoc-common.h"
#include "vaudio.h"

static int sprd_vaudio_startup(struct snd_pcm_substream *substream,
			       struct snd_soc_dai *dai)
{
	struct snd_soc_card *card = dai->card;
	int i;

	sp_asoc_pr_dbg("%s\n", __func__);

	kfree(snd_soc_dai_get_dma_data(dai, substream));
	snd_soc_dai_set_dma_data(dai, substream, NULL);

	for (i = 0; i < card->num_rtd; i++) {
		card->rtd[i].dai_link->ignore_suspend = 1;
	}

	return 0;
}

static void sprd_vaudio_shutdown(struct snd_pcm_substream *substream,
				 struct snd_soc_dai *dai)
{
	struct snd_soc_card *card = dai->card;
	int i;

	sp_asoc_pr_dbg("%s\n", __func__);

	for (i = 0; i < card->num_rtd; i++) {
		card->rtd[i].dai_link->ignore_suspend = 0;
	}
}

static struct snd_soc_dai_ops sprd_vaudio_dai_ops = {
	.startup = sprd_vaudio_startup,
	.shutdown = sprd_vaudio_shutdown,
};

struct snd_soc_dai_driver sprd_vaudio_dai[] = {
	{
	 .id = VAUDIO_MAGIC_ID,
	 .name = "vaudio",
	 .playback = {
		      .channels_min = 1,
		      .channels_max = 2,
		      .rates = SNDRV_PCM_RATE_CONTINUOUS,
		      .formats = SNDRV_PCM_FMTBIT_S16_LE,},
	 .capture = {
		     .channels_min = 1,
		     .channels_max = 2,
		     .rates = SNDRV_PCM_RATE_CONTINUOUS,
		     .formats = SNDRV_PCM_FMTBIT_S16_LE,},
	 .ops = &sprd_vaudio_dai_ops,
	 },
	{
	 .id = VAUDIO_MAGIC_ID + 1,
	 .name = "vaudio-ad23",
	 .capture = {
		     .channels_min = 1,
		     .channels_max = 2,	/*ad23 */
		     .rates = SNDRV_PCM_RATE_CONTINUOUS,
		     .formats = SNDRV_PCM_FMTBIT_S16_LE,
		     },
	 .ops = &sprd_vaudio_dai_ops,
	 },
};

static const struct snd_soc_component_driver sprd_vaudio_component = {
	.name = "vaudio",
};

static int sprd_vaudio_drv_probe(struct platform_device *pdev)
{
	int ret;

	sp_asoc_pr_dbg("%s\n", __func__);

	ret =
	    snd_soc_register_component(&pdev->dev, &sprd_vaudio_component,
				       sprd_vaudio_dai,
				       ARRAY_SIZE(sprd_vaudio_dai));

	sp_asoc_pr_dbg("return %i\n", ret);

	return ret;
}

static int sprd_vaudio_drv_remove(struct platform_device *pdev)
{
	snd_soc_unregister_component(&pdev->dev);
	return 0;
}

#ifdef CONFIG_OF
static const struct of_device_id vaudio_of_match[] = {
	{.compatible = "sprd,vaudio",},
	{},
};

MODULE_DEVICE_TABLE(of, vaudio_of_match);
#endif

static struct platform_driver sprd_vaudio_driver = {
	.driver = {
		   .name = "vaudio",
		   .owner = THIS_MODULE,
		   .of_match_table = of_match_ptr(vaudio_of_match),
		   },

	.probe = sprd_vaudio_drv_probe,
	.remove = sprd_vaudio_drv_remove,
};

module_platform_driver(sprd_vaudio_driver);

MODULE_DESCRIPTION("SPRD ASoC Vaudio CUP-DAI driver for the DSP");
MODULE_AUTHOR("Ken Kuang <ken.kuang@spreadtrum.com>");
MODULE_LICENSE("GPL");
MODULE_ALIAS("cpu-dai:sprd-vaudio");
