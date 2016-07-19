.class public Lcom/yelp/android/ui/activities/reviewpage/c;
.super Lcom/yelp/android/ui/util/w;
.source "ReviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/reviewpage/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
        "<",
        "Lcom/yelp/android/serializable/YelpBusinessReview;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/yelp/android/appdata/webrequests/YelpException;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/reviewpage/c;->b:Z

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/c$a;)V
    .locals 0

    .prologue
    .line 35
    invoke-static {p0}, Lcom/yelp/android/ui/activities/reviewpage/c;->c(Lcom/yelp/android/ui/activities/reviewpage/c$a;)V

    return-void
.end method

.method private b(Lcom/yelp/android/ui/activities/reviewpage/c$a;)V
    .locals 2

    .prologue
    .line 317
    iget-object v0, p1, Lcom/yelp/android/ui/activities/reviewpage/c$a;->p:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v0, p1, Lcom/yelp/android/ui/activities/reviewpage/c$a;->q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 322
    iget-object v0, p1, Lcom/yelp/android/ui/activities/reviewpage/c$a;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    .line 325
    invoke-static {p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->c(Lcom/yelp/android/ui/activities/reviewpage/c$a;)V

    .line 339
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v0, p1, Lcom/yelp/android/ui/activities/reviewpage/c$a;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 328
    new-instance v1, Lcom/yelp/android/ui/activities/reviewpage/c$1;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c$1;-><init>(Lcom/yelp/android/ui/activities/reviewpage/c;Lcom/yelp/android/ui/activities/reviewpage/c$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0
.end method

.method private b(I)Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/c;->a:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Lcom/yelp/android/ui/activities/reviewpage/c$a;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 348
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->p:Landroid/widget/TextView;

    .line 350
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->p:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 114
    if-nez p2, :cond_0

    .line 115
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030143

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 118
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;

    invoke-direct {v0, p2, v2}, Lcom/yelp/android/ui/activities/reviewpage/c$a;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 120
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;

    .line 121
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v6

    .line 122
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 124
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->u()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->c:Lcom/yelp/android/ui/widgets/AwardBanner;

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/AwardBanner;->setVisibility(I)V

    .line 127
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->d:Lcom/yelp/android/ui/widgets/AwardBanner;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/AwardBanner;->setVisibility(I)V

    .line 152
    :goto_0
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->l:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->O()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->r()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 154
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->m:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->m:Landroid/widget/TextView;

    const v4, 0x7f070281

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/yelp/android/serializable/User;->j()Ljava/util/Date;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :goto_1
    const v1, 0x7f080010

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->A()I

    move-result v4

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->A()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v7, v1, v4, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 167
    iget-object v8, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->n:Landroid/widget/TextView;

    iget-boolean v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->a:Z

    if-eqz v1, :cond_9

    move-object v1, v4

    :goto_2
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 173
    const v1, 0x7f080025

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->B()I

    move-result v4

    new-array v8, v5, [Ljava/lang/Object;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->B()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v7, v1, v4, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 178
    iget-object v8, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->o:Landroid/widget/TextView;

    iget-boolean v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->a:Z

    if-eqz v1, :cond_a

    move-object v1, v4

    :goto_3
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 184
    iget-boolean v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->a:Z

    invoke-static {v1, v6, v7}, Lcom/yelp/android/serializable/Passport;->a(ZLcom/yelp/android/serializable/YelpBusinessReview;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 185
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->p:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->p:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 188
    iget-boolean v4, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->a:Z

    if-eqz v4, :cond_1

    .line 189
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->q:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->q:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->b(Lcom/yelp/android/ui/activities/reviewpage/c$a;)V

    .line 197
    :cond_1
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->k:Lcom/yelp/android/ui/widgets/WebImageView;

    iget-boolean v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->a:Z

    if-eqz v1, :cond_b

    sget-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->CLIP:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    :goto_4
    invoke-virtual {v4, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setForceMode(Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;)V

    .line 203
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->z()I

    move-result v1

    if-lez v1, :cond_d

    .line 204
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->j()I

    move-result v1

    if-lez v1, :cond_c

    .line 206
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->i:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->z()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_5
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->i:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->n()Lcom/yelp/android/serializable/RankTitle$Rank;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/RankTitle$Rank;->getRankIcon()I

    move-result v4

    invoke-virtual {v1, v4, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 221
    :goto_6
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 222
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->j()I

    move-result v1

    if-lez v1, :cond_e

    .line 223
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->j:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->h()I

    move-result v4

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->i()I

    move-result v7

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->j()I

    move-result v8

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v9

    invoke-virtual {v9}, Lcom/yelp/android/appdata/AppData;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v2, v4, v7, v8, v9}, Lcom/yelp/android/serializable/Passport;->a(ZIIILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    :cond_2
    :goto_7
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->k:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/WebImageView;->reset()V

    .line 238
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->k:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->N()Ljava/lang/String;

    move-result-object v4

    const v7, 0x7f0200c6

    invoke-virtual {v1, v4, v7}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 239
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->C()I

    move-result v4

    int-to-double v8, v4

    invoke-static {v1, v8, v9}, Lcom/yelp/android/ui/util/ar;->a(Landroid/widget/ImageView;D)V

    .line 241
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->T()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_f

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->T()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    move v1, v5

    .line 243
    :goto_8
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->g:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    move v1, v2

    :goto_9
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-boolean v1, p0, Lcom/yelp/android/ui/activities/reviewpage/c;->b:Z

    if-nez v1, :cond_16

    .line 247
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 250
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->p()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->G()Lcom/yelp/android/serializable/TranslatedReview;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 251
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->G()Lcom/yelp/android/serializable/TranslatedReview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/TranslatedReview;->c()Ljava/lang/String;

    move-result-object v1

    .line 255
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->r:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 258
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->r:Landroid/view/View;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->G()Lcom/yelp/android/serializable/TranslatedReview;

    move-result-object v5

    invoke-virtual {v5}, Lcom/yelp/android/serializable/TranslatedReview;->a()Z

    move-result v5

    if-eqz v5, :cond_11

    :goto_a
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 270
    :cond_3
    :goto_b
    iget-object v2, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->h:Landroid/widget/TextView;

    iget-boolean v3, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->a:Z

    if-eqz v3, :cond_13

    :goto_c
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :cond_4
    :goto_d
    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->f:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->W()Ljava/util/Date;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    return-object p2

    .line 130
    :cond_5
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->V()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_7

    .line 133
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->c:Lcom/yelp/android/ui/widgets/AwardBanner;

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/AwardBanner;->setVisibility(I)V

    .line 134
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->d:Lcom/yelp/android/ui/widgets/AwardBanner;

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/AwardBanner;->setVisibility(I)V

    .line 137
    iget-object v4, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->b:Landroid/view/View;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->D()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_e
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    move v1, v3

    goto :goto_e

    .line 141
    :cond_7
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->b:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->d:Lcom/yelp/android/ui/widgets/AwardBanner;

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/widgets/AwardBanner;->setVisibility(I)V

    .line 144
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->c:Lcom/yelp/android/ui/widgets/AwardBanner;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->V()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const v10, 0x20004

    invoke-static {v4, v8, v9, v10}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/widgets/AwardBanner;->setRightText(Ljava/lang/String;)V

    .line 149
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->c:Lcom/yelp/android/ui/widgets/AwardBanner;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/widgets/AwardBanner;->setVisibility(I)V

    goto/16 :goto_0

    .line 159
    :cond_8
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->m:Landroid/widget/TextView;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 167
    :cond_9
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->A()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 178
    :cond_a
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->B()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_3

    .line 197
    :cond_b
    sget-object v1, Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;->DEFAULT:Lcom/yelp/android/ui/widgets/RoundedWebImageView$RoundingMode;

    goto/16 :goto_4

    .line 209
    :cond_c
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->i:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f080005

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->z()I

    move-result v8

    new-array v9, v2, [Ljava/lang/String;

    invoke-static {v4, v7, v8, v9}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;II[Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 219
    :cond_d
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 234
    :cond_e
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_7

    :cond_f
    move v1, v2

    .line 241
    goto/16 :goto_8

    :cond_10
    move v1, v3

    .line 243
    goto/16 :goto_9

    :cond_11
    move v2, v3

    .line 258
    goto/16 :goto_a

    .line 264
    :cond_12
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->e()Ljava/lang/String;

    move-result-object v1

    .line 265
    iget-object v2, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->r:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 266
    iget-object v2, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->r:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_b

    .line 270
    :cond_13
    const-string/jumbo v3, "\n"

    const-string/jumbo v4, " "

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_c

    .line 277
    :cond_14
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->J()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 278
    iget-object v2, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->h:Landroid/widget/TextView;

    iget-boolean v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->a:Z

    if-eqz v1, :cond_15

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->J()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "\n"

    const-string/jumbo v4, "<br/>"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    :goto_f
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    :cond_15
    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->J()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "\n"

    const-string/jumbo v4, " "

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_f

    .line 284
    :cond_16
    iget-object v1, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->h:Landroid/widget/TextView;

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusinessReview;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_d
.end method

.method public a(I)Lcom/yelp/android/serializable/YelpBusinessReview;
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/w;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusinessReview;

    goto :goto_0
.end method

.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessReview;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/c;->a:Lcom/yelp/android/appdata/webrequests/YelpException;

    .line 49
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/reviewpage/c;->b:Z

    .line 53
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/c;->a:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 362
    if-nez p2, :cond_0

    .line 364
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 365
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 368
    sget v0, Lcom/yelp/android/appdata/n;->j:I

    sget v2, Lcom/yelp/android/appdata/n;->j:I

    sget v3, Lcom/yelp/android/appdata/n;->j:I

    sget v4, Lcom/yelp/android/appdata/n;->j:I

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :goto_0
    move-object v0, v1

    .line 371
    check-cast v0, Landroid/widget/TextView;

    .line 372
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 373
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900ce

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 374
    iget-object v2, p0, Lcom/yelp/android/ui/activities/reviewpage/c;->a:Lcom/yelp/android/appdata/webrequests/YelpException;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/c;->a:Lcom/yelp/android/appdata/webrequests/YelpException;

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/yelp/android/ui/util/w;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(I)Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 96
    .line 97
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 105
    const-string/jumbo v0, "Could not detect the view type of the position %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-object p2

    .line 99
    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/reviewpage/c;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 102
    :pswitch_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/c;->b(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
