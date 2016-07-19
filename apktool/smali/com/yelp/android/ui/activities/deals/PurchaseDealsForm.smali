.class public Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "PurchaseDealsForm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$a;,
        Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$b;,
        Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;,
        Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$d;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/yelp/android/ui/panels/ButtonWithIcon;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

.field private g:Lcom/yelp/android/appdata/webrequests/cf;

.field private h:Lcom/yelp/android/appdata/webrequests/dc;

.field private i:Lcom/yelp/android/appdata/webrequests/bz;

.field private j:Lcom/yelp/android/serializable/YelpBusiness;

.field private k:Lcom/yelp/android/serializable/YelpDeal;

.field private l:Lcom/yelp/android/serializable/YelpDealOption;

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lcom/yelp/android/serializable/GiftRecipient;",
            "Lcom/yelp/android/ui/activities/deals/d;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/yelp/android/ui/activities/deals/a;

.field private p:Ljava/lang/String;

.field private q:Z

.field private final r:Lcom/yelp/android/appdata/webrequests/core/c$a;

.field private final s:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/PaymentMethod;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 687
    new-instance v0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$2;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->r:Lcom/yelp/android/appdata/webrequests/core/c$a;

    .line 716
    new-instance v0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$3;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->s:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 998
    return-void
.end method

.method public static final a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/YelpDeal;I)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 162
    const-string/jumbo v1, "BUSINESS.xtra"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 163
    const-string/jumbo v1, "DEAL.xtra"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    const-string/jumbo v1, "OPTION.xtra"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 165
    const v1, 0x7f07039f

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Lcom/yelp/android/appdata/webrequests/dc;)Lcom/yelp/android/appdata/webrequests/dc;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->h:Lcom/yelp/android/appdata/webrequests/dc;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    return-object v0
.end method

