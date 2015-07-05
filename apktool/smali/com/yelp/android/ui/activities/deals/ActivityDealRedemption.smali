.class public Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityDealRedemption.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/yelp/android/av/i;


# static fields
.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/ListView;

.field b:Lcom/yelp/android/appdata/webrequests/bi;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Lcom/yelp/android/ui/util/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/au",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/ImageView;

.field private j:Lcom/yelp/android/serializable/YelpDeal;

.field private k:Lcom/yelp/android/serializable/DealPurchase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string/jumbo v0, "deal"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->f:Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "purchase"

    sput-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 236
    new-instance v0, Lcom/yelp/android/ui/activities/deals/l;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/l;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->e:Lcom/yelp/android/ui/util/au;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/DealPurchase;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 83
    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    return-object v0
.end method

.method private a(ILjava/lang/String;Z)Landroid/text/Spanned;
    .locals 5

    .prologue
    .line 88
    if-eqz p3, :cond_0

    const-string/jumbo v0, "<br>"

    .line 89
    :goto_0
    const v1, 0x7f0701ee

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    aput-object p2, v2, v0

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    const-string/jumbo v0, " "

    goto :goto_0
.end method

.method public static a(Landroid/content/Intent;)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            "Lcom/yelp/android/serializable/DealPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->g:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/serializable/DealPurchase;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)Ljava/util/TreeMap;
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->g()Ljava/util/TreeMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)Lcom/yelp/android/serializable/DealPurchase;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    return-object v0
.end method

.method private c()V
    .locals 11

    .prologue
    const v10, 0x7f0c0473

    const v9, 0x7f0c0472

    const/16 v8, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 139
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DealPurchase;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->e:Lcom/yelp/android/ui/util/au;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->getDescription()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/au;->a(Ljava/util/List;)V

    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->getStatus()Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    move-result-object v4

    .line 144
    const v0, 0x7f0c0125

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/DealPurchase;->getRedemptionCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    const v0, 0x7f0c018d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1, p0}, Lcom/yelp/android/serializable/YelpDeal;->getDealTitleWithBizName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->getCustomerName()Ljava/lang/String;

    move-result-object v5

    .line 148
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->getPurchasedByName()Ljava/lang/String;

    move-result-object v6

    .line 149
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 150
    :goto_0
    const v0, 0x7f0c0426

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v7, 0x7f0701e9

    invoke-direct {p0, v7, v5, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(ILjava/lang/String;Z)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    if-nez v1, :cond_3

    .line 154
    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x7f0704ab

    invoke-direct {p0, v5, v6, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(ILjava/lang/String;Z)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getDescription()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 164
    const v0, 0x7f0c0474

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 169
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c:Landroid/view/View;

    const v1, 0x7f0c0442

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/DealPurchase;->getTerms()Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->getTerms()Ljava/lang/String;

    move-result-object v1

    .line 174
    :cond_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 178
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    if-ne v0, v4, :cond_5

    .line 179
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->e()V

    .line 180
    const v0, 0x7f070650

    .line 185
    :goto_3
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->setTitle(Ljava/lang/CharSequence;)V

    .line 187
    const v0, 0x7f0704a8

    new-instance v1, Ljava/util/Date;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/DealPurchase;->getExpirationTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0, v1}, Lcom/yelp/android/services/r;->a(Landroid/content/Context;ILjava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 190
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/DealPurchase;->getStatus()Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    move-result-object v5

    if-ne v0, v5, :cond_1

    .line 191
    const v0, 0x7f0c0126

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 192
    iget-object v5, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpDeal;->getDisplayPrices()Lcom/yelp/android/serializable/ej;

    move-result-object v5

    iget-object v5, v5, Lcom/yelp/android/serializable/ej;->a:Ljava/lang/String;

    .line 193
    const v6, 0x7f070152

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v3

    aput-object v5, v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    if-ne v0, v4, :cond_6

    .line 199
    invoke-virtual {p0, v10}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f0704a3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v4, v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_4
    return-void

    :cond_2
    move v1, v3

    .line 149
    goto/16 :goto_0

    .line 157
    :cond_3
    const v0, 0x7f0c0471

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 158
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 159
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 160
    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 166
    :cond_4
    const v0, 0x7f0c0474

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 182
    :cond_5
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->f()V

    .line 183
    const v0, 0x7f0704c0

    goto/16 :goto_3

    .line 202
    :cond_6
    invoke-virtual {p0, v10}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4
.end method

.method private d()V
    .locals 3

    .prologue
    .line 260
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.yelp.android.deal_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 261
    const-string/jumbo v1, "extra.yelp_deal"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 262
    const-string/jumbo v1, "extra.deal_purchased"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->sendBroadcast(Landroid/content/Intent;)V

    .line 264
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200d7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->h:Landroid/widget/Button;

    const v1, 0x7f070151

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->h:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/m;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/m;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->h:Landroid/widget/Button;

    const v1, 0x7f070373

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->h:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/n;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/n;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    return-void
.end method

.method private g()Ljava/util/TreeMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 331
    const-string/jumbo v1, "deal_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpDeal;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string/jumbo v1, "deal_purchase_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/DealPurchase;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/appdata/webrequests/bi;
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/bi;

    return-object v0
.end method

.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 314
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->setRedeemed()V

    .line 315
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->d()V

    .line 316
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 317
    const v0, 0x7f040015

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 319
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 320
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->setResult(ILandroid/content/Intent;)V

    .line 321
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 322
    return-void
.end method

.method public b()Lcom/yelp/android/appdata/webrequests/bi;
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->b:Lcom/yelp/android/appdata/webrequests/bi;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 268
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->DealRedemption:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public synthetic getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a()Lcom/yelp/android/appdata/webrequests/bi;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->e()V

    .line 301
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 309
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 101
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v0, 0x7f030028

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->setContentView(I)V

    .line 103
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->setResult(I)V

    .line 104
    const v0, 0x7f0c00d6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->i:Landroid/widget/ImageView;

    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a()Lcom/yelp/android/appdata/webrequests/bi;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->b:Lcom/yelp/android/appdata/webrequests/bi;

    .line 106
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->b:Lcom/yelp/android/appdata/webrequests/bi;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->b:Lcom/yelp/android/appdata/webrequests/bi;

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/webrequests/bi;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 110
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03016c

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->d:Landroid/view/View;

    .line 111
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014b

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const v0, 0x7f0c0117

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->d:Landroid/view/View;

    invoke-virtual {v0, v1, v7, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v7, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->e:Lcom/yelp/android/ui/util/au;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setClickable(Z)V

    .line 126
    const v0, 0x7f0c0128

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->h:Landroid/widget/Button;

    .line 127
    const v0, 0x7f0c0474

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0705de

    new-array v2, v6, [Ljava/lang/Object;

    const v3, 0x7f0701f0

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c()V

    .line 131
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 208
    const/16 v0, 0x12c

    if-ne p1, v0, :cond_0

    .line 209
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070374

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0704bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070110

    new-instance v2, Lcom/yelp/android/ui/activities/deals/k;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/k;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070376

    new-instance v2, Lcom/yelp/android/ui/activities/deals/j;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/j;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 338
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 339
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100017

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 340
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getCanonicalBusinessId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 342
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 343
    const v1, 0x7f0c03c9

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 326
    invoke-virtual {p2, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 327
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->setIntent(Landroid/content/Intent;)V

    .line 96
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c()V

    .line 97
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->b()Lcom/yelp/android/appdata/webrequests/bi;

    move-result-object v0

    return-object v0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 53
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
