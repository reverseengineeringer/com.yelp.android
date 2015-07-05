.class abstract Lcom/yelp/android/serializable/_Reservation;
.super Ljava/lang/Object;
.source "_Reservation.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAttributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/AttributedLabelValuePair;",
            ">;"
        }
    .end annotation
.end field

.field protected mCancelString:Ljava/lang/String;

.field protected mConfirmationNumber:Ljava/lang/String;

.field protected mConfirmationSubtitle:Ljava/lang/String;

.field protected mConfirmationTitle:Ljava/lang/String;

.field protected mCreditCardHold:Z

.field protected mDatestamp:Ljava/util/Date;

.field protected mHeaderTitle:Ljava/lang/String;

.field protected mPartySize:I

.field protected mQueryId:Ljava/lang/String;

.field protected mSelectedTimeId:Ljava/lang/String;

.field protected mTimeId:I

.field protected mTransactionLockId:Ljava/lang/String;

.field protected mViewTitle:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/AttributedLabelValuePair;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZII)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Reservation;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yelp/android/serializable/_Reservation;->mDatestamp:Ljava/util/Date;

    .line 36
    iput-object p2, p0, Lcom/yelp/android/serializable/_Reservation;->mAttributes:Ljava/util/List;

    .line 37
    iput-object p3, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationTitle:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationSubtitle:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/yelp/android/serializable/_Reservation;->mViewTitle:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcom/yelp/android/serializable/_Reservation;->mHeaderTitle:Ljava/lang/String;

    .line 41
    iput-object p7, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationNumber:Ljava/lang/String;

    .line 42
    iput-object p8, p0, Lcom/yelp/android/serializable/_Reservation;->mCancelString:Ljava/lang/String;

    .line 43
    iput-object p9, p0, Lcom/yelp/android/serializable/_Reservation;->mQueryId:Ljava/lang/String;

    .line 44
    iput-object p10, p0, Lcom/yelp/android/serializable/_Reservation;->mSelectedTimeId:Ljava/lang/String;

    .line 45
    iput-object p11, p0, Lcom/yelp/android/serializable/_Reservation;->mTransactionLockId:Ljava/lang/String;

    .line 46
    iput-boolean p12, p0, Lcom/yelp/android/serializable/_Reservation;->mCreditCardHold:Z

    .line 47
    iput p13, p0, Lcom/yelp/android/serializable/_Reservation;->mPartySize:I

    .line 48
    iput p14, p0, Lcom/yelp/android/serializable/_Reservation;->mTimeId:I

    .line 49
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/AttributedLabelValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mAttributes:Ljava/util/List;

    return-object v0
.end method

.method public getCancelString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mCancelString:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmationNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmationSubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationSubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getConfirmationTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditCardHold()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_Reservation;->mCreditCardHold:Z

    return v0
.end method

.method public getDatestamp()Ljava/util/Date;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mDatestamp:Ljava/util/Date;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mHeaderTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPartySize()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/yelp/android/serializable/_Reservation;->mPartySize:I

    return v0
.end method

.method public getQueryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mQueryId:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedTimeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mSelectedTimeId:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeId()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/yelp/android/serializable/_Reservation;->mTimeId:I

    return v0
.end method

.method public getTransactionLockId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mTransactionLockId:Ljava/lang/String;

    return-object v0
.end method

