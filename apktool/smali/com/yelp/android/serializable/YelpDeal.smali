.class public Lcom/yelp/android/serializable/YelpDeal;
.super Lcom/yelp/android/serializable/_YelpDeal;
.source "YelpDeal.java"


# static fields
.field public static final ACTION_DEAL_CHANGED:Ljava/lang/String; = "com.yelp.android.deal_changed"

.field public static final COMPARATOR_TIME_EXPIRED:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPARATOR_TIME_REDEEMED:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yelp/android/serializable/YelpDeal;",
            ">;"
        }
    .end annotation
.end field

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

.field public static final EXTRA_DEAL:Ljava/lang/String; = "extra.yelp_deal"


# instance fields
.field protected mPurchaseMap:Ljava/util/EnumMap;
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
    .line 253
    new-instance v0, Lcom/yelp/android/serializable/eg;

    invoke-direct {v0}, Lcom/yelp/android/serializable/eg;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpDeal;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    .line 315
    new-instance v0, Lcom/yelp/android/serializable/eh;

    invoke-direct {v0}, Lcom/yelp/android/serializable/eh;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpDeal;->COMPARATOR_TIME_EXPIRED:Ljava/util/Comparator;

    .line 325
    new-instance v0, Lcom/yelp/android/serializable/ei;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ei;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpDeal;->COMPARATOR_TIME_REDEEMED:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpDeal;-><init>()V

    .line 171
    return-void
.end method

