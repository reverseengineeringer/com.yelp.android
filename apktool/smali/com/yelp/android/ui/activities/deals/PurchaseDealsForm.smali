.class public Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "PurchaseDealsForm.java"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Lcom/yelp/android/ui/panels/ButtonWithIcon;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

.field private g:Lcom/yelp/android/appdata/webrequests/cp;

.field private h:Lcom/yelp/android/appdata/webrequests/ea;

.field private i:Lcom/yelp/android/appdata/webrequests/ch;

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
            "Lcom/yelp/android/ui/activities/deals/be;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lcom/yelp/android/ui/activities/deals/ad;

.field private p:Ljava/lang/String;

.field private q:Z

.field private final r:Lcom/yelp/android/av/i;

.field private final s:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
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

    .line 651
    new-instance v0, Lcom/yelp/android/ui/activities/deals/ak;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/ak;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->r:Lcom/yelp/android/av/i;

    .line 678
    new-instance v0, Lcom/yelp/android/ui/activities/deals/am;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/am;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->s:Lcom/yelp/android/appdata/webrequests/m;

    .line 953
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
    const v1, 0x7f070363

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Lcom/yelp/android/appdata/webrequests/ea;)Lcom/yelp/android/appdata/webrequests/ea;
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->h:Lcom/yelp/android/appdata/webrequests/ea;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    return-object v0
.end method

