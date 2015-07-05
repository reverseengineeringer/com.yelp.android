.class abstract Lcom/yelp/android/serializable/_Offer;
.super Ljava/lang/Object;
.source "_Offer.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

.field protected mCheckInsRemaining:I

.field protected mDateAwarded:Ljava/util/Date;

.field protected mDateExpires:Ljava/util/Date;

.field protected mId:Ljava/lang/String;

.field protected mOfferText:Ljava/lang/String;

.field protected mPromoText:Ljava/lang/String;

.field protected mRedemption:Lcom/yelp/android/serializable/OfferRedemption;

.field protected mState:Lcom/yelp/android/serializable/Offer$OfferState;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/Date;Lcom/yelp/android/serializable/OfferRedemption;Lcom/yelp/android/serializable/Offer$OfferState;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Offer;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yelp/android/serializable/_Offer;->mDateAwarded:Ljava/util/Date;

    .line 31
    iput-object p2, p0, Lcom/yelp/android/serializable/_Offer;->mDateExpires:Ljava/util/Date;

    .line 32
    iput-object p3, p0, Lcom/yelp/android/serializable/_Offer;->mRedemption:Lcom/yelp/android/serializable/OfferRedemption;

    .line 33
    iput-object p4, p0, Lcom/yelp/android/serializable/_Offer;->mState:Lcom/yelp/android/serializable/Offer$OfferState;

    .line 34
    iput-object p5, p0, Lcom/yelp/android/serializable/_Offer;->mOfferText:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/yelp/android/serializable/_Offer;->mPromoText:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcom/yelp/android/serializable/_Offer;->mId:Ljava/lang/String;

    .line 37
    iput-object p8, p0, Lcom/yelp/android/serializable/_Offer;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 38
    iput p9, p0, Lcom/yelp/android/serializable/_Offer;->mCheckInsRemaining:I

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public getCheckInsRemaining()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/yelp/android/serializable/_Offer;->mCheckInsRemaining:I

    return v0
.end method

.method public getDateAwarded()Ljava/util/Date;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mDateAwarded:Ljava/util/Date;

    return-object v0
.end method

.method public getDateExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mDateExpires:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getOfferText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mOfferText:Ljava/lang/String;

    return-object v0
.end method

.method public getPromoText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mPromoText:Ljava/lang/String;

    return-object v0
.end method

.method public getRedemption()Lcom/yelp/android/serializable/OfferRedemption;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mRedemption:Lcom/yelp/android/serializable/OfferRedemption;

    return-object v0
.end method

.method public getState()Lcom/yelp/android/serializable/Offer$OfferState;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mState:Lcom/yelp/android/serializable/Offer$OfferState;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 109
    const-string/jumbo v0, "time_awarded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    const-string/jumbo v0, "time_awarded"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mDateAwarded:Ljava/util/Date;

    .line 112
    :cond_0
    const-string/jumbo v0, "time_expires"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    const-string/jumbo v0, "time_expires"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mDateExpires:Ljava/util/Date;

    .line 115
    :cond_1
    const-string/jumbo v0, "redemption"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    sget-object v0, Lcom/yelp/android/serializable/OfferRedemption;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "redemption"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/OfferRedemption;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mRedemption:Lcom/yelp/android/serializable/OfferRedemption;

    .line 118
    :cond_2
    const-string/jumbo v0, "offer_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 119
    const-string/jumbo v0, "offer_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mOfferText:Ljava/lang/String;

    .line 121
    :cond_3
    const-string/jumbo v0, "promo_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 122
    const-string/jumbo v0, "promo_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mPromoText:Ljava/lang/String;

    .line 124
    :cond_4
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 125
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mId:Ljava/lang/String;

    .line 127
    :cond_5
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 128
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 130
    :cond_6
    const-string/jumbo v0, "check_ins_remaining"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Offer;->mCheckInsRemaining:I

    .line 131
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const-wide/32 v4, -0x80000000

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 92
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 93
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_Offer;->mDateAwarded:Ljava/util/Date;

    .line 95
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 96
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 97
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_Offer;->mDateExpires:Ljava/util/Date;

    .line 99
    :cond_1
    const-class v0, Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/OfferRedemption;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mRedemption:Lcom/yelp/android/serializable/OfferRedemption;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer$OfferState;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mState:Lcom/yelp/android/serializable/Offer$OfferState;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mOfferText:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mPromoText:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mId:Ljava/lang/String;

    .line 104
    const-class v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Offer;->mCheckInsRemaining:I

    .line 106
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 134
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 135
    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->mDateAwarded:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 136
    const-string/jumbo v1, "time_awarded"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Offer;->mDateAwarded:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->mDateExpires:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 139
    const-string/jumbo v1, "time_expires"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Offer;->mDateExpires:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->mRedemption:Lcom/yelp/android/serializable/OfferRedemption;

    if-eqz v1, :cond_2

    .line 142
    const-string/jumbo v1, "redemption"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Offer;->mRedemption:Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/OfferRedemption;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->mOfferText:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 145
    const-string/jumbo v1, "offer_text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Offer;->mOfferText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->mPromoText:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 148
    const-string/jumbo v1, "promo_text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Offer;->mPromoText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->mId:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 151
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Offer;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/serializable/_Offer;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    if-eqz v1, :cond_6

    .line 154
    const-string/jumbo v1, "business"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Offer;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    :cond_6
    const-string/jumbo v1, "check_ins_remaining"

    iget v2, p0, Lcom/yelp/android/serializable/_Offer;->mCheckInsRemaining:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mDateAwarded:Ljava/util/Date;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mDateExpires:Ljava/util/Date;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mRedemption:Lcom/yelp/android/serializable/OfferRedemption;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mState:Lcom/yelp/android/serializable/Offer$OfferState;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mOfferText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mPromoText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 87
    iget v0, p0, Lcom/yelp/android/serializable/_Offer;->mCheckInsRemaining:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return-void

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mDateAwarded:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_Offer;->mDateExpires:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_1
.end method