.method private initPurchaseMap()Ljava/util/EnumMap;
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
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    if-nez v0, :cond_4

    .line 54
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    .line 57
    invoke-static {}, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->values()[Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 58
    iget-object v4, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchases:Ljava/util/List;

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
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    invoke-virtual {v1}, Lcom/yelp/android/serializable/DealPurchase;->getStatus()Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase;->COMPARATOR_TIME_EXPIRED:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 71
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase;->COMPARATOR_TIME_EXPIRED:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase;->COMPARATOR_TIME_REDEEMED:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 79
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    return-object v0
.end method


# virtual methods
.method public countUsablePurchases()I
    .locals 3

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpDeal;->initPurchaseMap()Ljava/util/EnumMap;

    .line 132
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    sget-object v1, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr v0, v1

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

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 300
    if-ne p0, p1, :cond_1

    .line 312
    :cond_0
    :goto_0
    return v0

    .line 302
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 303
    goto :goto_0

    .line 304
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/_YelpDeal;

    if-nez v2, :cond_3

    move v0, v1

    .line 305
    goto :goto_0

    .line 306
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/_YelpDeal;

    .line 307
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpDeal;->mId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 308
    iget-object v2, p1, Lcom/yelp/android/serializable/_YelpDeal;->mId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 309
    goto :goto_0

    .line 310
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/YelpDeal;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/_YelpDeal;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 311
    goto :goto_0
.end method

.method public bridge synthetic getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getBusinessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCanonicalBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getCanonicalBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrency()Ljava/util/Currency;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mCurrencyCode:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCurrencyCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getCurrencyCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDealTitleWithBizName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    const v0, 0x7f0701ec

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/serializable/YelpDeal;->mTitle:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yelp/android/serializable/YelpDeal;->mBusinessName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDescription()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getDescription()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayDeal()Lcom/yelp/android/serializable/YelpDealOption;
    .locals 2

    .prologue
    .line 168
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->getOptions()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDealOption;

    return-object v0
.end method

.method public getDisplayPrices()Lcom/yelp/android/serializable/ej;
    .locals 6

    .prologue
    .line 179
    new-instance v0, Lcom/yelp/android/serializable/ej;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ej;-><init>()V

    .line 181
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->getCurrency()Ljava/util/Currency;

    move-result-object v1

    .line 182
    invoke-static {}, Ljava/text/NumberFormat;->getCurrencyInstance()Ljava/text/NumberFormat;

    move-result-object v2

    .line 183
    invoke-virtual {v2, v1}, Ljava/text/NumberFormat;->setCurrency(Ljava/util/Currency;)V

    .line 186
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->getDisplayDeal()Lcom/yelp/android/serializable/YelpDealOption;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/yelp/android/serializable/YelpDealOption;->getDecimalPrice(Ljava/util/Currency;)Ljava/math/BigDecimal;

    move-result-object v3

    .line 187
    invoke-virtual {v3}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 188
    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/yelp/android/serializable/ej;->a:Ljava/lang/String;

    .line 191
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->getDisplayDeal()Lcom/yelp/android/serializable/YelpDealOption;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/yelp/android/serializable/YelpDealOption;->getDecimalOriginalPrice(Ljava/util/Currency;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 193
    invoke-virtual {v2, v1}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/yelp/android/serializable/ej;->b:Ljava/lang/String;

    .line 195
    invoke-virtual {v1}, Ljava/math/BigDecimal;->scale()I

    move-result v4

    invoke-virtual {v3}, Ljava/math/BigDecimal;->scale()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 196
    invoke-virtual {v1, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/yelp/android/serializable/ej;->c:Ljava/lang/String;

    .line 197
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

    iput v1, v0, Lcom/yelp/android/serializable/ej;->d:I

    .line 200
    return-object v0
.end method

.method public getFirstPurchaseByStatus(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Lcom/yelp/android/serializable/DealPurchase;
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpDeal;->initPurchaseMap()Ljava/util/EnumMap;

    .line 95
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DealPurchase;

    .line 100
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public getFirstUsablePurchase()Lcom/yelp/android/serializable/DealPurchase;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/YelpDeal;->getFirstPurchaseByStatus(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    .line 116
    if-nez v0, :cond_0

    .line 117
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {p0, v0}, Lcom/yelp/android/serializable/YelpDeal;->getFirstPurchaseByStatus(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Lcom/yelp/android/serializable/DealPurchase;

    move-result-object v0

    .line 119
    :cond_0
    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxGiftQuantity()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mMaxGiftQuantity:I

    if-gez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mMaxGiftQuantity:I

    goto :goto_0
.end method

.method public getMaxQuantity()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mMaxQuantity:I

    if-gez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mMaxQuantity:I

    goto :goto_0
.end method

.method public getMaxUserQuantity()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mMaxUserQuantity:I

    if-gez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mMaxUserQuantity:I

    goto :goto_0
.end method

.method public getOption(Ljava/lang/String;)Lcom/yelp/android/serializable/YelpDealOption;
    .locals 3

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->getOptions()Ljava/util/List;

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

    .line 209
    iget-object v2, v0, Lcom/yelp/android/serializable/YelpDealOption;->mId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOptionalCount()I
    .locals 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->getPurchasedCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->getRemainingCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getOptionalString()I
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 148
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchasedCount:I

    if-ne v0, v1, :cond_1

    .line 149
    iget v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mRemainingCount:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 151
    :goto_0
    return v0

    .line 149
    :cond_0
    const v0, 0x7f0704cf

    goto :goto_0

    .line 151
    :cond_1
    const v0, 0x7f070584

    goto :goto_0
.end method

.method public bridge synthetic getOptions()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getOptions()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPurchasedCount()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getPurchasedCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPurchases()Ljava/util/List;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getPurchases()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPurchasesByStatus(Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;)Ljava/util/ArrayList;
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
    .line 104
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpDeal;->initPurchaseMap()Ljava/util/EnumMap;

    .line 105
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public bridge synthetic getRemainingCount()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getRemainingCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getShareUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getShareUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemClockExpiration()J
    .locals 2

    .prologue
    .line 160
    iget-wide v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mSystemClockExpiration:J

    return-wide v0
.end method

.method public bridge synthetic getTerms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getTerms()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeEnd()J
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getTimeEnd()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getTimeReference()J
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getTimeReference()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getTimeStart()J
    .locals 2

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getTimeStart()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getTimeUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getTimeUpdated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTosUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->getTosUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsablePurchases()Ljava/util/ArrayList;
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
    .line 123
    invoke-direct {p0}, Lcom/yelp/android/serializable/YelpDeal;->initPurchaseMap()Ljava/util/EnumMap;

    .line 124
    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 126
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    sget-object v2, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 127
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 292
    .line 294
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 295
    return v0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 4

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->isStandingDeal()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mSystemClockExpiration:J

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

.method public isStandingDeal()Z
    .locals 4

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mTimeEnd:J

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

.method public markPurchaseRedeemedById(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->getPurchases()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/DealPurchase;

    .line 235
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v0}, Lcom/yelp/android/serializable/DealPurchase;->setRedeemed()V

    .line 237
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    .line 238
    const/4 v0, 0x1

    .line 241
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpDeal;->readFromJson(Lorg/json/JSONObject;)V

    .line 34
    invoke-virtual {p0}, Lcom/yelp/android/serializable/YelpDeal;->isStandingDeal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yelp/android/serializable/YelpDeal;->mTimeEnd:J

    iget-wide v4, p0, Lcom/yelp/android/serializable/YelpDeal;->mTimeReference:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mSystemClockExpiration:J

    .line 38
    :cond_0
    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpDeal;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public updatePurchase(Lcom/yelp/android/serializable/DealPurchase;)V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchases:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpDeal;->mPurchaseMap:Ljava/util/EnumMap;

    .line 86
    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpDeal;->writeJSON()Lorg/json/JSONObject;

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
