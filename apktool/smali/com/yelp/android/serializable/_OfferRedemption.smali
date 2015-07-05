.class abstract Lcom/yelp/android/serializable/_OfferRedemption;
.super Ljava/lang/Object;
.source "_OfferRedemption.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mDateExpires:Ljava/util/Date;

.field protected mDateRedeemed:Ljava/util/Date;

.field protected mDiscountText:Ljava/lang/String;

.field protected mFinePrint:Ljava/lang/String;

.field protected mInstructionText:Ljava/lang/String;

.field protected mItemText:Ljava/lang/String;

.field protected mSecondsToRedeem:I

.field protected mSystemClockExpiration:J

.field protected mTotalCheckIns:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/serializable/_OfferRedemption;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateRedeemed:Ljava/util/Date;

    .line 30
    iput-object p2, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateExpires:Ljava/util/Date;

    .line 31
    iput-object p3, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDiscountText:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mItemText:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mInstructionText:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mFinePrint:Ljava/lang/String;

    .line 35
    iput p7, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mTotalCheckIns:I

    .line 36
    iput p8, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mSecondsToRedeem:I

    .line 37
    iput-wide p9, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mSystemClockExpiration:J

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getDateExpires()Ljava/util/Date;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateExpires:Ljava/util/Date;

    return-object v0
.end method

.method public getDateRedeemed()Ljava/util/Date;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateRedeemed:Ljava/util/Date;

    return-object v0
.end method

.method public getDiscountText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDiscountText:Ljava/lang/String;

    return-object v0
.end method

.method public getFinePrint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mFinePrint:Ljava/lang/String;

    return-object v0
.end method

.method public getInstructionText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mInstructionText:Ljava/lang/String;

    return-object v0
.end method

.method public getItemText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mItemText:Ljava/lang/String;

    return-object v0
.end method

.method public getSecondsToRedeem()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mSecondsToRedeem:I

    return v0
.end method

.method public getSystemClockExpiration()J
    .locals 2

    .prologue
    .line 69
    iget-wide v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mSystemClockExpiration:J

    return-wide v0
.end method

.method public getTotalCheckIns()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mTotalCheckIns:I

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "time_redeemed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const-string/jumbo v0, "time_redeemed"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateRedeemed:Ljava/util/Date;

    .line 111
    :cond_0
    const-string/jumbo v0, "time_expires"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    const-string/jumbo v0, "time_expires"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateExpires:Ljava/util/Date;

    .line 114
    :cond_1
    const-string/jumbo v0, "discount_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    const-string/jumbo v0, "discount_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDiscountText:Ljava/lang/String;

    .line 117
    :cond_2
    const-string/jumbo v0, "item_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    const-string/jumbo v0, "item_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mItemText:Ljava/lang/String;

    .line 120
    :cond_3
    const-string/jumbo v0, "instruction_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 121
    const-string/jumbo v0, "instruction_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mInstructionText:Ljava/lang/String;

    .line 123
    :cond_4
    const-string/jumbo v0, "fine_print_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 124
    const-string/jumbo v0, "fine_print_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mFinePrint:Ljava/lang/String;

    .line 126
    :cond_5
    const-string/jumbo v0, "total_check_ins"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mTotalCheckIns:I

    .line 127
    const-string/jumbo v0, "seconds_to_redeem"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mSecondsToRedeem:I

    .line 128
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const-wide/32 v4, -0x80000000

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 91
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 92
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateRedeemed:Ljava/util/Date;

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 95
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 96
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateExpires:Ljava/util/Date;

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDiscountText:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mItemText:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mInstructionText:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mFinePrint:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mTotalCheckIns:I

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mSecondsToRedeem:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mSystemClockExpiration:J

    .line 105
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 131
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 132
    iget-object v1, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateRedeemed:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 133
    const-string/jumbo v1, "time_redeemed"

    iget-object v2, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateRedeemed:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateExpires:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 136
    const-string/jumbo v1, "time_expires"

    iget-object v2, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateExpires:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDiscountText:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 139
    const-string/jumbo v1, "discount_text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDiscountText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mItemText:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 142
    const-string/jumbo v1, "item_text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mItemText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mInstructionText:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 145
    const-string/jumbo v1, "instruction_text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mInstructionText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mFinePrint:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 148
    const-string/jumbo v1, "fine_print_text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mFinePrint:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    :cond_5
    const-string/jumbo v1, "total_check_ins"

    iget v2, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mTotalCheckIns:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 151
    const-string/jumbo v1, "seconds_to_redeem"

    iget v2, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mSecondsToRedeem:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 152
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const-wide/32 v2, -0x80000000

    .line 78
    iget-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateRedeemed:Ljava/util/Date;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateExpires:Ljava/util/Date;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDiscountText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mItemText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mInstructionText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mFinePrint:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mTotalCheckIns:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mSecondsToRedeem:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget-wide v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mSystemClockExpiration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateRedeemed:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_OfferRedemption;->mDateExpires:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_1
.end method
