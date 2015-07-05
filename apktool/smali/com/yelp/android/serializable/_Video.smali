.class abstract Lcom/yelp/android/serializable/_Video;
.super Ljava/lang/Object;
.source "_Video.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusinessId:Ljava/lang/String;

.field protected mCaption:Ljava/lang/String;

.field protected mCurrentUserLiked:Z

.field protected mEmbedCode:Ljava/lang/String;

.field protected mFeedbackPositiveCount:I

.field protected mId:Ljava/lang/String;

.field protected mIndex:I

.field protected mPlayerCode:Ljava/lang/String;

.field protected mThumbnailUrl:Ljava/lang/String;

.field protected mTimeCreated:Ljava/util/Date;

.field protected mUserPassport:Lcom/yelp/android/serializable/Passport;

.field protected mVideoSource:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Lcom/yelp/android/serializable/Passport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Video;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yelp/android/serializable/_Video;->mTimeCreated:Ljava/util/Date;

    .line 33
    iput-object p2, p0, Lcom/yelp/android/serializable/_Video;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    .line 34
    iput-object p3, p0, Lcom/yelp/android/serializable/_Video;->mId:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/yelp/android/serializable/_Video;->mPlayerCode:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/yelp/android/serializable/_Video;->mEmbedCode:Ljava/lang/String;

    .line 37
    iput-object p6, p0, Lcom/yelp/android/serializable/_Video;->mThumbnailUrl:Ljava/lang/String;

    .line 38
    iput-object p7, p0, Lcom/yelp/android/serializable/_Video;->mVideoSource:Ljava/lang/String;

    .line 39
    iput-object p8, p0, Lcom/yelp/android/serializable/_Video;->mBusinessId:Ljava/lang/String;

    .line 40
    iput-object p9, p0, Lcom/yelp/android/serializable/_Video;->mCaption:Ljava/lang/String;

    .line 41
    iput-boolean p10, p0, Lcom/yelp/android/serializable/_Video;->mCurrentUserLiked:Z

    .line 42
    iput p11, p0, Lcom/yelp/android/serializable/_Video;->mFeedbackPositiveCount:I

    .line 43
    iput p12, p0, Lcom/yelp/android/serializable/_Video;->mIndex:I

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

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUserLiked()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_Video;->mCurrentUserLiked:Z

    return v0
.end method

.method public getEmbedCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mEmbedCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackPositiveCount()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/yelp/android/serializable/_Video;->mFeedbackPositiveCount:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/yelp/android/serializable/_Video;->mIndex:I

    return v0
.end method

.method public getPlayerCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mPlayerCode:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mThumbnailUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mTimeCreated:Ljava/util/Date;

    return-object v0
.end method

.method public getUserPassport()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    return-object v0
.end method

.method public getVideoSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mVideoSource:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 127
    const-string/jumbo v0, "time_created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    const-string/jumbo v0, "time_created"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mTimeCreated:Ljava/util/Date;

    .line 130
    :cond_0
    const-string/jumbo v0, "user_passport"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    sget-object v0, Lcom/yelp/android/serializable/Passport;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "user_passport"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Passport;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    .line 133
    :cond_1
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mId:Ljava/lang/String;

    .line 136
    :cond_2
    const-string/jumbo v0, "player_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 137
    const-string/jumbo v0, "player_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mPlayerCode:Ljava/lang/String;

    .line 139
    :cond_3
    const-string/jumbo v0, "embed_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 140
    const-string/jumbo v0, "embed_code"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mEmbedCode:Ljava/lang/String;

    .line 142
    :cond_4
    const-string/jumbo v0, "thumbnail_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 143
    const-string/jumbo v0, "thumbnail_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mThumbnailUrl:Ljava/lang/String;

    .line 145
    :cond_5
    const-string/jumbo v0, "video_source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 146
    const-string/jumbo v0, "video_source"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mVideoSource:Ljava/lang/String;

    .line 148
    :cond_6
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 149
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mBusinessId:Ljava/lang/String;

    .line 151
    :cond_7
    const-string/jumbo v0, "caption"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 152
    const-string/jumbo v0, "caption"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mCaption:Ljava/lang/String;

    .line 154
    :cond_8
    const-string/jumbo v0, "current_user_liked"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Video;->mCurrentUserLiked:Z

    .line 155
    const-string/jumbo v0, "feedback_positive_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Video;->mFeedbackPositiveCount:I

    .line 156
    const-string/jumbo v0, "index"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Video;->mIndex:I

    .line 157
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 109
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 110
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_Video;->mTimeCreated:Ljava/util/Date;

    .line 112
    :cond_0
    const-class v0, Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Passport;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mId:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mPlayerCode:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mEmbedCode:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mThumbnailUrl:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mVideoSource:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mBusinessId:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Video;->mCaption:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 121
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Video;->mCurrentUserLiked:Z

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Video;->mFeedbackPositiveCount:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Video;->mIndex:I

    .line 124
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 160
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/yelp/android/serializable/_Video;->mTimeCreated:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 162
    const-string/jumbo v1, "time_created"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Video;->mTimeCreated:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_Video;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    if-eqz v1, :cond_1

    .line 165
    const-string/jumbo v1, "user_passport"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Video;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Passport;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_Video;->mId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 168
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Video;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/serializable/_Video;->mPlayerCode:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 171
    const-string/jumbo v1, "player_code"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Video;->mPlayerCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    :cond_3
    iget-object v1, p0, Lcom/yelp/android/serializable/_Video;->mEmbedCode:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 174
    const-string/jumbo v1, "embed_code"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Video;->mEmbedCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    :cond_4
    iget-object v1, p0, Lcom/yelp/android/serializable/_Video;->mThumbnailUrl:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 177
    const-string/jumbo v1, "thumbnail_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Video;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    :cond_5
    iget-object v1, p0, Lcom/yelp/android/serializable/_Video;->mVideoSource:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 180
    const-string/jumbo v1, "video_source"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Video;->mVideoSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    :cond_6
    iget-object v1, p0, Lcom/yelp/android/serializable/_Video;->mBusinessId:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 183
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Video;->mBusinessId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    :cond_7
    iget-object v1, p0, Lcom/yelp/android/serializable/_Video;->mCaption:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 186
    const-string/jumbo v1, "caption"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Video;->mCaption:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    :cond_8
    const-string/jumbo v1, "current_user_liked"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_Video;->mCurrentUserLiked:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 189
    const-string/jumbo v1, "feedback_positive_count"

    iget v2, p0, Lcom/yelp/android/serializable/_Video;->mFeedbackPositiveCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 190
    const-string/jumbo v1, "index"

    iget v2, p0, Lcom/yelp/android/serializable/_Video;->mIndex:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 191
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 93
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mTimeCreated:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mPlayerCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mEmbedCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mThumbnailUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mVideoSource:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mCaption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_Video;->mCurrentUserLiked:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 103
    iget v0, p0, Lcom/yelp/android/serializable/_Video;->mFeedbackPositiveCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget v0, p0, Lcom/yelp/android/serializable/_Video;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Video;->mTimeCreated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
