.class abstract Lcom/yelp/android/serializable/_TalkTopic;
.super Ljava/lang/Object;
.source "_TalkTopic.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCategoryName:Ljava/lang/String;

.field protected mId:Ljava/lang/String;

.field protected mReplyCount:I

.field protected mText:Ljava/lang/String;

.field protected mTimeCreated:Ljava/util/Date;

.field protected mTimeModified:Ljava/util/Date;

.field protected mTitle:Ljava/lang/String;

.field protected mUserEliteYears:[I

.field protected mUserFriendCount:I

.field protected mUserId:Ljava/lang/String;

.field protected mUserName:Ljava/lang/String;

.field protected mUserPhotoCount:I

.field protected mUserPhotoUrl:Ljava/lang/String;

.field protected mUserReviewCount:I

.field protected mUserVideoCount:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII[I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/yelp/android/serializable/_TalkTopic;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTimeCreated:Ljava/util/Date;

    .line 36
    iput-object p2, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTimeModified:Ljava/util/Date;

    .line 37
    iput-object p3, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTitle:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Lcom/yelp/android/serializable/_TalkTopic;->mId:Ljava/lang/String;

    .line 39
    iput-object p5, p0, Lcom/yelp/android/serializable/_TalkTopic;->mText:Ljava/lang/String;

    .line 40
    iput-object p6, p0, Lcom/yelp/android/serializable/_TalkTopic;->mCategoryName:Ljava/lang/String;

    .line 41
    iput-object p7, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserName:Ljava/lang/String;

    .line 42
    iput-object p8, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserPhotoUrl:Ljava/lang/String;

    .line 43
    iput-object p9, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserId:Ljava/lang/String;

    .line 44
    iput p10, p0, Lcom/yelp/android/serializable/_TalkTopic;->mReplyCount:I

    .line 45
    iput p11, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserReviewCount:I

    .line 46
    iput p12, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserVideoCount:I

    .line 47
    iput p13, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserPhotoCount:I

    .line 48
    iput p14, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserFriendCount:I

    .line 49
    iput-object p15, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserEliteYears:[I

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getReplyCount()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mReplyCount:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTimeCreated:Ljava/util/Date;

    return-object v0
.end method

.method public getTimeModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTimeModified:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUserEliteYears()[I
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserEliteYears:[I

    return-object v0
.end method

.method public getUserFriendCount()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserFriendCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPhotoCount()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserPhotoCount:I

    return v0
.end method

.method public getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserReviewCount()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserReviewCount:I

    return v0
.end method

.method public getUserVideoCount()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserVideoCount:I

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 151
    const-string/jumbo v0, "time_created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    const-string/jumbo v0, "time_created"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTimeCreated:Ljava/util/Date;

    .line 154
    :cond_0
    const-string/jumbo v0, "time_modified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 155
    const-string/jumbo v0, "time_modified"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTimeModified:Ljava/util/Date;

    .line 157
    :cond_1
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 158
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTitle:Ljava/lang/String;

    .line 160
    :cond_2
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 161
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mId:Ljava/lang/String;

    .line 163
    :cond_3
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 164
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mText:Ljava/lang/String;

    .line 166
    :cond_4
    const-string/jumbo v0, "category_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 167
    const-string/jumbo v0, "category_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mCategoryName:Ljava/lang/String;

    .line 169
    :cond_5
    const-string/jumbo v0, "user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 170
    const-string/jumbo v0, "user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserName:Ljava/lang/String;

    .line 172
    :cond_6
    const-string/jumbo v0, "user_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 173
    const-string/jumbo v0, "user_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserPhotoUrl:Ljava/lang/String;

    .line 175
    :cond_7
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 176
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserId:Ljava/lang/String;

    .line 178
    :cond_8
    const-string/jumbo v0, "reply_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mReplyCount:I

    .line 179
    const-string/jumbo v0, "user_review_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserReviewCount:I

    .line 180
    const-string/jumbo v0, "user_video_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserVideoCount:I

    .line 181
    const-string/jumbo v0, "user_photo_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserPhotoCount:I

    .line 182
    const-string/jumbo v0, "user_friend_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserFriendCount:I

    .line 183
    const-string/jumbo v0, "user_elite_years"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 184
    const-string/jumbo v0, "user_elite_years"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 186
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserEliteYears:[I

    .line 187
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_9

    .line 188
    iget-object v3, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserEliteYears:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 191
    :cond_9
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const-wide/32 v4, -0x80000000

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 127
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 128
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTimeCreated:Ljava/util/Date;

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 131
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 132
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTimeModified:Ljava/util/Date;

    .line 134
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTitle:Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mId:Ljava/lang/String;

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mText:Ljava/lang/String;

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mCategoryName:Ljava/lang/String;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserPhotoUrl:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserId:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mReplyCount:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserReviewCount:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserVideoCount:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserPhotoCount:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserFriendCount:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserEliteYears:[I

    .line 148
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const-wide/32 v2, -0x80000000

    .line 108
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTimeCreated:Ljava/util/Date;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 109
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTimeModified:Ljava/util/Date;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 110
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mReplyCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserReviewCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserVideoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserPhotoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserFriendCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mUserEliteYears:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 123
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTimeCreated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkTopic;->mTimeModified:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_1
.end method