.method private a(ILcom/yelp/android/serializable/GiftRecipient;)Lcom/yelp/android/ui/activities/deals/d;
    .locals 5

    .prologue
    .line 555
    if-nez p2, :cond_0

    new-instance v0, Lcom/yelp/android/ui/activities/deals/d;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/d;-><init>(Landroid/content/Context;)V

    .line 559
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    new-instance v1, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$a;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$a;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/d;->setQuantityListener(Lcom/yelp/android/ui/widgets/QuantityDropDownView$a;)V

    .line 561
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/deals/d;->setQuantity(I)V

    .line 563
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->d:Lcom/yelp/android/ui/panels/ButtonWithIcon;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->d:Lcom/yelp/android/ui/panels/ButtonWithIcon;

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->d:Lcom/yelp/android/ui/panels/ButtonWithIcon;

    invoke-virtual {v3}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getPaddingRight()I

    move-result v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->d:Lcom/yelp/android/ui/panels/ButtonWithIcon;

    invoke-virtual {v4}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/deals/d;->setPadding(IIII)V

    .line 568
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->e:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->d:Lcom/yelp/android/ui/panels/ButtonWithIcon;

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 569
    return-object v0

    .line 555
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/deals/d;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/activities/deals/d;-><init>(Landroid/content/Context;Lcom/yelp/android/serializable/GiftRecipient;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->p:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->q:Z

    .line 389
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 412
    :goto_0
    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->getQuantity()I

    move-result v1

    .line 393
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 396
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 397
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/d;->getQuantity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 400
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ay;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->j:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->l:Lcom/yelp/android/serializable/YelpDealOption;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yelp/android/serializable/PaymentMethod;

    new-instance v8, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$d;

    invoke-direct {v8, p0, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$d;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/appdata/webrequests/ay;-><init>(ILjava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/YelpDealOption;Ljava/util/ArrayList;Lcom/yelp/android/serializable/PaymentMethod;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 410
    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ay;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 411
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/support/b;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/GiftRecipient;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 532
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/d;

    .line 533
    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/deals/d;->setQuantity(I)V

    .line 535
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/d;->getQuantity()I

    move-result v1

    .line 536
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->e:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 537
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->getQuantity()I

    move-result v2

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setQuantity(I)V

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 541
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/d;

    .line 542
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 543
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 544
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setVisibility(I)V

    .line 545
    const v1, 0x7f0f01c1

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    .line 546
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    new-instance v2, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$b;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$b;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setQuantityListener(Lcom/yelp/android/ui/widgets/QuantityDropDownView$a;)V

    .line 547
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/d;->getQuantity()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setQuantity(I)V

    .line 548
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->d:Lcom/yelp/android/ui/panels/ButtonWithIcon;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f07030d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 551
    :cond_1
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/GiftRecipient;Landroid/app/PendingIntent;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 496
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->getQuantity()I

    move-result v1

    .line 498
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setVisibility(I)V

    .line 499
    invoke-direct {p0, v1, v4}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(ILcom/yelp/android/serializable/GiftRecipient;)Lcom/yelp/android/ui/activities/deals/d;

    .line 500
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setQuantityListener(Lcom/yelp/android/ui/widgets/QuantityDropDownView$a;)V

    .line 502
    const v0, 0x7f0f01c4

    const v2, 0x7f0f01c3

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    .line 506
    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setVisibility(I)V

    .line 507
    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setEnabled(Z)V

    .line 508
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->l:Lcom/yelp/android/serializable/YelpDealOption;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpDeal;->g()Ljava/util/Currency;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/YelpDealOption;->a(Ljava/util/Currency;)Ljava/math/BigDecimal;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpDeal;->g()Ljava/util/Currency;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->a(Ljava/math/BigDecimal;Ljava/util/Currency;)V

    .line 509
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setQuantity(I)V

    .line 510
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->d:Lcom/yelp/android/ui/panels/ButtonWithIcon;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f07030e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 511
    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/d;

    .line 514
    if-nez v0, :cond_1

    .line 515
    invoke-direct {p0, p3, p1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(ILcom/yelp/android/serializable/GiftRecipient;)Lcom/yelp/android/ui/activities/deals/d;

    move-result-object v0

    .line 516
    new-instance v1, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$13;

    invoke-direct {v1, p0, p2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$13;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/d;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    :cond_1
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/PaymentMethod;)V
    .locals 3

    .prologue
    .line 842
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c:Landroid/view/View;

    const v1, 0x7f0f00ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 844
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c:Landroid/view/View;

    const v2, 0x7f0f00a5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 846
    if-nez p1, :cond_1

    .line 847
    const v2, 0x7f070116

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 848
    const v0, 0x7f020333

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 849
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$4;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$4;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 879
    :goto_1
    return-void

    .line 842
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 861
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PaymentMethod;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PaymentMethod;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 865
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PaymentMethod;->b()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f020135

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 868
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$5;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$5;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Lcom/yelp/android/serializable/PaymentMethod;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/serializable/PaymentMethod;)V

    return-void
.end method

.method private a(Ljava/util/List;[I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/GiftRecipient;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 440
    const v0, 0x7f03004d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->setContentView(I)V

    .line 441
    const v0, 0x7f0f01bd

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->b:Landroid/view/View;

    .line 442
    const v0, 0x7f0f01c1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    .line 443
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->l:Lcom/yelp/android/serializable/YelpDealOption;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpDeal;->g()Ljava/util/Currency;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/serializable/YelpDealOption;->a(Ljava/util/Currency;)Ljava/math/BigDecimal;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpDeal;->g()Ljava/util/Currency;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->a(Ljava/math/BigDecimal;Ljava/util/Currency;)V

    .line 444
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$b;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$b;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setQuantityListener(Lcom/yelp/android/ui/widgets/QuantityDropDownView$a;)V

    .line 445
    const v0, 0x7f0f01c0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->e:Landroid/view/ViewGroup;

    .line 446
    const v0, 0x7f0f01c2

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/ButtonWithIcon;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->d:Lcom/yelp/android/ui/panels/ButtonWithIcon;

    .line 447
    const v0, 0x7f0f01c5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c:Landroid/view/View;

    .line 448
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    aget v1, p2, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setQuantity(I)V

    .line 449
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    .line 450
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GiftRecipient;

    .line 451
    if-eqz v0, :cond_0

    .line 452
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Landroid/content/Context;Lcom/yelp/android/serializable/GiftRecipient;)Landroid/content/Intent;

    move-result-object v4

    .line 455
    const/16 v5, 0x40f

    invoke-virtual {p0, v5, v4, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 457
    aget v5, p2, v1

    invoke-direct {p0, v0, v4, v5}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/serializable/GiftRecipient;Landroid/app/PendingIntent;I)V

    .line 449
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 461
    :cond_1
    const v0, 0x7f0f01be

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 462
    const v1, 0x7f0f01bf

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 464
    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->l:Lcom/yelp/android/serializable/YelpDealOption;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpDealOption;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    const v0, 0x7f0f00e1

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 468
    new-instance v1, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$12;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$12;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    const v0, 0x7f0f01c6

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 477
    const v1, 0x7f07018c

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v3

    .line 480
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v4, Lcom/yelp/android/util/StringUtils$b$a;

    invoke-interface {v3, v2, v1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/yelp/android/util/StringUtils$b$a;

    .line 481
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 482
    array-length v5, v1

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v1, v2

    .line 483
    invoke-interface {v3, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 484
    invoke-interface {v3, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 485
    invoke-interface {v3, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 486
    new-instance v9, Lcom/yelp/android/ui/util/AnalyticsSpan;

    sget-object v10, Lcom/yelp/android/analytics/iris/EventIri;->OpenUrl:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v11, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v11}, Lcom/yelp/android/serializable/YelpDeal;->s()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/yelp/android/ui/util/AnalyticsSpan;-><init>(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;)V

    invoke-virtual {v4, v9, v7, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 482
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 489
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 491
    return-void
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z
    .locals 2

    .prologue
    .line 929
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_0

    .line 930
    check-cast p1, Lcom/yelp/android/appdata/webrequests/ApiException;

    .line 931
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    .line 932
    const/16 v1, 0x516

    if-ne v0, v1, :cond_0

    .line 933
    invoke-virtual {p1, p0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    .line 934
    const/16 v0, 0x133

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    .line 935
    const/4 v0, 0x1

    .line 938
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Lcom/yelp/android/appdata/webrequests/YelpException;)Z
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Z)Z
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->q:Z

    return p1
.end method

.method private b()V
    .locals 2

    .prologue
    .line 575
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c()V

    .line 578
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g:Lcom/yelp/android/appdata/webrequests/cf;

    new-instance v1, Lcom/yelp/android/ui/activities/support/b$c;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/support/b$c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/b$b;)V

    .line 579
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/serializable/YelpDeal;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 582
    new-instance v0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$c;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    .line 583
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g:Lcom/yelp/android/appdata/webrequests/cf;

    if-nez v1, :cond_0

    .line 584
    new-instance v1, Lcom/yelp/android/appdata/webrequests/cf;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/appdata/webrequests/cf;-><init>(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g:Lcom/yelp/android/appdata/webrequests/cf;

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g:Lcom/yelp/android/appdata/webrequests/cf;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/cf;->g([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 587
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g:Lcom/yelp/android/appdata/webrequests/cf;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/cf;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 588
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 592
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g()Landroid/util/Pair;

    move-result-object v1

    .line 594
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 595
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 599
    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->o:Lcom/yelp/android/ui/activities/deals/a;

    invoke-virtual {v3, v2}, Lcom/yelp/android/ui/activities/deals/a;->b(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 600
    const/16 v0, 0x130

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    .line 620
    :goto_0
    return-void

    .line 603
    :cond_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->o:Lcom/yelp/android/ui/activities/deals/a;

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/activities/deals/a;->c(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 604
    const/16 v0, 0x12f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    goto :goto_0

    .line 607
    :cond_1
    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->o:Lcom/yelp/android/ui/activities/deals/a;

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/activities/deals/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 608
    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    goto :goto_0

    .line 611
    :cond_2
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    if-gtz v0, :cond_3

    .line 612
    const/16 v0, 0x132

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    goto :goto_0

    .line 615
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 616
    const/16 v0, 0x131

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    goto :goto_0

    .line 619
    :cond_4
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->d()V

    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 678
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i:Lcom/yelp/android/appdata/webrequests/bz;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i:Lcom/yelp/android/appdata/webrequests/bz;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/bz;->u()Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->enableLoading()V

    .line 680
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bz;

    const-string/jumbo v1, "add_cc"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->r:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/bz;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i:Lcom/yelp/android/appdata/webrequests/bz;

    .line 683
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i:Lcom/yelp/android/appdata/webrequests/bz;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bz;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 685
    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i()V

    return-void
.end method

.method private f()V
    .locals 3

    .prologue
    .line 772
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.yelp.android.deal_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 773
    const-string/jumbo v1, "extra.yelp_deal"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 774
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->sendBroadcast(Landroid/content/Intent;)V

    .line 775
    return-void
.end method

.method static synthetic f(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c()V

    return-void
.end method

.method private g()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1025
    const/4 v1, -0x1

    .line 1026
    const/4 v0, 0x0

    .line 1028
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v2, v0

    move v3, v1

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1029
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/deals/d;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/deals/d;->getQuantity()I

    move-result v1

    .line 1030
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_1
    move v2, v0

    move v3, v1

    .line 1035
    goto :goto_0

    .line 1033
    :cond_0
    add-int v0, v2, v1

    move v1, v3

    goto :goto_1

    .line 1036
    :cond_1
    if-gez v3, :cond_2

    .line 1038
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->getQuantity()I

    move-result v3

    .line 1040
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/serializable/YelpDealOption;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->l:Lcom/yelp/android/serializable/YelpDealOption;

    return-object v0
.end method

.method static synthetic h(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f()V

    return-void
.end method

.method private h()Z
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/appdata/webrequests/dc;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->h:Lcom/yelp/android/appdata/webrequests/dc;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 1048
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->p:Ljava/lang/String;

    .line 1049
    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->s:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    return-object v0
.end method

.method static synthetic k(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Landroid/view/View;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->e()V

    return-void
.end method

.method static synthetic m(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic n(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->q:Z

    return v0
.end method

.method static synthetic o(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Landroid/util/Pair;
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic p(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/ui/activities/deals/a;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->o:Lcom/yelp/android/ui/activities/deals/a;

    return-object v0
.end method

.method static synthetic q(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/ui/panels/ButtonWithIcon;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->d:Lcom/yelp/android/ui/panels/ButtonWithIcon;

    return-object v0
.end method

.method static synthetic r(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Ljava/util/LinkedHashMap;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    return-object v0
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 943
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->DealPurchase:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/a;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/a;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 948
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 949
    const-string/jumbo v1, "deal_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpDeal;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    const-string/jumbo v1, "deal_option_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->l:Lcom/yelp/android/serializable/YelpDealOption;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpDealOption;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v4, 0x40f

    const/4 v0, -0x1

    .line 779
    packed-switch p1, :pswitch_data_0

    .line 831
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 781
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 782
    invoke-static {p3}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a(Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v1

    .line 784
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    .line 786
    invoke-static {p3}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->e()V

    goto :goto_0

    .line 792
    :cond_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/PaymentMethod;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/serializable/PaymentMethod;)V

    goto :goto_0

    .line 797
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 798
    invoke-static {p3}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/GiftRecipient;

    .line 799
    if-eqz v0, :cond_0

    .line 800
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Landroid/content/Context;Lcom/yelp/android/serializable/GiftRecipient;)Landroid/content/Intent;

    move-result-object v1

    .line 801
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v1, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 803
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/serializable/GiftRecipient;Landroid/app/PendingIntent;I)V

    goto :goto_0

    .line 808
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 809
    const/16 v0, 0x40e

    invoke-virtual {p0, p3, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 813
    :pswitch_3
    if-ne p2, v0, :cond_0

    .line 814
    invoke-static {p3}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v1

    .line 817
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/d;->getQuantity()I

    move-result v2

    .line 818
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/GiftRecipient;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/serializable/GiftRecipient;)V

    .line 819
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 820
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/GiftRecipient;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Landroid/content/Context;Lcom/yelp/android/serializable/GiftRecipient;)Landroid/content/Intent;

    move-result-object v0

    .line 821
    const/high16 v3, 0x8000000

    invoke-virtual {p0, v4, v0, v3}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 826
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/GiftRecipient;

    invoke-direct {p0, v0, v3, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/serializable/GiftRecipient;Landroid/app/PendingIntent;I)V

    goto :goto_0

    .line 779
    nop

    :pswitch_data_0
    .packed-switch 0x40d
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 171
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "BUSINESS.xtra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->j:Lcom/yelp/android/serializable/YelpBusiness;

    .line 173
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "DEAL.xtra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    .line 174
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->y()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "OPTION.xtra"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDealOption;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->l:Lcom/yelp/android/serializable/YelpDealOption;

    .line 175
    new-instance v0, Lcom/yelp/android/ui/activities/deals/a;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->l:Lcom/yelp/android/serializable/YelpDealOption;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/a;-><init>(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/YelpDealOption;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->o:Lcom/yelp/android/ui/activities/deals/a;

    .line 177
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    .line 178
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 179
    new-array v1, v4, [I

    aput v4, v1, v3

    .line 180
    if-eqz p1, :cond_1

    .line 181
    const-string/jumbo v0, "GIFTS.xtra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 182
    if-nez v0, :cond_0

    .line 183
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 185
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 186
    const-string/jumbo v1, "QUANTITY.xtra"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 191
    :goto_0
    const-string/jumbo v2, "CARDS.xtra"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    .line 192
    const-string/jumbo v2, "NONCE.xtra"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->p:Ljava/lang/String;

    .line 194
    const-string/jumbo v2, "SaveErrorMessage"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    .line 196
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Ljava/util/List;[I)V

    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/serializable/PaymentMethod;)V

    .line 200
    return-void

    .line 188
    :cond_2
    const-string/jumbo v2, "QUANTITY.xtra"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v3

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 8

    .prologue
    const/4 v4, 0x1

    const v3, 0x7f070492

    const/4 v7, 0x0

    const v1, 0x7f07067f

    const v6, 0x7f02008e

    .line 229
    packed-switch p1, :pswitch_data_0

    .line 384
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 231
    :pswitch_0
    const v0, 0x7f07030f

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 238
    :pswitch_1
    const/16 v0, 0x12e

    if-ne p1, v0, :cond_1

    const v0, 0x7f080027

    .line 243
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->o:Lcom/yelp/android/ui/activities/deals/a;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/deals/a;->a()I

    move-result v2

    .line 244
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 245
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 247
    if-nez v2, :cond_0

    .line 248
    const v0, 0x7f070592

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 249
    const v0, 0x7f07042b

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 251
    :cond_0
    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/util/ar;->c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$1;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 238
    :cond_1
    const v0, 0x7f080028

    goto :goto_1

    .line 266
    :pswitch_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->o:Lcom/yelp/android/ui/activities/deals/a;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/deals/a;->a(I)I

    move-result v2

    .line 267
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f080029

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    if-nez v2, :cond_2

    .line 275
    const v0, 0x7f070592

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    const v0, 0x7f07042a

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 278
    :cond_2
    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/util/ar;->c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 283
    :pswitch_3
    const v0, 0x7f0704c2

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 289
    :pswitch_4
    const v0, 0x7f070697

    invoke-static {p0, v3, v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 297
    :pswitch_5
    const v0, 0x7f070297

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/ar;->c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$6;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$6;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 310
    :pswitch_6
    const v0, 0x7f0704c3

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0704bf

    new-instance v2, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$8;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$8;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07041b

    new-instance v2, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$7;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$7;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 334
    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/ar;->c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07070e

    new-instance v2, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$9;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$9;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 356
    :pswitch_8
    const v0, 0x7f070297

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/ar;->c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070116

    new-instance v2, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$11;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$11;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0706cd

    new-instance v2, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$10;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm$10;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 216
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i:Lcom/yelp/android/appdata/webrequests/bz;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i:Lcom/yelp/android/appdata/webrequests/bz;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/bz;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i:Lcom/yelp/android/appdata/webrequests/bz;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bz;->a(Z)V

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->h:Lcom/yelp/android/appdata/webrequests/dc;

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->h:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/dc;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    .line 223
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->h:Lcom/yelp/android/appdata/webrequests/dc;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/dc;->a(Z)V

    .line 225
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->b()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/PaymentMethod;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/serializable/PaymentMethod;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 416
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 417
    const-string/jumbo v0, "CARDS.xtra"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 418
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 419
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 420
    const/4 v0, 0x0

    .line 421
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 422
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/d;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/d;->getQuantity()I

    move-result v0

    aput v0, v3, v1

    .line 424
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 425
    goto :goto_0

    .line 426
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 427
    const-string/jumbo v0, "GIFTS.xtra"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 428
    const-string/jumbo v0, "QUANTITY.xtra"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 433
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 434
    const-string/jumbo v0, "SaveErrorMessage"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    :cond_1
    const-string/jumbo v0, "NONCE.xtra"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    return-void

    .line 430
    :cond_2
    const-string/jumbo v0, "QUANTITY.xtra"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->getQuantity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method
