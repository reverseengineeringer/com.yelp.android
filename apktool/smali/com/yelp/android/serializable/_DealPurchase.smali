.class abstract Lcom/yelp/android/serializable/_DealPurchase;
.super Ljava/lang/Object;
.source "_DealPurchase.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCustomerEmail:Ljava/lang/String;

.field protected mCustomerName:Ljava/lang/String;

.field protected mId:Ljava/lang/String;

.field protected mIsRedeemed:Z

.field protected mOptionId:Ljava/lang/String;

.field protected mPurchasedByName:Ljava/lang/String;

.field protected mRedemptionCode:Ljava/lang/String;

.field protected mRedemptionTitle:Ljava/lang/String;

.field protected mTerms:Ljava/lang/String;

.field protected mTimeExpire:J

.field protected mTimeRedeemed:J


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJ)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/serializable/_DealPurchase;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yelp/android/serializable/_DealPurchase;->mId:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/yelp/android/serializable/_DealPurchase;->mOptionId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/yelp/android/serializable/_DealPurchase;->mRedemptionCode:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/yelp/android/serializable/_DealPurchase;->mCustomerName:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/yelp/android/serializable/_DealPurchase;->mCustomerEmail:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/yelp/android/serializable/_DealPurchase;->mPurchasedByName:Ljava/lang/String;

    .line 35
    iput-object p7, p0, Lcom/yelp/android/serializable/_DealPurchase;->mRedemptionTitle:Ljava/lang/String;

    .line 36
    iput-object p8, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTerms:Ljava/lang/String;

    .line 37
    iput-boolean p9, p0, Lcom/yelp/android/serializable/_DealPurchase;->mIsRedeemed:Z

    .line 38
    iput-wide p10, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTimeExpire:J

    .line 39
    iput-wide p12, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTimeRedeemed:J

    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomerEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mCustomerEmail:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mCustomerName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mOptionId:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchasedByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mPurchasedByName:Ljava/lang/String;

    return-object v0
.end method

.method public getRedemptionCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mRedemptionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRedemptionTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mRedemptionTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTerms()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTerms:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeExpire()J
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTimeExpire:J

    return-wide v0
.end method

.method public getTimeRedeemed()J
    .locals 2

    .prologue
    .line 77
    iget-wide v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTimeRedeemed:J

    return-wide v0
.end method

.method public isRedeemed()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mIsRedeemed:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 115
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mId:Ljava/lang/String;

    .line 118
    :cond_0
    const-string/jumbo v0, "option_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    const-string/jumbo v0, "option_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mOptionId:Ljava/lang/String;

    .line 121
    :cond_1
    const-string/jumbo v0, "redemption_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 122
    const-string/jumbo v0, "redemption_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mRedemptionCode:Ljava/lang/String;

    .line 124
    :cond_2
    const-string/jumbo v0, "customer_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 125
    const-string/jumbo v0, "customer_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mCustomerName:Ljava/lang/String;

    .line 127
    :cond_3
    const-string/jumbo v0, "customer_email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 128
    const-string/jumbo v0, "customer_email"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mCustomerEmail:Ljava/lang/String;

    .line 130
    :cond_4
    const-string/jumbo v0, "purchased_by_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 131
    const-string/jumbo v0, "purchased_by_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mPurchasedByName:Ljava/lang/String;

    .line 133
    :cond_5
    const-string/jumbo v0, "redemption_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 134
    const-string/jumbo v0, "redemption_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mRedemptionTitle:Ljava/lang/String;

    .line 136
    :cond_6
    const-string/jumbo v0, "terms"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 137
    const-string/jumbo v0, "terms"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTerms:Ljava/lang/String;

    .line 139
    :cond_7
    const-string/jumbo v0, "is_redeemed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mIsRedeemed:Z

    .line 140
    const-string/jumbo v0, "time_expire"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 141
    const-string/jumbo v0, "time_expire"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTimeExpire:J

    .line 145
    :goto_0
    const-string/jumbo v0, "time_redeemed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 146
    const-string/jumbo v0, "time_redeemed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTimeRedeemed:J

    .line 150
    :goto_1
    return-void

    .line 143
    :cond_8
    iput-wide v2, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTimeExpire:J

    goto :goto_0

    .line 148
    :cond_9
    iput-wide v2, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTimeRedeemed:J

    goto :goto_1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mId:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mOptionId:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mRedemptionCode:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mCustomerName:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mCustomerEmail:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mPurchasedByName:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mRedemptionTitle:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTerms:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 109
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mIsRedeemed:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTimeExpire:J

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTimeRedeemed:J

    .line 112
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 153
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 154
    iget-object v1, p0, Lcom/yelp/android/serializable/_DealPurchase;->mId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 155
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_DealPurchase;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_DealPurchase;->mOptionId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 158
    const-string/jumbo v1, "option_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_DealPurchase;->mOptionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_DealPurchase;->mRedemptionCode:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 161
    const-string/jumbo v1, "redemption_code"

    iget-object v2, p0, Lcom/yelp/android/serializable/_DealPurchase;->mRedemptionCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/serializable/_DealPurchase;->mCustomerName:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 164
    const-string/jumbo v1, "customer_name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_DealPurchase;->mCustomerName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/serializable/_DealPurchase;->mCustomerEmail:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 167
    const-string/jumbo v1, "customer_email"

    iget-object v2, p0, Lcom/yelp/android/serializable/_DealPurchase;->mCustomerEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/serializable/_DealPurchase;->mPurchasedByName:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 170
    const-string/jumbo v1, "purchased_by_name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_DealPurchase;->mPurchasedByName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/serializable/_DealPurchase;->mRedemptionTitle:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 173
    const-string/jumbo v1, "redemption_title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_DealPurchase;->mRedemptionTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    :cond_6
    iget-object v1, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTerms:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 176
    const-string/jumbo v1, "terms"

    iget-object v2, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTerms:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    :cond_7
    const-string/jumbo v1, "is_redeemed"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_DealPurchase;->mIsRedeemed:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 179
    const-string/jumbo v1, "time_expire"

    iget-wide v2, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTimeExpire:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 180
    const-string/jumbo v1, "time_redeemed"

    iget-wide v2, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTimeRedeemed:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 181
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mOptionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mRedemptionCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mCustomerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mCustomerEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mPurchasedByName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mRedemptionTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTerms:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_DealPurchase;->mIsRedeemed:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 95
    iget-wide v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTimeExpire:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 96
    iget-wide v0, p0, Lcom/yelp/android/serializable/_DealPurchase;->mTimeRedeemed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    return-void
.end method
