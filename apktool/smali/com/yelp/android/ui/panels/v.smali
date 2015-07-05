.class public Lcom/yelp/android/ui/panels/v;
.super Lcom/yelp/android/ui/util/au;
.source "DealsAndOffersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/au",
        "<",
        "Landroid/os/Parcelable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/yelp/android/ui/util/au;-><init>()V

    .line 53
    iput-boolean p1, p0, Lcom/yelp/android/ui/panels/v;->a:Z

    .line 54
    return-void
.end method

.method private a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 61
    .line 64
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 66
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 67
    const v0, 0x7f0701ed

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    return-object v0

    .line 70
    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 71
    const-string/jumbo v0, ""

    goto :goto_0

    .line 74
    :cond_1
    cmp-long v2, v0, p2

    if-ltz v2, :cond_2

    .line 75
    const v0, 0x7f070266

    new-array v1, v7, [Ljava/lang/Object;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, p1, v2}, Lcom/yelp/android/ui/panels/v;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :cond_2
    invoke-static {p2, p3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    const v0, 0x7f070267

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :cond_3
    const-wide/32 v2, 0x5265c00

    sub-long v2, p2, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 84
    const v0, 0x7f070268

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_4
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 90
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 91
    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 94
    cmp-long v4, v0, p2

    if-gez v4, :cond_5

    const-wide/32 v4, 0x240c8400

    add-long/2addr v0, v4

    cmp-long v0, v0, p2

    if-lez v0, :cond_5

    .line 96
    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_1
    const v1, 0x7f0701ef

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/yelp/android/ui/panels/v;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const v0, 0x7f0704a8

    invoke-static {p1, v0, p2}, Lcom/yelp/android/services/r;->a(Landroid/content/Context;ILjava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/yelp/android/ui/panels/x;Lcom/yelp/android/serializable/Offer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v0, p2, Lcom/yelp/android/ui/panels/x;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Offer;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 112
    iget-object v0, p2, Lcom/yelp/android/ui/panels/x;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Offer;->getSpan()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v0, p2, Lcom/yelp/android/ui/panels/x;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Offer;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p3}, Lcom/yelp/android/serializable/Offer;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const v0, 0x7f070652

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Offer;->getRedemption()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/OfferRedemption;->getDateRedeemed()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/yelp/android/ui/panels/v;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p2, Lcom/yelp/android/ui/panels/x;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v0, p2, Lcom/yelp/android/ui/panels/x;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    invoke-virtual {p3}, Lcom/yelp/android/serializable/Offer;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/serializable/YelpBusiness;->getDistanceFormatted(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_0

    .line 123
    iget-object v1, p2, Lcom/yelp/android/ui/panels/x;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p2, Lcom/yelp/android/ui/panels/x;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Lcom/yelp/android/ui/panels/x;Lcom/yelp/android/serializable/YelpDeal;)V
    .locals 8

    .prologue
    const v7, 0x7f0a00b2

    const/4 v6, 0x0

    .line 132
    iget-object v0, p2, Lcom/yelp/android/ui/panels/x;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/YelpDeal;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 133
    iget-object v0, p2, Lcom/yelp/android/ui/panels/x;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/YelpDeal;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p2, Lcom/yelp/android/ui/panels/x;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/YelpDeal;->getBusinessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/v;->a:Z

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p3}, Lcom/yelp/android/serializable/YelpDeal;->getFirstUsablePurchase()Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    .line 146
    :goto_0
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->getExpirationTimeMillis()J

    move-result-wide v2

    .line 149
    sget-object v1, Lcom/yelp/android/ui/panels/w;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->getStatus()Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 181
    :cond_0
    :goto_1
    return-void

    .line 143
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {p3, v0}, Lcom/yelp/android/serializable/YelpDeal;->getFirstPurchaseByStatus(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    goto :goto_0

    .line 151
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v4, 0x90321000L

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 152
    invoke-direct {p0, p1, v2, v3}, Lcom/yelp/android/ui/panels/v;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 154
    iget-object v1, p2, Lcom/yelp/android/ui/panels/x;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p2, Lcom/yelp/android/ui/panels/x;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    iget-object v0, p2, Lcom/yelp/android/ui/panels/x;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 162
    :pswitch_1
    invoke-direct {p0, p1, v2, v3}, Lcom/yelp/android/ui/panels/v;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    iget-object v1, p2, Lcom/yelp/android/ui/panels/x;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p2, Lcom/yelp/android/ui/panels/x;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 167
    iget-object v0, p2, Lcom/yelp/android/ui/panels/x;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 171
    :pswitch_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->getRedeemedTimeMillis()J

    move-result-wide v0

    .line 172
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 173
    const v2, 0x7f070652

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, p1, v4}, Lcom/yelp/android/ui/panels/v;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p2, Lcom/yelp/android/ui/panels/x;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p2, Lcom/yelp/android/ui/panels/x;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 185
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 187
    if-nez p2, :cond_0

    .line 188
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03011b

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 190
    new-instance v0, Lcom/yelp/android/ui/panels/x;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/panels/x;-><init>(Landroid/view/View;)V

    .line 191
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/x;

    .line 195
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/v;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 197
    instance-of v3, v1, Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v3, :cond_2

    .line 198
    check-cast v1, Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {p0, v2, v0, v1}, Lcom/yelp/android/ui/panels/v;->a(Landroid/content/Context;Lcom/yelp/android/ui/panels/x;Lcom/yelp/android/serializable/YelpDeal;)V

    .line 203
    :cond_1
    :goto_0
    return-object p2

    .line 199
    :cond_2
    instance-of v3, v1, Lcom/yelp/android/serializable/Offer;

    if-eqz v3, :cond_1

    .line 200
    check-cast v1, Lcom/yelp/android/serializable/Offer;

    invoke-virtual {p0, v2, v0, v1}, Lcom/yelp/android/ui/panels/v;->a(Landroid/content/Context;Lcom/yelp/android/ui/panels/x;Lcom/yelp/android/serializable/Offer;)V

    goto :goto_0
.end method
