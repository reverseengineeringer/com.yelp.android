.class abstract Lcom/yelp/android/serializable/_ReservationSearchAction;
.super Ljava/lang/Object;
.source "_ReservationSearchAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBorderColor:[I

.field protected mDefaultColorBottom:[I

.field protected mDefaultColorTop:[I

.field protected mIsDisabled:Z

.field protected mPartySize:I

.field protected mSelectedColorBottom:[I

.field protected mSelectedColorTop:[I

.field protected mText:Ljava/lang/String;

.field protected mTextColor:[I

.field protected mTime:Ljava/util/Date;

.field protected mType:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;ZI[I[I[I[I[I[I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReservationSearchAction;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mTime:Ljava/util/Date;

    .line 32
    iput-object p2, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mType:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mText:Ljava/lang/String;

    .line 34
    iput-boolean p4, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mIsDisabled:Z

    .line 35
    iput p5, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mPartySize:I

    .line 36
    iput-object p6, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mTextColor:[I

    .line 37
    iput-object p7, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mDefaultColorTop:[I

    .line 38
    iput-object p8, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mDefaultColorBottom:[I

    .line 39
    iput-object p9, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mSelectedColorTop:[I

    .line 40
    iput-object p10, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mSelectedColorBottom:[I

    .line 41
    iput-object p11, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mBorderColor:[I

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getBorderColor()[I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mBorderColor:[I

    return-object v0
.end method

.method public getDefaultColorBottom()[I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mDefaultColorBottom:[I

    return-object v0
.end method

.method public getDefaultColorTop()[I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mDefaultColorTop:[I

    return-object v0
.end method

.method public getPartySize()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mPartySize:I

    return v0
.end method

.method public getSelectedColorBottom()[I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mSelectedColorBottom:[I

    return-object v0
.end method

.method public getSelectedColorTop()[I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mSelectedColorTop:[I

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()[I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mTextColor:[I

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mTime:Ljava/util/Date;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public isDisabled()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mIsDisabled:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 126
    const-string/jumbo v1, "time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const-string/jumbo v1, "time"

    invoke-static {p1, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mTime:Ljava/util/Date;

    .line 129
    :cond_0
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mType:Ljava/lang/String;

    .line 132
    :cond_1
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 133
    const-string/jumbo v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mText:Ljava/lang/String;

    .line 135
    :cond_2
    const-string/jumbo v1, "is_disabled"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mIsDisabled:Z

    .line 136
    const-string/jumbo v1, "party_size"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mPartySize:I

    .line 137
    const-string/jumbo v1, "text_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 138
    const-string/jumbo v1, "text_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 140
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mTextColor:[I

    move v1, v0

    .line 141
    :goto_0
    if-ge v1, v3, :cond_3

    .line 142
    iget-object v4, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mTextColor:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_3
    const-string/jumbo v1, "default_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 146
    const-string/jumbo v1, "default_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 147
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 148
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mDefaultColorTop:[I

    move v1, v0

    .line 149
    :goto_1
    if-ge v1, v3, :cond_4

    .line 150
    iget-object v4, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mDefaultColorTop:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 153
    :cond_4
    const-string/jumbo v1, "default_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 154
    const-string/jumbo v1, "default_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 156
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mDefaultColorBottom:[I

    move v1, v0

    .line 157
    :goto_2
    if-ge v1, v3, :cond_5

    .line 158
    iget-object v4, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mDefaultColorBottom:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 161
    :cond_5
    const-string/jumbo v1, "selected_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 162
    const-string/jumbo v1, "selected_color_top"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 164
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mSelectedColorTop:[I

    move v1, v0

    .line 165
    :goto_3
    if-ge v1, v3, :cond_6

    .line 166
    iget-object v4, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mSelectedColorTop:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 165
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 169
    :cond_6
    const-string/jumbo v1, "selected_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 170
    const-string/jumbo v1, "selected_color_bottom"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 172
    new-array v1, v3, [I

    iput-object v1, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mSelectedColorBottom:[I

    move v1, v0

    .line 173
    :goto_4
    if-ge v1, v3, :cond_7

    .line 174
    iget-object v4, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mSelectedColorBottom:[I

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    aput v5, v4, v1

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 177
    :cond_7
    const-string/jumbo v1, "border_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 178
    const-string/jumbo v1, "border_color"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 179
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 180
    new-array v3, v2, [I

    iput-object v3, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mBorderColor:[I

    .line 181
    :goto_5
    if-ge v0, v2, :cond_8

    .line 182
    iget-object v3, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mBorderColor:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 185
    :cond_8
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 103
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 104
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mTime:Ljava/util/Date;

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mType:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mText:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 109
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mIsDisabled:Z

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mPartySize:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mTextColor:[I

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mDefaultColorTop:[I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mDefaultColorBottom:[I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mSelectedColorTop:[I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mSelectedColorBottom:[I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mBorderColor:[I

    .line 123
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mTime:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mIsDisabled:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 92
    iget v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mPartySize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mTextColor:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mDefaultColorTop:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mDefaultColorBottom:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mSelectedColorTop:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mSelectedColorBottom:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mBorderColor:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 99
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReservationSearchAction;->mTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
