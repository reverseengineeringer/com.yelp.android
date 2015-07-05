.class public Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityMyDeals.java"


# instance fields
.field protected a:Landroid/content/BroadcastReceiver;

.field protected b:Landroid/content/BroadcastReceiver;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/yelp/android/serializable/YelpDeal;

.field private f:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Lcom/yelp/android/ui/util/bs;

.field private i:Lcom/yelp/android/appdata/webrequests/gl;

.field private final j:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Lcom/yelp/android/appdata/webrequests/gm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 299
    new-instance v0, Lcom/yelp/android/ui/activities/deals/p;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/p;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->j:Lcom/yelp/android/appdata/webrequests/m;

    .line 312
    new-instance v0, Lcom/yelp/android/ui/activities/deals/q;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/q;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->a:Landroid/content/BroadcastReceiver;

    .line 332
    new-instance v0, Lcom/yelp/android/ui/activities/deals/r;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/r;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->b:Landroid/content/BroadcastReceiver;

    .line 358
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;Lcom/yelp/android/serializable/YelpDeal;)Lcom/yelp/android/serializable/YelpDeal;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->e:Lcom/yelp/android/serializable/YelpDeal;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 188
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    .line 189
    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->d:Ljava/util/ArrayList;

    .line 190
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h()V

    .line 191
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method private c()V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gl;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->j:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/gl;-><init>(Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i:Lcom/yelp/android/appdata/webrequests/gl;

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i:Lcom/yelp/android/appdata/webrequests/gl;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gl;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 184
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->enableLoading()V

    .line 185
    return-void
.end method

.method private f()Ljava/util/EnumMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/Offer;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 194
    new-instance v2, Ljava/util/EnumMap;

    const-class v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-direct {v2, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 196
    invoke-static {}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->values()[Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    move-result-object v1

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 197
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/yelp/android/serializable/Offer;

    .line 202
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Offer;->isUsed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->USED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    :cond_2
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Offer;->isAwarded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    :cond_3
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->USED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/yelp/android/serializable/Offer;->ComparatorDateRedeemed:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 212
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/yelp/android/serializable/bo;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/yelp/android/serializable/bo;-><init>(Landroid/location/Location;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 216
    :cond_4
    return-object v2
.end method

.method private g()Ljava/util/EnumMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v2, Ljava/util/EnumMap;

    const-class v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-direct {v2, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 223
    invoke-static {}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->values()[Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    move-result-object v1

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 224
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/yelp/android/serializable/YelpDeal;

    .line 230
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->getFirstUsablePurchase()Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 231
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    :cond_2
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/YelpDeal;->getFirstPurchaseByStatus(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 235
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->USED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    :cond_3
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/yelp/android/serializable/YelpDeal;->COMPARATOR_TIME_EXPIRED:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 240
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->USED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/yelp/android/serializable/YelpDeal;->COMPARATOR_TIME_REDEEMED:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 243
    :cond_4
    return-object v2
.end method

.method private h()V
    .locals 8

    .prologue
    const v7, 0x7f070544

    const v6, 0x7f07051f

    const v5, 0x7f0701f2

    const/4 v4, 0x1

    .line 251
    new-instance v0, Lcom/yelp/android/ui/util/bs;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/bs;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/bs;

    .line 252
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->g()Ljava/util/EnumMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->f:Ljava/util/EnumMap;

    .line 253
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->f()Ljava/util/EnumMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->g:Ljava/util/EnumMap;

    .line 256
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 257
    new-instance v1, Lcom/yelp/android/ui/panels/v;

    invoke-direct {v1, v4}, Lcom/yelp/android/ui/panels/v;-><init>(Z)V

    .line 258
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->f:Ljava/util/EnumMap;

    sget-object v3, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v0, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/v;->a(Ljava/util/List;)V

    .line 259
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    const v2, 0x7f020262

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/bw;->c(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->g:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 267
    new-instance v1, Lcom/yelp/android/ui/panels/v;

    invoke-direct {v1, v4}, Lcom/yelp/android/ui/panels/v;-><init>(Z)V

    .line 268
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->g:Ljava/util/EnumMap;

    sget-object v3, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v0, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/v;->a(Ljava/util/List;)V

    .line 269
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/yelp/android/ui/util/bw;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    const v2, 0x7f0200f0

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/bw;->c(I)Lcom/yelp/android/ui/util/bw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/bw;->a()Lcom/yelp/android/ui/util/bv;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/yelp/android/ui/util/bs;->a(ILcom/yelp/android/ui/util/bv;)V

    .line 276
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->USED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->g:Ljava/util/EnumMap;

    sget-object v2, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->USED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    .line 277
    if-lez v0, :cond_2

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    new-instance v1, Lcom/yelp/android/ui/activities/deals/s;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/activities/deals/s;-><init>(Ljava/util/ArrayList;)V

    .line 281
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, v7, v1}, Lcom/yelp/android/ui/util/bs;->a(ILandroid/widget/BaseAdapter;)V

    .line 284
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i:Lcom/yelp/android/appdata/webrequests/gl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i:Lcom/yelp/android/appdata/webrequests/gl;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/gl;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    :cond_3
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_FEED_ITEMS:Lcom/yelp/android/util/ErrorType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->populateError(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/aa;)V

    .line 287
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    const v1, 0x7f0700c7

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setText(I)V

    .line 297
    :goto_0
    return-void

    .line 292
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 293
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->notifyDataSetChanged()V

    .line 295
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->disableLoading()V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 153
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/util/YelpListActivity;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 154
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->q()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 155
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v1, :cond_2

    .line 156
    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    .line 157
    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->countUsablePurchases()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 158
    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->e:Lcom/yelp/android/serializable/YelpDeal;

    .line 159
    sget v0, Lcom/yelp/android/ui/activities/deals/af;->e:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->showDialog(I)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->getFirstUsablePurchase()Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/DealPurchase;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 164
    :cond_2
    instance-of v1, v0, Lcom/yelp/android/serializable/Offer;

    if-eqz v1, :cond_3

    .line 165
    check-cast v0, Lcom/yelp/android/serializable/Offer;

    .line 166
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    move-result-object v0

    .line 168
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    :cond_3
    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->USED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->g:Ljava/util/EnumMap;

    sget-object v2, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->USED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityUsedDealsAndOffers;->a(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public a_()V
    .locals 1

    .prologue
    .line 120
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->a_()V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/bs;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/bs;->clear()V

    .line 122
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c()V

    .line 123
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->enableLoading()V

    .line 124
    return-void
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserDealsList:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    if-eqz p1, :cond_0

    .line 80
    const-string/jumbo v0, "owned"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    .line 81
    const-string/jumbo v0, "checkin_offers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->d:Ljava/util/ArrayList;

    .line 82
    const-string/jumbo v0, "saved_deal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->e:Lcom/yelp/android/serializable/YelpDeal;

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->a:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.yelp.android.offer_redeemed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->b:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.yelp.android.deal_changed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    return-void

    .line 88
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 137
    sget v0, Lcom/yelp/android/ui/activities/deals/af;->e:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->e:Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->e:Lcom/yelp/android/serializable/YelpDeal;

    const/4 v1, 0x1

    new-instance v2, Lcom/yelp/android/ui/activities/deals/o;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/o;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/af;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/YelpDeal;ZLcom/yelp/android/ui/activities/deals/ah;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 106
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onPause()V

    .line 107
    const-string/jumbo v0, "user_deals"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i:Lcom/yelp/android/appdata/webrequests/gl;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 108
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->t()Lcom/yelp/android/appdata/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/k;->b()V

    .line 109
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 128
    sget v0, Lcom/yelp/android/ui/activities/deals/af;->e:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->e:Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->e:Lcom/yelp/android/serializable/YelpDeal;

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/yelp/android/ui/activities/deals/af;->a(Landroid/app/Dialog;Lcom/yelp/android/serializable/YelpDeal;Z)V

    .line 132
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/YelpListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 133
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 100
    const-string/jumbo v0, "user_deals"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i:Lcom/yelp/android/appdata/webrequests/gl;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->j:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/gl;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i:Lcom/yelp/android/appdata/webrequests/gl;

    .line 102
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 113
    const-string/jumbo v0, "owned"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 114
    const-string/jumbo v0, "checkin_offers"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 115
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    return-void
.end method
