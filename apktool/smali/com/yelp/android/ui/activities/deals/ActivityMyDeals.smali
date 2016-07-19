.class public Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;
.super Lcom/yelp/android/ui/util/YelpListActivity;
.source "ActivityMyDeals.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$a;,
        Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;
    }
.end annotation


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

.field private h:Lcom/yelp/android/ui/util/aj;

.field private i:Lcom/yelp/android/appdata/webrequests/fc;

.field private final j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Lcom/yelp/android/appdata/webrequests/fc$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/ui/util/YelpListActivity;-><init>()V

    .line 315
    new-instance v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$2;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 329
    new-instance v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$3;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->a:Landroid/content/BroadcastReceiver;

    .line 350
    new-instance v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$4;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$4;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->b:Landroid/content/BroadcastReceiver;

    .line 377
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;Lcom/yelp/android/serializable/YelpDeal;)Lcom/yelp/android/serializable/YelpDeal;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->e:Lcom/yelp/android/serializable/YelpDeal;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->d:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 46
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
    .line 201
    iput-object p1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    .line 202
    iput-object p2, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->d:Ljava/util/ArrayList;

    .line 203
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i()V

    .line 204
    return-void
.end method

.method private b()V
    .locals 2

    .prologue
    .line 195
    new-instance v0, Lcom/yelp/android/appdata/webrequests/fc;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/fc;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i:Lcom/yelp/android/appdata/webrequests/fc;

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i:Lcom/yelp/android/appdata/webrequests/fc;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/fc;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    .line 197
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->enableLoading()V

    .line 198
    return-void
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i()V

    return-void
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    return-object v0
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
    .line 207
    new-instance v2, Ljava/util/EnumMap;

    const-class v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-direct {v2, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 209
    invoke-static {}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->values()[Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    move-result-object v1

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 210
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 214
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

    .line 215
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Offer;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->USED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {v1}, Lcom/yelp/android/serializable/Offer;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 224
    :cond_3
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->USED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/yelp/android/serializable/Offer;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 225
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Lcom/yelp/android/serializable/Offer$a;

    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/LocationService;->c()Landroid/location/Location;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/yelp/android/serializable/Offer$a;-><init>(Landroid/location/Location;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 231
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
    .line 235
    new-instance v2, Ljava/util/EnumMap;

    const-class v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-direct {v2, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 238
    invoke-static {}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->values()[Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    move-result-object v1

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v1, v0

    .line 239
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v4, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 244
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

    .line 245
    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpDeal;->a()Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 246
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_2
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/YelpDeal;->a(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 250
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->USED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 254
    :cond_3
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/yelp/android/serializable/YelpDeal;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 255
    sget-object v0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->USED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/yelp/android/serializable/YelpDeal;->c:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 258
    :cond_4
    return-object v2
.end method

.method private i()V
    .locals 8

    .prologue
    const v7, 0x7f070543

    const v6, 0x7f07051a

    const v5, 0x7f07023d

    const/4 v4, 0x1

    .line 266
    new-instance v0, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v0}, Lcom/yelp/android/ui/util/aj;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/aj;

    .line 267
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->g()Ljava/util/EnumMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->f:Ljava/util/EnumMap;

    .line 268
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->f()Ljava/util/EnumMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->g:Ljava/util/EnumMap;

    .line 271
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->f:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 272
    new-instance v1, Lcom/yelp/android/ui/panels/b;

    invoke-direct {v1, v4}, Lcom/yelp/android/ui/panels/b;-><init>(Z)V

    .line 273
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->f:Ljava/util/EnumMap;

    sget-object v3, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v0, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/b;->a(Ljava/util/List;)V

    .line 274
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v5}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    const v2, 0x7f020332

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/aj$c;->c(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->g:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 283
    new-instance v1, Lcom/yelp/android/ui/panels/b;

    invoke-direct {v1, v4}, Lcom/yelp/android/ui/panels/b;-><init>(Z)V

    .line 284
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->g:Ljava/util/EnumMap;

    sget-object v3, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;->UNUSED:Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$UseState;

    invoke-virtual {v0, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/b;->a(Ljava/util/List;)V

    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {p0, v6}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/yelp/android/ui/util/aj$c;->a(Ljava/lang/CharSequence;Landroid/widget/BaseAdapter;)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    const v2, 0x7f020146

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/util/aj$c;->c(I)Lcom/yelp/android/ui/util/aj$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/util/aj$c;->b()Lcom/yelp/android/ui/util/aj$b;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/yelp/android/ui/util/aj;->a(ILcom/yelp/android/ui/util/aj$b;)V

    .line 293
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

    .line 294
    if-lez v0, :cond_2

    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    new-instance v1, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$a;

    invoke-direct {v1, v0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$a;-><init>(Ljava/util/ArrayList;)V

    .line 298
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v7, v1}, Lcom/yelp/android/ui/util/aj;->a(ILandroid/widget/BaseAdapter;)V

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 302
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i:Lcom/yelp/android/appdata/webrequests/fc;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i:Lcom/yelp/android/appdata/webrequests/fc;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/fc;->v()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 303
    :cond_3
    sget-object v0, Lcom/yelp/android/util/ErrorType;->NO_DEALS:Lcom/yelp/android/util/ErrorType;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->populateError(Lcom/yelp/android/util/ErrorType;Lcom/yelp/android/ui/panels/PanelError$a;)V

    .line 304
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->getErrorPanel()Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    const v1, 0x7f07014a

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/PanelError;->setText(I)V

    .line 313
    :goto_0
    return-void

    .line 309
    :cond_4
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->f()V

    .line 310
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 311
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->notifyDataSetChanged()V

    .line 312
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->disableLoading()V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 162
    invoke-super/range {p0 .. p5}, Lcom/yelp/android/ui/util/YelpListActivity;->a(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 163
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->r()Lcom/yelp/android/ui/util/ScrollToLoadListView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yelp/android/ui/util/ScrollToLoadListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    .line 164
    instance-of v1, v0, Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v1, :cond_2

    .line 165
    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    .line 166
    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->c()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 167
    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->e:Lcom/yelp/android/serializable/YelpDeal;

    .line 168
    sget v0, Lcom/yelp/android/ui/activities/deals/b;->e:I

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->showDialog(I)V

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDeal;->a()Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityDealRedemption;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpDeal;Lcom/yelp/android/serializable/DealPurchase;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 174
    :cond_2
    instance-of v1, v0, Lcom/yelp/android/serializable/Offer;

    if-eqz v1, :cond_3

    .line 175
    check-cast v0, Lcom/yelp/android/serializable/Offer;

    .line 176
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->h()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Lcom/yelp/android/serializable/Offer;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_3
    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 180
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

    .line 185
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 191
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->UserDealsList:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 76
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    if-eqz p1, :cond_0

    .line 79
    const-string/jumbo v0, "owned"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    .line 80
    const-string/jumbo v0, "checkin_offers"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->d:Ljava/util/ArrayList;

    .line 81
    const-string/jumbo v0, "saved_deal"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDeal;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->e:Lcom/yelp/android/serializable/YelpDeal;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->d:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->d:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 91
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->a:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.yelp.android.offer_redeemed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 93
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->b:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.yelp.android.deal_changed"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    return-void

    .line 87
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->b()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 140
    sget v0, Lcom/yelp/android/ui/activities/deals/b;->e:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->e:Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->e:Lcom/yelp/android/serializable/YelpDeal;

    const/4 v1, 0x1

    new-instance v2, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$1;

    invoke-direct {v2, p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals$1;-><init>(Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;)V

    invoke-static {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/b;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/YelpDeal;ZLcom/yelp/android/ui/activities/deals/b$a;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 157
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
    .line 108
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onPause()V

    .line 109
    const-string/jumbo v0, "user_deals"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i:Lcom/yelp/android/appdata/webrequests/fc;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->getAppData()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->y()Lcom/yelp/android/appdata/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/e;->b()V

    .line 111
    return-void
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 2

    .prologue
    .line 130
    sget v0, Lcom/yelp/android/ui/activities/deals/b;->e:I

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->e:Lcom/yelp/android/serializable/YelpDeal;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->e:Lcom/yelp/android/serializable/YelpDeal;

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/yelp/android/ui/activities/deals/b;->a(Landroid/app/Dialog;Lcom/yelp/android/serializable/YelpDeal;Z)V

    .line 135
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/yelp/android/ui/util/YelpListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 136
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 98
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->onResume()V

    .line 99
    const-string/jumbo v0, "user_deals"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i:Lcom/yelp/android/appdata/webrequests/fc;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->j:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/fc;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->i:Lcom/yelp/android/appdata/webrequests/fc;

    .line 104
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 115
    const-string/jumbo v0, "owned"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->c:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 116
    const-string/jumbo v0, "checkin_offers"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 117
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/YelpListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method

.method public p_()V
    .locals 1

    .prologue
    .line 122
    invoke-super {p0}, Lcom/yelp/android/ui/util/YelpListActivity;->p_()V

    .line 123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->h:Lcom/yelp/android/ui/util/aj;

    invoke-virtual {v0}, Lcom/yelp/android/ui/util/aj;->clear()V

    .line 124
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->b()V

    .line 125
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/deals/ActivityMyDeals;->enableLoading()V

    .line 126
    return-void
.end method
