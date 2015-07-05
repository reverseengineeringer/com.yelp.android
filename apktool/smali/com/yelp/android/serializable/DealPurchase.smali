.class public Lcom/yelp/android/serializable/DealPurchase;
.super Lcom/yelp/android/serializable/_DealPurchase;
.source "DealPurchase.java"


# static fields
.field public static final COMPARATOR_TIME_EXPIRED:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase;",
            ">;"
        }
    .end annotation
.end field

.field public static final COMPARATOR_TIME_REDEEMED:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/DealPurchase;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTRA_DEAL_PURCHASED:Ljava/lang/String; = "extra.deal_purchased"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 115
    new-instance v0, Lcom/yelp/android/serializable/ae;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ae;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/DealPurchase;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    .line 137
    new-instance v0, Lcom/yelp/android/serializable/af;

    invoke-direct {v0}, Lcom/yelp/android/serializable/af;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/DealPurchase;->COMPARATOR_TIME_EXPIRED:Ljava/util/Comparator;

    .line 150
    new-instance v0, Lcom/yelp/android/serializable/ag;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ag;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/DealPurchase;->COMPARATOR_TIME_REDEEMED:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/yelp/android/serializable/_DealPurchase;-><init>()V

    .line 19
    return-void
.end method

.method private isExpired()Z
    .locals 4

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DealPurchase;->getExpirationTimeMillis()J

    move-result-wide v0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 174
    if-ne p0, p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 176
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 177
    goto :goto_0

    .line 178
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 179
    goto :goto_0

    .line 180
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/DealPurchase;

    .line 181
    iget-object v2, p0, Lcom/yelp/android/serializable/DealPurchase;->mId:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 182
    iget-object v2, p1, Lcom/yelp/android/serializable/DealPurchase;->mId:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    .line 183
    goto :goto_0

    .line 184
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/DealPurchase;->mId:Ljava/lang/String;

    iget-object v3, p1, Lcom/yelp/android/serializable/DealPurchase;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 185
    goto :goto_0
.end method

.method public bridge synthetic getCustomerEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->getCustomerEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 49
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->getCustomerName()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->t()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getExpirationTimeMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 108
    iget-wide v2, p0, Lcom/yelp/android/serializable/DealPurchase;->mTimeExpire:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/yelp/android/serializable/DealPurchase;->mTimeExpire:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOptionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->getOptionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPurchasedByName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->getPurchasedByName()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->t()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRedeemedTimeMillis()J
    .locals 4

    .prologue
    const-wide/16 v0, -0x1

    .line 112
    iget-wide v2, p0, Lcom/yelp/android/serializable/DealPurchase;->mTimeRedeemed:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/yelp/android/serializable/DealPurchase;->mTimeRedeemed:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public bridge synthetic getRedemptionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->getRedemptionCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRedemptionTitle(Landroid/content/Context;Lcom/yelp/android/serializable/YelpDeal;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->mRedemptionTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->mOptionId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/yelp/android/serializable/YelpDeal;->getOption(Ljava/lang/String;)Lcom/yelp/android/serializable/YelpDealOption;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDealOption;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->mRedemptionTitle:Ljava/lang/String;

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->mRedemptionTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p2, p1}, Lcom/yelp/android/serializable/YelpDeal;->getDealTitleWithBizName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->mRedemptionCode:Ljava/lang/String;

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->mRedemptionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getRedemptionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->getRedemptionTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/yelp/android/serializable/DealPurchase;->isRedeemed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-direct {p0}, Lcom/yelp/android/serializable/DealPurchase;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_FULLPRICE:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    .line 78
    :goto_0
    return-object v0

    .line 75
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->USABLE_EXPIRED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    goto :goto_0

    .line 78
    :cond_1
    sget-object v0, Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;->REDEEMED:Lcom/yelp/android/serializable/DealPurchase$PurchaseStatus;

    goto :goto_0
.end method

.method public bridge synthetic getTerms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->getTerms()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeExpire()J
    .locals 2

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->getTimeExpire()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getTimeRedeemed()J
    .locals 2

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->getTimeRedeemed()J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 166
    .line 168
    iget-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->mId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 169
    return v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/DealPurchase;->mId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic isRedeemed()Z
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->isRedeemed()Z

    move-result v0

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_DealPurchase;->readFromJson(Lorg/json/JSONObject;)V

    .line 40
    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_DealPurchase;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setRedeemed()V
    .locals 4

    .prologue
    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/DealPurchase;->mIsRedeemed:Z

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/yelp/android/serializable/DealPurchase;->mTimeRedeemed:J

    .line 95
    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_DealPurchase;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_DealPurchase;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
