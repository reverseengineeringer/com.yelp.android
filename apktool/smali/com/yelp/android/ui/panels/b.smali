.class public Lcom/yelp/android/ui/panels/b;
.super Lcom/yelp/android/ui/util/w;
.source "DealsAndOffersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/panels/b$1;,
        Lcom/yelp/android/ui/panels/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ui/util/w",
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
    .line 53
    invoke-direct {p0}, Lcom/yelp/android/ui/util/w;-><init>()V

    .line 54
    iput-boolean p1, p0, Lcom/yelp/android/ui/panels/b;->a:Z

    .line 55
    return-void
.end method

.method private a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 62
    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 67
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 68
    const v0, 0x7f070238

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    .line 69
    :cond_0
    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, p2, v2

    if-nez v2, :cond_1

    .line 71
    const-string/jumbo v0, ""

    goto :goto_0

    .line 72
    :cond_1
    cmp-long v2, v0, p2

    if-ltz v2, :cond_2

    .line 74
    const v0, 0x7f0702bc

    new-array v1, v7, [Ljava/lang/Object;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, p1, v2}, Lcom/yelp/android/ui/panels/b;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :cond_2
    invoke-static {p2, p3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    const v0, 0x7f0702bd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 80
    :cond_3
    const-wide/32 v2, 0x5265c00

    sub-long v2, p2, v2

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 82
    const v0, 0x7f0702be

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 86
    :cond_4
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 87
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 88
    invoke-virtual {v3, v2}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 91
    cmp-long v4, v0, p2

    if-gez v4, :cond_5

    const-wide/32 v4, 0x240c8400

    add-long/2addr v0, v4

    cmp-long v0, v0, p2

    if-lez v0, :cond_5

    .line 93
    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_1
    const v1, 0x7f07023a

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v6

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 98
    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/yelp/android/ui/panels/b;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const v0, 0x7f0704c1

    invoke-static {p1, v0, p2}, Lcom/yelp/android/services/f;->a(Landroid/content/Context;ILjava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;Lcom/yelp/android/ui/panels/b$a;Lcom/yelp/android/serializable/Offer;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    iget-object v0, p2, Lcom/yelp/android/ui/panels/b$a;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Offer;->h()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->au()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 109
    iget-object v0, p2, Lcom/yelp/android/ui/panels/b$a;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Offer;->a()Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p2, Lcom/yelp/android/ui/panels/b$a;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Offer;->h()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p3}, Lcom/yelp/android/serializable/Offer;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const v0, 0x7f07062e

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/Offer;->m()Lcom/yelp/android/serializable/OfferRedemption;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/OfferRedemption;->i()Ljava/util/Date;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/yelp/android/ui/panels/b;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p2, Lcom/yelp/android/ui/panels/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p2, Lcom/yelp/android/ui/panels/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p3}, Lcom/yelp/android/serializable/Offer;->h()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/util/StringUtils$Format;->LONG:Lcom/yelp/android/util/StringUtils$Format;

    invoke-virtual {v0, p1, v1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Landroid/content/Context;Lcom/yelp/android/util/StringUtils$Format;)Ljava/lang/String;

    move-result-object v0

    .line 121
    if-eqz v0, :cond_0

    .line 122
    iget-object v1, p2, Lcom/yelp/android/ui/panels/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p2, Lcom/yelp/android/ui/panels/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Lcom/yelp/android/ui/panels/b$a;Lcom/yelp/android/serializable/YelpDeal;)V
    .locals 8

    .prologue
    const v7, 0x7f0e00fe

    const/4 v6, 0x0

    .line 131
    iget-object v0, p2, Lcom/yelp/android/ui/panels/b$a;->d:Lcom/yelp/android/ui/widgets/WebImageView;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/YelpDeal;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;)V

    .line 132
    iget-object v0, p2, Lcom/yelp/android/ui/panels/b$a;->a:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/YelpDeal;->w()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p2, Lcom/yelp/android/ui/panels/b$a;->b:Landroid/widget/TextView;

    invoke-virtual {p3}, Lcom/yelp/android/serializable/YelpDeal;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-boolean v0, p0, Lcom/yelp/android/ui/panels/b;->a:Z

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {p3}, Lcom/yelp/android/serializable/YelpDeal;->a()Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    .line 145
    :goto_0
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->e()J

    move-result-wide v2

    .line 148
    sget-object v1, Lcom/yelp/android/ui/panels/b$1;->a:[I

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->c()Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 182
    :cond_0
    :goto_1
    return-void

    .line 142
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {p3, v0}, Lcom/yelp/android/serializable/YelpDeal;->a(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    goto :goto_0

    .line 150
    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v4, 0x90321000L

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-gez v0, :cond_0

    .line 151
    invoke-direct {p0, p1, v2, v3}, Lcom/yelp/android/ui/panels/b;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    iget-object v1, p2, Lcom/yelp/android/ui/panels/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    iget-object v0, p2, Lcom/yelp/android/ui/panels/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v0, p2, Lcom/yelp/android/ui/panels/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 161
    :pswitch_1
    invoke-direct {p0, p1, v2, v3}, Lcom/yelp/android/ui/panels/b;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iget-object v1, p2, Lcom/yelp/android/ui/panels/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v0, p2, Lcom/yelp/android/ui/panels/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 166
    iget-object v0, p2, Lcom/yelp/android/ui/panels/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 170
    :pswitch_2
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->f()J

    move-result-wide v0

    .line 171
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-eqz v2, :cond_0

    .line 172
    const v2, 0x7f07062e

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-direct {p0, p1, v4}, Lcom/yelp/android/ui/panels/b;->a(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p2, Lcom/yelp/android/ui/panels/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p2, Lcom/yelp/android/ui/panels/b$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 148
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
    .line 186
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 188
    if-nez p2, :cond_0

    .line 189
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03017d

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 192
    new-instance v0, Lcom/yelp/android/ui/panels/b$a;

    invoke-direct {v0, p2}, Lcom/yelp/android/ui/panels/b$a;-><init>(Landroid/view/View;)V

    .line 193
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 196
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/b$a;

    .line 197
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/panels/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    .line 199
    instance-of v3, v1, Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v3, :cond_2

    .line 200
    check-cast v1, Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {p0, v2, v0, v1}, Lcom/yelp/android/ui/panels/b;->a(Landroid/content/Context;Lcom/yelp/android/ui/panels/b$a;Lcom/yelp/android/serializable/YelpDeal;)V

    .line 205
    :cond_1
    :goto_0
    return-object p2

    .line 201
    :cond_2
    instance-of v3, v1, Lcom/yelp/android/serializable/Offer;

    if-eqz v3, :cond_1

    .line 202
    check-cast v1, Lcom/yelp/android/serializable/Offer;

    invoke-virtual {p0, v2, v0, v1}, Lcom/yelp/android/ui/panels/b;->a(Landroid/content/Context;Lcom/yelp/android/ui/panels/b$a;Lcom/yelp/android/serializable/Offer;)V

    goto :goto_0
.end method
