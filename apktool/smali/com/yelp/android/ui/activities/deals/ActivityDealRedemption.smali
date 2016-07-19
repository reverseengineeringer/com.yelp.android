.class public Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityDealRedemption.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# static fields
.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# instance fields
.field a:Landroid/widget/ListView;

.field b:Lcom/yelp/android/appdata/webrequests/az;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Lcom/yelp/android/ui/util/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/ui/util/w",
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

    .line 254
    new-instance v0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption$3;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->e:Lcom/yelp/android/ui/util/w;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/DealPurchase;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 81
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 83
    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 84
    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 85
    return-object v0
.end method

.method private a(ILjava/lang/String;Z)Landroid/text/Spanned;
    .locals 5

    .prologue
    .line 89
    if-eqz p3, :cond_0

    const-string/jumbo v0, "<br>"

    .line 90
    :goto_0
    const v1, 0x7f070239

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

    .line 89
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
    const v10, 0x7f0f057a

    const v9, 0x7f0f0579

    const/16 v8, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    .line 145
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DealPurchase;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    .line 146
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->e:Lcom/yelp/android/ui/util/w;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->z()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/w;->a(Ljava/util/List;)V

    .line 147
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->c()Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    move-result-object v4

    .line 149
    const v0, 0x7f0f0164

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/DealPurchase;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    const v0, 0x7f0f01be

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1, p0}, Lcom/yelp/android/serializable/YelpDeal;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->a()Ljava/lang/String;

    move-result-object v5

    .line 153
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->b()Ljava/lang/String;

    move-result-object v6

    .line 154
    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    move v1, v2

    .line 155
    :goto_0
    const v0, 0x7f0f050e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v7, 0x7f070234

    invoke-direct {p0, v7, v5, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(ILjava/lang/String;Z)Landroid/text/Spanned;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    if-nez v1, :cond_3

    .line 161
    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v5, 0x7f0704c4

    invoke-direct {p0, v5, v6, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(ILjava/lang/String;Z)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->z()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 173
    const v0, 0x7f0f057b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 178
    :goto_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c:Landroid/view/View;

    const v1, 0x7f0f052c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/DealPurchase;->i()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 181
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->t()Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_0
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 187
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    if-ne v0, v4, :cond_5

    .line 188
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->e()V

    .line 189
    const v0, 0x7f07062c

    .line 194
    :goto_3
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->setTitle(Ljava/lang/CharSequence;)V

    .line 196
    const v0, 0x7f0704c1

    new-instance v1, Ljava/util/Date;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/DealPurchase;->e()J

    move-result-wide v6

    invoke-direct {v1, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {p0, v0, v1}, Lcom/yelp/android/services/f;->a(Landroid/content/Context;ILjava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 201
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/DealPurchase;->c()Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    move-result-object v5

    if-ne v0, v5, :cond_1

    .line 202
    const v0, 0x7f0f0165

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 203
    iget-object v5, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v5}, Lcom/yelp/android/serializable/YelpDeal;->i()Lcom/yelp/android/serializable/YelpDeal$a;

    move-result-object v5

    iget-object v5, v5, Lcom/yelp/android/serializable/YelpDeal$a;->a:Ljava/lang/String;

    .line 204
    const v6, 0x7f0701d5

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v1, v7, v3

    aput-object v5, v7, v2

    invoke-virtual {p0, v6, v7}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 206
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    if-ne v0, v4, :cond_6

    .line 210
    invoke-virtual {p0, v10}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f0704bc

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {p0, v4, v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_4
    return-void

    :cond_2
    move v1, v3

    .line 154
    goto/16 :goto_0

    .line 166
    :cond_3
    const v0, 0x7f0f0578

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 167
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 168
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 169
    invoke-virtual {p0, v9}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 175
    :cond_4
    const v0, 0x7f0f057b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 191
    :cond_5
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->f()V

    .line 192
    const v0, 0x7f0704db

    goto/16 :goto_3

    .line 213
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
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.yelp.android.deal_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    const-string/jumbo v1, "extra.yelp_deal"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 283
    const-string/jumbo v1, "extra.deal_purchased"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->sendBroadcast(Landroid/content/Intent;)V

    .line 285
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 293
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02011b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 295
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->h:Landroid/widget/Button;

    const v1, 0x7f0701d4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 296
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->h:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption$4;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 307
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->i:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->h:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->h:Landroid/widget/Button;

    const v1, 0x7f0703af

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->h:Landroid/widget/Button;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption$5;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
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
    .line 353
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 354
    const-string/jumbo v1, "deal_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpDeal;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string/jumbo v1, "deal_purchase_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/DealPurchase;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    return-object v0
.end method


# virtual methods
.method public a()Lcom/yelp/android/appdata/webrequests/az;
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->getLastCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/az;

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
    .line 335
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getIntent()Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 336
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->k:Lcom/yelp/android/serializable/DealPurchase;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->d()V

    .line 337
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->d()V

    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->i:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 339
    const v0, 0x7f04001b

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 342
    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 343
    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->setResult(ILandroid/content/Intent;)V

    .line 344
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 345
    return-void
.end method

.method public b()Lcom/yelp/android/appdata/webrequests/az;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->b:Lcom/yelp/android/appdata/webrequests/az;

    return-object v0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 289
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->DealRedemption:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
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
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a()Lcom/yelp/android/appdata/webrequests/az;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->e()V

    .line 325
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 328
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 331
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

    .line 103
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->setContentView(I)V

    .line 105
    invoke-virtual {p0, v4}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->setResult(I)V

    .line 106
    const v0, 0x7f0f0122

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->i:Landroid/widget/ImageView;

    .line 107
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a()Lcom/yelp/android/appdata/webrequests/az;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->b:Lcom/yelp/android/appdata/webrequests/az;

    .line 108
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->b:Lcom/yelp/android/appdata/webrequests/az;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->b:Lcom/yelp/android/appdata/webrequests/az;

    invoke-virtual {v0, p0}, Lcom/yelp/android/appdata/webrequests/az;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 112
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301d9

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->d:Landroid/view/View;

    .line 113
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301ae

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v5, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    const v0, 0x7f0f0157

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->d:Landroid/view/View;

    invoke-virtual {v0, v1, v7, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v7, v4}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->e:Lcom/yelp/android/ui/util/w;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 126
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setClickable(Z)V

    .line 128
    const v0, 0x7f0f0167

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->h:Landroid/widget/Button;

    .line 129
    const v0, 0x7f0f057b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0705c6

    new-array v2, v6, [Ljava/lang/Object;

    const v3, 0x7f07023b

    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c()V

    .line 136
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 219
    const/16 v0, 0x12c

    if-ne p1, v0, :cond_0

    .line 220
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0703b0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0704da

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0706cd

    new-instance v2, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption$2;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption$2;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0703b2

    new-instance v2, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption$1;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 251
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
    .line 361
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 362
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f10001b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->j:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->r()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 366
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 367
    const v1, 0x7f0f04ad

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 368
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
    .line 349
    invoke-virtual {p2, p0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 350
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->setIntent(Landroid/content/Intent;)V

    .line 98
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->c()V

    .line 99
    return-void
.end method

.method public synthetic onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->b()Lcom/yelp/android/appdata/webrequests/az;

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
