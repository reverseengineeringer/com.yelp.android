.class abstract Lcom/yelp/android/serializable/_Badge;
.super Ljava/lang/Object;
.source "_Badge.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mDescription:Ljava/lang/String;

.field protected mExpirePercent:F

.field protected mExpireTime:Ljava/util/Date;

.field protected mId:Ljava/lang/String;

.field protected mImagePath:Ljava/lang/String;

.field protected mImageSmallPath:Ljava/lang/String;

.field protected mImageSmallUrl:Ljava/lang/String;

.field protected mImageUrl:Ljava/lang/String;

.field protected mIsAssigned:Z

.field protected mIsNew:Z

.field protected mTimeAwarded:Ljava/util/Date;

.field protected mTitle:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZF)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Badge;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yelp/android/serializable/_Badge;->mTimeAwarded:Ljava/util/Date;

    .line 33
    iput-object p2, p0, Lcom/yelp/android/serializable/_Badge;->mExpireTime:Ljava/util/Date;

    .line 34
    iput-object p3, p0, Lcom/yelp/android/serializable/_Badge;->mTitle:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/yelp/android/serializable/_Badge;->mId:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/yelp/android/serializable/_Badge;->mDescription:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/yelp/android/serializable/_Badge;->mImageUrl:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/yelp/android/serializable/_Badge;->mImageSmallUrl:Ljava/lang/String;

    .line 39
    iput-object p8, p0, Lcom/yelp/android/serializable/_Badge;->mImagePath:Ljava/lang/String;

    .line 40
    iput-object p9, p0, Lcom/yelp/android/serializable/_Badge;->mImageSmallPath:Ljava/lang/String;

    .line 41
    iput-boolean p10, p0, Lcom/yelp/android/serializable/_Badge;->mIsNew:Z

    .line 42
    iput-boolean p11, p0, Lcom/yelp/android/serializable/_Badge;->mIsAssigned:Z

    .line 43
    iput p12, p0, Lcom/yelp/android/serializable/_Badge;->mExpirePercent:F

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getExpirePercent()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/yelp/android/serializable/_Badge;->mExpirePercent:F

    return v0
.end method

.method public getExpireTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mExpireTime:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageSmallPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImageSmallPath:Ljava/lang/String;

    return-object v0
.end method

.method public getImageSmallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImageSmallUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeAwarded()Ljava/util/Date;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mTimeAwarded:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAssigned()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_Badge;->mIsAssigned:Z

    return v0
.end method

.method public isNew()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_Badge;->mIsNew:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 129
    const-string/jumbo v0, "time_awarded"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const-string/jumbo v0, "time_awarded"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mTimeAwarded:Ljava/util/Date;

    .line 132
    :cond_0
    const-string/jumbo v0, "expire_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    const-string/jumbo v0, "expire_time"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mExpireTime:Ljava/util/Date;

    .line 135
    :cond_1
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mTitle:Ljava/lang/String;

    .line 138
    :cond_2
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 139
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mId:Ljava/lang/String;

    .line 141
    :cond_3
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 142
    const-string/jumbo v0, "description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mDescription:Ljava/lang/String;

    .line 144
    :cond_4
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 145
    const-string/jumbo v0, "image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImageUrl:Ljava/lang/String;

    .line 147
    :cond_5
    const-string/jumbo v0, "image_small_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 148
    const-string/jumbo v0, "image_small_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImageSmallUrl:Ljava/lang/String;

    .line 150
    :cond_6
    const-string/jumbo v0, "image_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 151
    const-string/jumbo v0, "image_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImagePath:Ljava/lang/String;

    .line 153
    :cond_7
    const-string/jumbo v0, "image_small_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 154
    const-string/jumbo v0, "image_small_path"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImageSmallPath:Ljava/lang/String;

    .line 156
    :cond_8
    const-string/jumbo v0, "new"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Badge;->mIsNew:Z

    .line 157
    const-string/jumbo v0, "assigned"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Badge;->mIsAssigned:Z

    .line 158
    const-string/jumbo v0, "expire_pct"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/yelp/android/serializable/_Badge;->mExpirePercent:F

    .line 159
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const-wide/32 v4, -0x80000000

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 108
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 109
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_Badge;->mTimeAwarded:Ljava/util/Date;

    .line 111
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 112
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 113
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_Badge;->mExpireTime:Ljava/util/Date;

    .line 115
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mTitle:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mId:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mDescription:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImageUrl:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImageSmallUrl:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImagePath:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImageSmallPath:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 123
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/yelp/android/serializable/_Badge;->mIsNew:Z

    .line 124
    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Badge;->mIsAssigned:Z

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Badge;->mExpirePercent:F

    .line 126
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 162
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 163
    iget-object v1, p0, Lcom/yelp/android/serializable/_Badge;->mTimeAwarded:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 164
    const-string/jumbo v1, "time_awarded"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Badge;->mTimeAwarded:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_Badge;->mExpireTime:Ljava/util/Date;

    if-eqz v1, :cond_1

    .line 167
    const-string/jumbo v1, "expire_time"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Badge;->mExpireTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_Badge;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 170
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Badge;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/serializable/_Badge;->mId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 173
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Badge;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/serializable/_Badge;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 176
    const-string/jumbo v1, "description"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Badge;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/serializable/_Badge;->mImageUrl:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 179
    const-string/jumbo v1, "image_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Badge;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/serializable/_Badge;->mImageSmallUrl:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 182
    const-string/jumbo v1, "image_small_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Badge;->mImageSmallUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    :cond_6
    iget-object v1, p0, Lcom/yelp/android/serializable/_Badge;->mImagePath:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 185
    const-string/jumbo v1, "image_path"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Badge;->mImagePath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    :cond_7
    iget-object v1, p0, Lcom/yelp/android/serializable/_Badge;->mImageSmallPath:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 188
    const-string/jumbo v1, "image_small_path"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Badge;->mImageSmallPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 190
    :cond_8
    const-string/jumbo v1, "new"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_Badge;->mIsNew:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 191
    const-string/jumbo v1, "assigned"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_Badge;->mIsAssigned:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 192
    const-string/jumbo v1, "expire_pct"

    iget v2, p0, Lcom/yelp/android/serializable/_Badge;->mExpirePercent:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 193
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const-wide/32 v2, -0x80000000

    .line 93
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mTimeAwarded:Ljava/util/Date;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mExpireTime:Ljava/util/Date;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImageSmallUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mImageSmallPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_Badge;->mIsNew:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_Badge;->mIsAssigned:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 103
    iget v0, p0, Lcom/yelp/android/serializable/_Badge;->mExpirePercent:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 104
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mTimeAwarded:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_Badge;->mExpireTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_1
.end method