.method public getViewTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mViewTitle:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 142
    const-string/jumbo v0, "timestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const-string/jumbo v0, "timestamp"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mDatestamp:Ljava/util/Date;

    .line 145
    :cond_0
    const-string/jumbo v0, "attributes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 146
    const-string/jumbo v0, "attributes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/AttributedLabelValuePair;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mAttributes:Ljava/util/List;

    .line 150
    :goto_0
    const-string/jumbo v0, "confirmation_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    const-string/jumbo v0, "confirmation_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationTitle:Ljava/lang/String;

    .line 153
    :cond_1
    const-string/jumbo v0, "confirmation_details_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    const-string/jumbo v0, "confirmation_details_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationSubtitle:Ljava/lang/String;

    .line 156
    :cond_2
    const-string/jumbo v0, "view_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 157
    const-string/jumbo v0, "view_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mViewTitle:Ljava/lang/String;

    .line 159
    :cond_3
    const-string/jumbo v0, "header_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 160
    const-string/jumbo v0, "header_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mHeaderTitle:Ljava/lang/String;

    .line 162
    :cond_4
    const-string/jumbo v0, "confirmation_number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 163
    const-string/jumbo v0, "confirmation_number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationNumber:Ljava/lang/String;

    .line 165
    :cond_5
    const-string/jumbo v0, "cancel_action_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 166
    const-string/jumbo v0, "cancel_action_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mCancelString:Ljava/lang/String;

    .line 168
    :cond_6
    const-string/jumbo v0, "query_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 169
    const-string/jumbo v0, "query_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mQueryId:Ljava/lang/String;

    .line 171
    :cond_7
    const-string/jumbo v0, "time_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 172
    const-string/jumbo v0, "time_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mSelectedTimeId:Ljava/lang/String;

    .line 174
    :cond_8
    const-string/jumbo v0, "reservation_lease_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 175
    const-string/jumbo v0, "reservation_lease_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mTransactionLockId:Ljava/lang/String;

    .line 177
    :cond_9
    const-string/jumbo v0, "cc_hold"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Reservation;->mCreditCardHold:Z

    .line 178
    const-string/jumbo v0, "party_size"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Reservation;->mPartySize:I

    .line 179
    const-string/jumbo v0, "time_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Reservation;->mTimeId:I

    .line 180
    return-void

    .line 148
    :cond_a
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mAttributes:Ljava/util/List;

    goto/16 :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 122
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 123
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_Reservation;->mDatestamp:Ljava/util/Date;

    .line 125
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/AttributedLabelValuePair;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mAttributes:Ljava/util/List;

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationTitle:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationSubtitle:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mViewTitle:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mHeaderTitle:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationNumber:Ljava/lang/String;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mCancelString:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mQueryId:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mSelectedTimeId:Ljava/lang/String;

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mTransactionLockId:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 136
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Reservation;->mCreditCardHold:Z

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Reservation;->mPartySize:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Reservation;->mTimeId:I

    .line 139
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 183
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 184
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mDatestamp:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 185
    const-string/jumbo v0, "timestamp"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Reservation;->mDatestamp:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mAttributes:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 188
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 189
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mAttributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/AttributedLabelValuePair;

    .line 190
    invoke-virtual {v0}, Lcom/yelp/android/serializable/AttributedLabelValuePair;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 192
    :cond_1
    const-string/jumbo v0, "attributes"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 195
    const-string/jumbo v0, "confirmation_title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationTitle:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationSubtitle:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 198
    const-string/jumbo v0, "confirmation_details_title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationSubtitle:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mViewTitle:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 201
    const-string/jumbo v0, "view_title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Reservation;->mViewTitle:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mHeaderTitle:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 204
    const-string/jumbo v0, "header_title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Reservation;->mHeaderTitle:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationNumber:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 207
    const-string/jumbo v0, "confirmation_number"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationNumber:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mCancelString:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 210
    const-string/jumbo v0, "cancel_action_title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Reservation;->mCancelString:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mQueryId:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 213
    const-string/jumbo v0, "query_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Reservation;->mQueryId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mSelectedTimeId:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 216
    const-string/jumbo v0, "time_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Reservation;->mSelectedTimeId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mTransactionLockId:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 219
    const-string/jumbo v0, "reservation_lease_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Reservation;->mTransactionLockId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    :cond_b
    const-string/jumbo v0, "cc_hold"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_Reservation;->mCreditCardHold:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 222
    const-string/jumbo v0, "party_size"

    iget v2, p0, Lcom/yelp/android/serializable/_Reservation;->mPartySize:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 223
    const-string/jumbo v0, "time_id"

    iget v2, p0, Lcom/yelp/android/serializable/_Reservation;->mTimeId:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 224
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mDatestamp:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 105
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mAttributes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 106
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationSubtitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mViewTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mHeaderTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mConfirmationNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mCancelString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mQueryId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mSelectedTimeId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mTransactionLockId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_Reservation;->mCreditCardHold:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 116
    iget v0, p0, Lcom/yelp/android/serializable/_Reservation;->mPartySize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/yelp/android/serializable/_Reservation;->mTimeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Reservation;->mDatestamp:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
