.class public Lcom/yelp/android/ui/activities/reviewpage/b;
.super Lcom/yelp/android/ui/util/w;
.source "LocalAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviewpage/b$2;,
        Lcom/yelp/android/ui/activities/reviewpage/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/LocalAd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/serializable/YelpBusiness;

.field private b:Lcom/yelp/android/ui/util/t;


# direct methods
.method public constructor <init>(Lcom/yelp/android/serializable/YelpBusiness;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/b;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 39
    invoke-static {p2}, Lcom/yelp/android/ui/util/t;->a(Landroid/content/Context;)Lcom/yelp/android/ui/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b;->b:Lcom/yelp/android/ui/util/t;

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/b;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/b$a;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 164
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b;->b:Lcom/yelp/android/ui/util/t;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->e(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 168
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->e(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 172
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->a:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;->biz_ad_unit_restyling_status_quo:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->f(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    :cond_0
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->g(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/b$a;Landroid/content/Context;)V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 121
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 122
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->a(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->M()I

    move-result v1

    .line 125
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v2

    .line 127
    sget-object v3, Lcom/yelp/android/appdata/experiment/e;->a:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;

    sget-object v4, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;->biz_ad_unit_restyling_status_quo:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;->a(Ljava/lang/Enum;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->b(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->ar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->b(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p3, v1, v4}, Lcom/yelp/android/appdata/LocaleSettings;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 136
    :cond_0
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->f()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 137
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aC()Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 139
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->c(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->c(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->c(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    :cond_2
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->d(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 161
    :goto_1
    return-void

    .line 141
    :cond_3
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aR()Ljava/util/List;

    move-result-object v0

    .line 142
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 143
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->c(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 155
    :cond_4
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->d(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->P()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/TextView;D)V

    .line 156
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->N()I

    move-result v0

    .line 157
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->c(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080025

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private a(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/b$a;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 221
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->b()Lcom/yelp/android/serializable/LocalAdType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/LocalAdType;->CUSTOM_CREATIVE:Lcom/yelp/android/serializable/LocalAdType;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->n()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->n()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->f()Ljava/lang/String;

    move-result-object v0

    .line 227
    :goto_0
    sget-object v1, Lcom/yelp/android/appdata/experiment/e;->a:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;

    sget-object v3, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;->biz_ad_unit_restyling_status_quo:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;

    invoke-virtual {v1, v3}, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;->a(Ljava/lang/Enum;)Z

    move-result v3

    .line 229
    if-eqz v3, :cond_0

    .line 230
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->f(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 233
    :cond_0
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->e(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v3, :cond_2

    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/b;->b:Lcom/yelp/android/ui/util/t;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v1

    if-eqz v3, :cond_3

    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->f(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/ImageView;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 240
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->g(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->g(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    return-void

    .line 224
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->a()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, v2

    .line 233
    goto :goto_1

    .line 234
    :cond_3
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->e(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_2
.end method

.method private b(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/b$a;)V
    .locals 3

    .prologue
    .line 203
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->j()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/reviewpage/b;->a(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/b$a;Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method private b(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/b$a;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 179
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->a:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;

    sget-object v2, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;->biz_ad_unit_restyling_status_quo:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;->a(Ljava/lang/Enum;)Z

    move-result v2

    .line 181
    if-eqz v2, :cond_0

    .line 182
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->f(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    :cond_0
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->e(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v2, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/b;->b:Lcom/yelp/android/ui/util/t;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->g()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusinessReview;->N()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/t;->a(Ljava/lang/String;)Lcom/yelp/android/ui/util/u$a;

    move-result-object v0

    const v3, 0x7f0200c7

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/util/u$a;->b(I)Lcom/yelp/android/ui/util/u$a;

    move-result-object v3

    if-eqz v2, :cond_2

    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->f(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/ImageView;

    move-result-object v0

    :goto_1
    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/util/u$a;->a(Landroid/widget/ImageView;)V

    .line 190
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->g()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->P()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "\n"

    const-string/jumbo v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070506

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->g()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpBusinessReview;->O()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->g(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->g(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 200
    return-void

    :cond_1
    move v0, v1

    .line 184
    goto :goto_0

    .line 185
    :cond_2
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;->e(Lcom/yelp/android/ui/activities/reviewpage/b$a;)Landroid/widget/ImageView;

    move-result-object v0

    goto :goto_1
.end method

.method private c(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/b$a;)V
    .locals 3

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->i()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/reviewpage/b;->a(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/b$a;Ljava/lang/String;)V

    .line 210
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalAd;

    .line 252
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->b()Lcom/yelp/android/serializable/LocalAdType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAdType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 44
    .line 46
    if-nez p2, :cond_0

    .line 48
    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->a:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;

    sget-object v1, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;->biz_ad_unit_restyling_status_quo:Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment$Cohort;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/BizDetailsAdsExperiment;->a(Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f030072

    .line 52
    :goto_0
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/b$a;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/b$a;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 56
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/b$a;

    .line 58
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/LocalAd;

    .line 59
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 61
    invoke-direct {p0, v1, v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/b;->a(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/b$a;Landroid/content/Context;)V

    .line 63
    sget-object v3, Lcom/yelp/android/ui/activities/reviewpage/b$2;->a:[I

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalAd;->b()Lcom/yelp/android/serializable/LocalAdType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/LocalAdType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 80
    :goto_1
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/b$1;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/b$1;-><init>(Lcom/yelp/android/ui/activities/reviewpage/b;Lcom/yelp/android/serializable/LocalAd;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-object p2

    .line 48
    :cond_1
    const v0, 0x7f030073

    goto :goto_0

    .line 65
    :pswitch_0
    invoke-direct {p0, v1, v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/b;->b(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/b$a;Landroid/content/Context;)V

    goto :goto_1

    .line 68
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/b;->b(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/b$a;)V

    goto :goto_1

    .line 71
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/b;->c(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/b$a;)V

    goto :goto_1

    .line 74
    :pswitch_3
    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/b;->a(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/b$a;)V

    goto :goto_1

    .line 63
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 246
    const-class v0, Lcom/yelp/android/serializable/LocalAdType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    return v0
.end method