.method private a(ILcom/yelp/android/serializable/GiftRecipient;)Lcom/yelp/android/ui/activities/deals/be;
    .locals 5

    .prologue
    .line 526
    if-nez p2, :cond_0

    new-instance v0, Lcom/yelp/android/ui/activities/deals/be;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/be;-><init>(Landroid/content/Context;)V

    .line 528
    :goto_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    new-instance v1, Lcom/yelp/android/ui/activities/deals/ay;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/ay;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/be;->setQuantityListener(Lcom/yelp/android/ui/widgets/s;)V

    .line 530
    invoke-virtual {v0, p1}, Lcom/yelp/android/ui/activities/deals/be;->setQuantity(I)V

    .line 532
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

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/yelp/android/ui/activities/deals/be;->setPadding(IIII)V

    .line 535
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->e:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->d:Lcom/yelp/android/ui/panels/ButtonWithIcon;

    invoke-virtual {v2}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 536
    return-object v0

    .line 526
    :cond_0
    new-instance v0, Lcom/yelp/android/ui/activities/deals/be;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/activities/deals/be;-><init>(Landroid/content/Context;Lcom/yelp/android/serializable/GiftRecipient;)V

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

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->q:Z

    .line 372
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 386
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->getQuantity()I

    move-result v1

    .line 376
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 377
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

    .line 378
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 379
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/be;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/be;->getQuantity()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 382
    :cond_2
    new-instance v0, Lcom/yelp/android/appdata/webrequests/bh;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->j:Lcom/yelp/android/serializable/YelpBusiness;

    iget-object v4, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->l:Lcom/yelp/android/serializable/YelpDealOption;

    iget-object v7, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/yelp/android/serializable/PaymentMethod;

    new-instance v8, Lcom/yelp/android/ui/activities/deals/bd;

    invoke-direct {v8, p0, p0}, Lcom/yelp/android/ui/activities/deals/bd;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-direct/range {v0 .. v8}, Lcom/yelp/android/appdata/webrequests/bh;-><init>(ILjava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/YelpDealOption;Ljava/util/ArrayList;Lcom/yelp/android/serializable/PaymentMethod;Lcom/yelp/android/appdata/webrequests/m;)V

    .line 384
    new-array v1, v9, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/bh;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 385
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/support/h;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/serializable/GiftRecipient;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 504
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/be;

    .line 505
    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/deals/be;->setQuantity(I)V

    .line 506
    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/be;->getQuantity()I

    move-result v1

    .line 508
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->e:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 509
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->getQuantity()I

    move-result v2

    sub-int v1, v2, v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setQuantity(I)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    .line 512
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/be;

    .line 513
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->e:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 514
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v1, v4}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 515
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setVisibility(I)V

    .line 516
    const v1, 0x7f0c0190

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    iput-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    .line 517
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    new-instance v2, Lcom/yelp/android/ui/activities/deals/az;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/az;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setQuantityListener(Lcom/yelp/android/ui/widgets/s;)V

    .line 518
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/be;->getQuantity()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setQuantity(I)V

    .line 519
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setVisibility(I)V

    .line 520
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->d:Lcom/yelp/android/ui/panels/ButtonWithIcon;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0702c0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 522
    :cond_1
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/GiftRecipient;Landroid/app/PendingIntent;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 470
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->getQuantity()I

    move-result v1

    .line 472
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setVisibility(I)V

    .line 473
    invoke-direct {p0, v1, v4}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(ILcom/yelp/android/serializable/GiftRecipient;)Lcom/yelp/android/ui/activities/deals/be;

    .line 474
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setQuantityListener(Lcom/yelp/android/ui/widgets/s;)V

    .line 476
    const v0, 0x7f0c0193

    const v2, 0x7f0c0192

    invoke-virtual {p0, v0, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(II)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    .line 478
    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setVisibility(I)V

    .line 479
    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setEnabled(Z)V

    .line 480
    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->l:Lcom/yelp/android/serializable/YelpDealOption;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpDeal;->getCurrency()Ljava/util/Currency;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/YelpDealOption;->getDecimalPrice(Ljava/util/Currency;)Ljava/math/BigDecimal;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpDeal;->getCurrency()Ljava/util/Currency;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->a(Ljava/math/BigDecimal;Ljava/util/Currency;)V

    .line 481
    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setQuantity(I)V

    .line 482
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->d:Lcom/yelp/android/ui/panels/ButtonWithIcon;

    invoke-virtual {v1}, Lcom/yelp/android/ui/panels/ButtonWithIcon;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0702c1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 483
    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/be;

    .line 486
    if-nez v0, :cond_1

    .line 487
    invoke-direct {p0, p3, p1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(ILcom/yelp/android/serializable/GiftRecipient;)Lcom/yelp/android/ui/activities/deals/be;

    move-result-object v0

    .line 488
    new-instance v1, Lcom/yelp/android/ui/activities/deals/ax;

    invoke-direct {v1, p0, p2}, Lcom/yelp/android/ui/activities/deals/ax;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/be;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    :cond_1
    return-void
.end method

.method private a(Lcom/yelp/android/serializable/PaymentMethod;)V
    .locals 3

    .prologue
    .line 800
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c:Landroid/view/View;

    const v1, 0x7f0c0119

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 802
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c:Landroid/view/View;

    const v2, 0x7f0c0080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/widgets/WebImageView;

    .line 804
    if-nez p1, :cond_1

    .line 805
    const v2, 0x7f070098

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 806
    const v0, 0x7f020266

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageResource(I)V

    .line 807
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/ao;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/ao;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    :goto_1
    return-void

    .line 800
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 817
    :cond_1
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PaymentMethod;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 819
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PaymentMethod;->getImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 821
    invoke-virtual {p1}, Lcom/yelp/android/serializable/PaymentMethod;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f0200e8

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/widgets/WebImageView;->setImageUrl(Ljava/lang/String;I)V

    .line 824
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/ap;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/ap;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

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

    .line 414
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->setContentView(I)V

    .line 415
    const v0, 0x7f0c018c

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->b:Landroid/view/View;

    .line 416
    const v0, 0x7f0c0190

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->l:Lcom/yelp/android/serializable/YelpDealOption;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpDeal;->getCurrency()Ljava/util/Currency;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/serializable/YelpDealOption;->getDecimalPrice(Ljava/util/Currency;)Ljava/math/BigDecimal;

    move-result-object v1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpDeal;->getCurrency()Ljava/util/Currency;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->a(Ljava/math/BigDecimal;Ljava/util/Currency;)V

    .line 418
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    new-instance v1, Lcom/yelp/android/ui/activities/deals/az;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/az;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setQuantityListener(Lcom/yelp/android/ui/widgets/s;)V

    .line 419
    const v0, 0x7f0c018f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->e:Landroid/view/ViewGroup;

    .line 420
    const v0, 0x7f0c0191

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/panels/ButtonWithIcon;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->d:Lcom/yelp/android/ui/panels/ButtonWithIcon;

    .line 421
    const v0, 0x7f0c0194

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c:Landroid/view/View;

    .line 422
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    aget v1, p2, v2

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->setQuantity(I)V

    .line 423
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    .line 424
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/GiftRecipient;

    .line 425
    if-eqz v0, :cond_0

    .line 426
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Landroid/content/Context;Lcom/yelp/android/serializable/GiftRecipient;)Landroid/content/Intent;

    move-result-object v4

    .line 429
    const/16 v5, 0x40b

    invoke-virtual {p0, v5, v4, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 431
    aget v5, p2, v1

    invoke-direct {p0, v0, v4, v5}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/serializable/GiftRecipient;Landroid/app/PendingIntent;I)V

    .line 423
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 435
    :cond_1
    const v0, 0x7f0c018d

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 436
    const v1, 0x7f0c018e

    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 438
    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->l:Lcom/yelp/android/serializable/YelpDealOption;

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpDealOption;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getBusinessName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    const v0, 0x7f0c00aa

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 442
    new-instance v1, Lcom/yelp/android/ui/activities/deals/aw;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/aw;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    const v0, 0x7f0c0195

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 450
    const v1, 0x7f07010e

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/yelp/android/util/StringUtils;->a(Landroid/content/Context;I[Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v3

    .line 453
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v4, Lcom/yelp/android/util/af;

    invoke-interface {v3, v2, v1, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/yelp/android/util/af;

    .line 454
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 455
    array-length v5, v1

    :goto_1
    if-ge v2, v5, :cond_2

    aget-object v6, v1, v2

    .line 456
    invoke-interface {v3, v6}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 457
    invoke-interface {v3, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 458
    invoke-interface {v3, v6}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 459
    new-instance v9, Lcom/yelp/android/ui/util/AnalyticsSpan;

    sget-object v10, Lcom/yelp/android/analytics/iris/EventIri;->OpenUrl:Lcom/yelp/android/analytics/iris/EventIri;

    iget-object v11, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v11}, Lcom/yelp/android/serializable/YelpDeal;->getTosUrl()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/yelp/android/ui/util/AnalyticsSpan;-><init>(Lcom/yelp/android/analytics/iris/b;Ljava/lang/String;)V

    invoke-virtual {v4, v9, v7, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 455
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 462
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 465
    return-void
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/YelpException;)Z
    .locals 2

    .prologue
    .line 882
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_0

    .line 883
    check-cast p1, Lcom/yelp/android/appdata/webrequests/ApiException;

    .line 884
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    .line 885
    const/16 v1, 0x516

    if-ne v0, v1, :cond_0

    .line 886
    invoke-virtual {p1, p0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    .line 887
    const/16 v0, 0x133

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    .line 888
    const/4 v0, 0x1

    .line 891
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
    .line 542
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->c()V

    .line 545
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g:Lcom/yelp/android/appdata/webrequests/cp;

    new-instance v1, Lcom/yelp/android/ui/activities/support/m;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/support/m;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showLoadingDialog(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/ui/activities/support/l;)V

    .line 546
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
    .line 549
    new-instance v0, Lcom/yelp/android/ui/activities/deals/bc;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/bc;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    .line 550
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g:Lcom/yelp/android/appdata/webrequests/cp;

    if-nez v1, :cond_0

    .line 551
    new-instance v1, Lcom/yelp/android/appdata/webrequests/cp;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/appdata/webrequests/cp;-><init>(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g:Lcom/yelp/android/appdata/webrequests/cp;

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g:Lcom/yelp/android/appdata/webrequests/cp;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/yelp/android/appdata/webrequests/cp;->executeRepeatable([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 554
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g:Lcom/yelp/android/appdata/webrequests/cp;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/cp;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 555
    return-void
.end method

.method private d()V
    .locals 4

    .prologue
    .line 559
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g()Landroid/util/Pair;

    move-result-object v1

    .line 561
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 562
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 566
    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->o:Lcom/yelp/android/ui/activities/deals/ad;

    invoke-virtual {v3, v2}, Lcom/yelp/android/ui/activities/deals/ad;->b(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 567
    const/16 v0, 0x130

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    .line 587
    :goto_0
    return-void

    .line 570
    :cond_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->o:Lcom/yelp/android/ui/activities/deals/ad;

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/activities/deals/ad;->c(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 571
    const/16 v0, 0x12f

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    goto :goto_0

    .line 574
    :cond_1
    iget-object v3, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->o:Lcom/yelp/android/ui/activities/deals/ad;

    add-int/2addr v0, v2

    invoke-virtual {v3, v0}, Lcom/yelp/android/ui/activities/deals/ad;->d(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 575
    const/16 v0, 0x12e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    goto :goto_0

    .line 578
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

    .line 579
    const/16 v0, 0x132

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    goto :goto_0

    .line 582
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 583
    const/16 v0, 0x131

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->showDialog(I)V

    goto :goto_0

    .line 586
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
    .line 643
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i:Lcom/yelp/android/appdata/webrequests/ch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i:Lcom/yelp/android/appdata/webrequests/ch;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ch;->isFetching()Z

    move-result v0

    if-nez v0, :cond_1

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->enableLoading()V

    .line 645
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ch;

    const-string/jumbo v1, "add_cc"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->r:Lcom/yelp/android/av/i;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/appdata/webrequests/ch;-><init>(Ljava/lang/String;Lcom/yelp/android/av/i;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i:Lcom/yelp/android/appdata/webrequests/ch;

    .line 647
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i:Lcom/yelp/android/appdata/webrequests/ch;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ch;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 649
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
    .line 732
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.yelp.android.deal_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 733
    const-string/jumbo v1, "extra.yelp_deal"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 734
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->sendBroadcast(Landroid/content/Intent;)V

    .line 735
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
    .line 981
    const/4 v1, -0x1

    .line 982
    const/4 v0, 0x0

    .line 984
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

    .line 985
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/activities/deals/be;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/deals/be;->getQuantity()I

    move-result v1

    .line 986
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_1
    move v2, v0

    move v3, v1

    .line 991
    goto :goto_0

    .line 989
    :cond_0
    add-int v0, v2, v1

    move v1, v3

    goto :goto_1

    .line 992
    :cond_1
    if-gez v3, :cond_2

    .line 994
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->getQuantity()I

    move-result v3

    .line 996
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
    .line 1000
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/appdata/webrequests/ea;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->h:Lcom/yelp/android/appdata/webrequests/ea;

    return-object v0
.end method

.method private i()V
    .locals 1

    .prologue
    .line 1004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->p:Ljava/lang/String;

    .line 1005
    return-void
.end method

.method static synthetic j(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/appdata/webrequests/m;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->s:Lcom/yelp/android/appdata/webrequests/m;

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

.method static synthetic p(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)Lcom/yelp/android/ui/activities/deals/ad;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->o:Lcom/yelp/android/ui/activities/deals/ad;

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
    .line 896
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->DealPurchase:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public getParametersForIri(Lcom/yelp/android/analytics/iris/b;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/analytics/iris/b;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 901
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 902
    const-string/jumbo v1, "deal_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpDeal;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string/jumbo v1, "deal_option_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->l:Lcom/yelp/android/serializable/YelpDealOption;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpDealOption;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    const/16 v4, 0x40b

    const/4 v0, -0x1

    .line 739
    packed-switch p1, :pswitch_data_0

    .line 789
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 741
    :pswitch_0
    if-ne p2, v0, :cond_0

    .line 742
    invoke-static {p3}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->a(Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v1

    .line 744
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    .line 746
    invoke-static {p3}, Lcom/yelp/android/ui/activities/account/CreditCardSelector;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->e()V

    goto :goto_0

    .line 752
    :cond_1
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/PaymentMethod;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/serializable/PaymentMethod;)V

    goto :goto_0

    .line 757
    :pswitch_1
    if-ne p2, v0, :cond_0

    .line 758
    invoke-static {p3}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/GiftRecipient;

    .line 759
    if-eqz v0, :cond_0

    .line 760
    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Landroid/content/Context;Lcom/yelp/android/serializable/GiftRecipient;)Landroid/content/Intent;

    move-result-object v1

    .line 761
    const/4 v2, 0x0

    invoke-virtual {p0, v4, v1, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 763
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/serializable/GiftRecipient;Landroid/app/PendingIntent;I)V

    goto :goto_0

    .line 768
    :pswitch_2
    if-ne p2, v0, :cond_0

    .line 769
    const/16 v0, 0x40a

    invoke-virtual {p0, p3, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 773
    :pswitch_3
    if-ne p2, v0, :cond_0

    .line 774
    invoke-static {p3}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object v1

    .line 777
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/be;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/be;->getQuantity()I

    move-result v2

    .line 778
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/GiftRecipient;

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/serializable/GiftRecipient;)V

    .line 779
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 780
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/GiftRecipient;

    invoke-static {p0, v0}, Lcom/yelp/android/ui/activities/deals/AddGiftRecipient;->a(Landroid/content/Context;Lcom/yelp/android/serializable/GiftRecipient;)Landroid/content/Intent;

    move-result-object v0

    .line 781
    const/high16 v3, 0x8000000

    invoke-virtual {p0, v4, v0, v3}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->createPendingResult(ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 784
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yelp/android/serializable/GiftRecipient;

    invoke-direct {p0, v0, v3, v2}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/serializable/GiftRecipient;Landroid/app/PendingIntent;I)V

    goto :goto_0

    .line 739
    nop

    :pswitch_data_0
    .packed-switch 0x409
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

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getOptions()Ljava/util/List;

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
    new-instance v0, Lcom/yelp/android/ui/activities/deals/ad;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->k:Lcom/yelp/android/serializable/YelpDeal;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->l:Lcom/yelp/android/serializable/YelpDealOption;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ad;-><init>(Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/YelpDealOption;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->o:Lcom/yelp/android/ui/activities/deals/ad;

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

    .line 182
    if-eqz p1, :cond_1

    .line 183
    const-string/jumbo v0, "GIFTS.xtra"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 184
    if-nez v0, :cond_0

    .line 185
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 187
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 188
    const-string/jumbo v1, "QUANTITY.xtra"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 193
    :goto_0
    const-string/jumbo v2, "CARDS.xtra"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    .line 194
    const-string/jumbo v2, "NONCE.xtra"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->p:Ljava/lang/String;

    .line 196
    const-string/jumbo v2, "SaveErrorMessage"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    .line 198
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Ljava/util/List;[I)V

    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a(Lcom/yelp/android/serializable/PaymentMethod;)V

    .line 203
    return-void

    .line 190
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

    const v3, 0x7f07047e

    const/4 v7, 0x0

    const v1, 0x7f0706af

    const v6, 0x7f020078

    .line 232
    packed-switch p1, :pswitch_data_0

    .line 367
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    const v0, 0x7f0702c2

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 242
    :pswitch_1
    const/16 v0, 0x12e

    if-ne p1, v0, :cond_1

    const v0, 0x7f0e0024

    .line 245
    :goto_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->o:Lcom/yelp/android/ui/activities/deals/ad;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/deals/ad;->a()I

    move-result v2

    .line 246
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v3, v0, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 249
    if-nez v2, :cond_0

    .line 250
    const v0, 0x7f070589

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    const v0, 0x7f0703f5

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    :cond_0
    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/util/cp;->c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    new-instance v2, Lcom/yelp/android/ui/activities/deals/aj;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/aj;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_1
    const v0, 0x7f0e0025

    goto :goto_1

    .line 268
    :pswitch_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->o:Lcom/yelp/android/ui/activities/deals/ad;

    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->g()Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/deals/ad;->a(I)I

    move-result v2

    .line 269
    invoke-virtual {p0, v3}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e0026

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 273
    if-nez v2, :cond_2

    .line 274
    const v0, 0x7f070589

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 275
    const v0, 0x7f0703f4

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_2
    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/util/cp;->c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 282
    :pswitch_3
    const v0, 0x7f0704a9

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 288
    :pswitch_4
    const v0, 0x7f0706c8

    invoke-static {p0, v3, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 294
    :pswitch_5
    const v0, 0x7f070243

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/cp;->c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/activities/deals/aq;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/deals/aq;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 305
    :pswitch_6
    const v0, 0x7f0704aa

    invoke-static {p0, v1, v0}, Lcom/yelp/android/ui/util/cp;->a(Landroid/content/Context;II)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0704a6

    new-instance v2, Lcom/yelp/android/ui/activities/deals/as;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/as;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0703e9

    new-instance v2, Lcom/yelp/android/ui/activities/deals/ar;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/ar;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 325
    :pswitch_7
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/cp;->c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07041b

    new-instance v2, Lcom/yelp/android/ui/activities/deals/at;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/at;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 343
    :pswitch_8
    const v0, 0x7f070243

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/util/cp;->c(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070098

    new-instance v2, Lcom/yelp/android/ui/activities/deals/av;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/av;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070110

    new-instance v2, Lcom/yelp/android/ui/activities/deals/au;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/au;-><init>(Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 232
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

    .line 219
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onDestroy()V

    .line 220
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i:Lcom/yelp/android/appdata/webrequests/ch;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i:Lcom/yelp/android/appdata/webrequests/ch;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/ch;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 222
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->i:Lcom/yelp/android/appdata/webrequests/ch;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ch;->cancel(Z)V

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->h:Lcom/yelp/android/appdata/webrequests/ea;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->h:Lcom/yelp/android/appdata/webrequests/ea;

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/webrequests/ea;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 226
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->h:Lcom/yelp/android/appdata/webrequests/ea;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ea;->cancel(Z)V

    .line 228
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 211
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->b()V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
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
    .line 390
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 391
    const-string/jumbo v0, "CARDS.xtra"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 392
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 393
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->n:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    new-array v3, v0, [I

    .line 394
    const/4 v0, 0x0

    .line 395
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

    .line 396
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/deals/be;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/deals/be;->getQuantity()I

    move-result v0

    aput v0, v3, v1

    .line 398
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 399
    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 401
    const-string/jumbo v0, "GIFTS.xtra"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 402
    const-string/jumbo v0, "QUANTITY.xtra"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 407
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    const-string/jumbo v0, "SaveErrorMessage"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_1
    const-string/jumbo v0, "NONCE.xtra"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->p:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    return-void

    .line 404
    :cond_2
    const-string/jumbo v0, "QUANTITY.xtra"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/PurchaseDealsForm;->f:Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/deals/CalculatedPriceView;->getQuantity()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1
.end method
