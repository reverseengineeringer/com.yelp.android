.class public Lcom/yelp/android/serializable/YelpDeal;
.super Lcom/yelp/android/serializable/_YelpDeal;
.source "YelpDeal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/YelpDeal$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Lcom/yelp/android/serializable/YelpDeal$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpDeal$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpDeal;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    .line 327
    new-instance v0, Lcom/yelp/android/serializable/YelpDeal$2;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpDeal$2;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpDeal;->b:Ljava/util/Comparator;

    .line 338
    new-instance v0, Lcom/yelp/android/serializable/YelpDeal$3;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpDeal$3;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpDeal;->c:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpDeal;-><init>()V

    .line 174
    return-void
.end method

.method private C()Ljava/util/EnumMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    if-nez v0, :cond_4

    .line 54
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    .line 57
    invoke-static {}, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->values()[Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 58
    iget-object v4, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/yelp/android/serializable/DealPurchase;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/DealPurchase;->c()Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 82
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic A()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->A()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic B()Ljava/util/Date;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->B()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/yelp/android/serializable/DealPurchase;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/YelpDeal;->a(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    .line 119
    if-nez v0, :cond_0

    .line 120
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/YelpDeal;->a(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    .line 122
    :cond_0
    return-object v0
.end method

.method public a(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Lcom/yelp/android/serializable/DealPurchase;
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpDeal;->C()Ljava/util/EnumMap;

    .line 98
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DealPurchase;

    .line 103
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/yelp/android/serializable/YelpDealOption;
    .locals 3

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDealOption;

    .line 215
    iget-object v2, v0, Lcom/yelp/android/serializable/YelpDealOption;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    const v0, 0x7f070237

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/serializable/YelpDeal;->i:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yelp/android/serializable/YelpDeal;->m:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpDeal;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public a(Lcom/yelp/android/serializable/DealPurchase;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    .line 89
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpDeal;->a(Lorg/json/JSONObject;)V

    .line 34
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->j()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/YelpDeal;->x:J

    iget-wide v4, p0, Lcom/yelp/android/serializable/YelpDeal;->y:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yelp/android/serializable/YelpDeal;->z:J

    .line 38
    :cond_0
    return-void
.end method

.method public b()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpDeal;->C()Ljava/util/EnumMap;

    .line 127
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    sget-object v2, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 129
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    sget-object v2, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    return-object v1
.end method

.method public b(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpDeal;->C()Ljava/util/EnumMap;

    .line 108
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public c()I
    .locals 3

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpDeal;->C()Ljava/util/EnumMap;

    .line 135
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->a:Ljava/util/EnumMap;

    sget-object v2, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public d()I
    .locals 2

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->q()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->p()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->describeContents()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 151
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->u:I

    if-ne v0, v1, :cond_1

    .line 152
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->v:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0

    .line 152
    :cond_0
    const v0, 0x7f0704e9

    goto :goto_0

    .line 154
    :cond_1
    const v0, 0x7f07058d

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 307
    if-ne p0, p1, :cond_1

    .line 324
    :cond_0
    :goto_0
    return v0

    .line 310
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 311
    goto :goto_0

    .line 313
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/_YelpDeal;

    if-nez v2, :cond_3

    move v0, v1

    .line 314
    goto :goto_0

    .line 316
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/_YelpDeal;

    .line 317
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpDeal;->h:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 318
    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpDeal;->h:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 319
    goto :goto_0

    .line 321
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpDeal;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/_YelpDeal;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 322
    goto :goto_0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 163
    iget-wide v0, p0, Lcom/yelp/android/serializable/YelpDeal;->z:J

    return-wide v0
.end method

.method public g()Ljava/util/Currency;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/yelp/android/serializable/YelpDealOption;
    .locals 2

    .prologue
    .line 171
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->y()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDealOption;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 299
    .line 301
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 302
    return v0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public i()Lcom/yelp/android/serializable/YelpDeal$a;
    .locals 6

    .prologue
    .line 182
    new-instance v0, Lcom/yelp/android/serializable/YelpDeal$a;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpDeal$a;-><init>()V

    .line 184
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->g()Ljava/util/Currency;

    move-result-object v1

    .line 185
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 186
    invoke-virtual {v2, v1}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 189
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->h()Lcom/yelp/android/serializable/YelpDealOption;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yelp/android/serializable/YelpDealOption;->a(Ljava/util/Currency;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 190
    invoke-virtual {v3}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 191
    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/yelp/android/serializable/YelpDeal$a;->a:Ljava/lang/String;

    .line 194
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->h()Lcom/yelp/android/serializable/YelpDealOption;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/yelp/android/serializable/YelpDealOption;->b(Ljava/util/Currency;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 195
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 196
    invoke-virtual {v2, v1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/yelp/android/serializable/YelpDeal$a;->b:Ljava/lang/String;

    .line 198
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    invoke-virtual {v3}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 199
    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yelp/android/serializable/YelpDeal$a;->c:Ljava/lang/String;

    .line 200
    new-instance v2, Ljava/math/BigDecimal;

    const/16 v4, 0x64

    invoke-direct {v2, v4}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    const/4 v3, 0x2

    sget-object v4, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-virtual {v2, v1, v3, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    move-result v1

    rsub-int/lit8 v1, v1, 0x64

    iput v1, v0, Lcom/yelp/android/serializable/YelpDeal$a;->d:I

    .line 206
    return-object v0
.end method

.method public j()Z
    .locals 4

    .prologue
    .line 229
    iget-wide v0, p0, Lcom/yelp/android/serializable/YelpDeal;->x:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Z
    .locals 4

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->j()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/yelp/android/serializable/YelpDeal;->z:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 284
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->s:I

    if-gez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->s:I

    goto :goto_0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->t:I

    if-gez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->t:I

    goto :goto_0
.end method

.method public n()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->r:I

    if-gez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->r:I

    goto :goto_0
.end method

.method public bridge synthetic o()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->o()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic p()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->p()I

    move-result v0

    return v0
.end method

.method public bridge synthetic q()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->q()I

    move-result v0

    return v0
.end method

.method public bridge synthetic r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->r()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->t()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpDeal;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public bridge synthetic x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->x()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic y()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->y()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic z()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->z()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
