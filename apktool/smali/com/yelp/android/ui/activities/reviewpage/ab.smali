.class public Lcom/yelp/android/ui/activities/reviewpage/ab;
.super Lcom/yelp/android/ui/util/au;
.source "LocalAdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Lcom/yelp/android/serializable/LocalAd;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/serializable/YelpBusiness;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/ab;->a:Lcom/yelp/android/serializable/YelpBusiness;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/reviewpage/ab;)Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/ab;->a:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method private a(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/ae;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 142
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->f(Lcom/yelp/android/ui/activities/reviewpage/ae;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f020090

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 143
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->f(Lcom/yelp/android/ui/activities/reviewpage/ae;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 145
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->g(Lcom/yelp/android/ui/activities/reviewpage/ae;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 146
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->h(Lcom/yelp/android/ui/activities/reviewpage/ae;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 147
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/ae;Landroid/content/Context;)V
    .locals 7

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 101
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 102
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->a(Lcom/yelp/android/ui/activities/reviewpage/ae;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getPrice()I

    move-result v1

    .line 105
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->g()Lcom/yelp/android/appdata/LocaleSettings;

    move-result-object v2

    .line 106
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->b(Lcom/yelp/android/ui/activities/reviewpage/ae;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getLocalizedPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->b(Lcom/yelp/android/ui/activities/reviewpage/ae;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p3, v1, v4}, Lcom/yelp/android/appdata/LocaleSettings;->a(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->isRatingDisabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getAddress1()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 115
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->c(Lcom/yelp/android/ui/activities/reviewpage/ae;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    :cond_0
    :goto_0
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->c(Lcom/yelp/android/ui/activities/reviewpage/ae;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->d(Lcom/yelp/android/ui/activities/reviewpage/ae;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    :goto_1
    return-void

    .line 117
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getNeighborhoods()Ljava/util/List;

    move-result-object v0

    .line 118
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->c(Lcom/yelp/android/ui/activities/reviewpage/ae;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 131
    :cond_2
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->e(Lcom/yelp/android/ui/activities/reviewpage/ae;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 134
    :cond_3
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->e(Lcom/yelp/android/ui/activities/reviewpage/ae;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getAvgRating()F

    move-result v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/cp;->a(Landroid/widget/TextView;F)V

    .line 135
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getReviewCount()I

    move-result v0

    .line 136
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->c(Lcom/yelp/android/ui/activities/reviewpage/ae;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0022

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

.method private a(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/ae;Ljava/lang/String;)V
    .locals 4

    .prologue
    const v3, 0x7f020090

    const/4 v2, 0x0

    .line 178
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->f(Lcom/yelp/android/ui/activities/reviewpage/ae;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 180
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->g(Lcom/yelp/android/ui/activities/reviewpage/ae;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 184
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->getLocalAdType()Lcom/yelp/android/serializable/LocalAdType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/LocalAdType;->CUSTOM_CREATIVE:Lcom/yelp/android/serializable/LocalAdType;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->g(Lcom/yelp/android/ui/activities/reviewpage/ae;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 191
    :goto_0
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->h(Lcom/yelp/android/ui/activities/reviewpage/ae;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->h(Lcom/yelp/android/ui/activities/reviewpage/ae;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    return-void

    .line 187
    :cond_0
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->g(Lcom/yelp/android/ui/activities/reviewpage/ae;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private b(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/ae;)V
    .locals 3

    .prologue
    .line 165
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->getSpecialty()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/reviewpage/ab;->a(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/ae;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method private b(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/ae;Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 150
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->f(Lcom/yelp/android/ui/activities/reviewpage/ae;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 152
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->g(Lcom/yelp/android/ui/activities/reviewpage/ae;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/yelp/android/ui/widgets/WebImageView;->setVisibility(I)V

    .line 153
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->g(Lcom/yelp/android/ui/activities/reviewpage/ae;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->getReview()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f02009c

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 156
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->getReview()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusinessReview;->getTextExcerpt()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070501

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->getReview()Lcom/yelp/android/serializable/YelpBusinessReview;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 160
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->h(Lcom/yelp/android/ui/activities/reviewpage/ae;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-static {p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;->h(Lcom/yelp/android/ui/activities/reviewpage/ae;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    return-void
.end method

.method private c(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/ae;)V
    .locals 3

    .prologue
    .line 170
    invoke-virtual {p1}, Lcom/yelp/android/serializable/LocalAd;->getCustomCreativeText()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n"

    const-string/jumbo v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    invoke-direct {p0, p1, p2, v0}, Lcom/yelp/android/ui/activities/reviewpage/ab;->a(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/ae;Ljava/lang/String;)V

    .line 172
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 202
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/au;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/LocalAd;

    .line 203
    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAd;->getLocalAdType()Lcom/yelp/android/serializable/LocalAdType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/LocalAdType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 37
    .line 38
    if-nez p2, :cond_0

    .line 39
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030063

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 41
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ae;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/activities/reviewpage/ae;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/reviewpage/ae;

    .line 45
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/reviewpage/ab;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/LocalAd;

    .line 46
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 48
    invoke-direct {p0, v1, v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/ab;->a(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/ae;Landroid/content/Context;)V

    .line 50
    sget-object v3, Lcom/yelp/android/ui/activities/reviewpage/ad;->a:[I

    invoke-virtual {v1}, Lcom/yelp/android/serializable/LocalAd;->getLocalAdType()Lcom/yelp/android/serializable/LocalAdType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/LocalAdType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 67
    :goto_0
    new-instance v0, Lcom/yelp/android/ui/activities/reviewpage/ac;

    invoke-direct {v0, p0, v1}, Lcom/yelp/android/ui/activities/reviewpage/ac;-><init>(Lcom/yelp/android/ui/activities/reviewpage/ab;Lcom/yelp/android/serializable/LocalAd;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-object p2

    .line 52
    :pswitch_0
    invoke-direct {p0, v1, v0, v2}, Lcom/yelp/android/ui/activities/reviewpage/ab;->b(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/ae;Landroid/content/Context;)V

    goto :goto_0

    .line 55
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ab;->b(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/ae;)V

    goto :goto_0

    .line 58
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ab;->c(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/ae;)V

    goto :goto_0

    .line 61
    :pswitch_3
    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/activities/reviewpage/ab;->a(Lcom/yelp/android/serializable/LocalAd;Lcom/yelp/android/ui/activities/reviewpage/ae;)V

    goto :goto_0

    .line 50
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
    .line 197
    const-class v0, Lcom/yelp/android/serializable/LocalAdType;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    return v0
.end method
