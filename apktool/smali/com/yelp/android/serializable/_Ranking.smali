.class abstract Lcom/yelp/android/serializable/_Ranking;
.super Ljava/lang/Object;
.source "_Ranking.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusinessName:Ljava/lang/String;

.field protected mCount:I

.field protected mDateCreated:Ljava/util/Date;

.field protected mRank:I

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
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII[I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Ranking;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yelp/android/serializable/_Ranking;->mDateCreated:Ljava/util/Date;

    .line 33
    iput-object p2, p0, Lcom/yelp/android/serializable/_Ranking;->mUserId:Ljava/lang/String;

    .line 34
    iput-object p3, p0, Lcom/yelp/android/serializable/_Ranking;->mUserName:Ljava/lang/String;

    .line 35
    iput-object p4, p0, Lcom/yelp/android/serializable/_Ranking;->mUserPhotoUrl:Ljava/lang/String;

    .line 36
    iput-object p5, p0, Lcom/yelp/android/serializable/_Ranking;->mBusinessName:Ljava/lang/String;

    .line 37
    iput p6, p0, Lcom/yelp/android/serializable/_Ranking;->mUserFriendCount:I

    .line 38
    iput p7, p0, Lcom/yelp/android/serializable/_Ranking;->mUserReviewCount:I

    .line 39
    iput p8, p0, Lcom/yelp/android/serializable/_Ranking;->mUserVideoCount:I

    .line 40
    iput p9, p0, Lcom/yelp/android/serializable/_Ranking;->mUserPhotoCount:I

    .line 41
    iput p10, p0, Lcom/yelp/android/serializable/_Ranking;->mRank:I

    .line 42
    iput p11, p0, Lcom/yelp/android/serializable/_Ranking;->mCount:I

    .line 43
    iput-object p12, p0, Lcom/yelp/android/serializable/_Ranking;->mUserEliteYears:[I

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

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mBusinessName:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/yelp/android/serializable/_Ranking;->mCount:I

    return v0
.end method

.method public getDateCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mDateCreated:Ljava/util/Date;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/yelp/android/serializable/_Ranking;->mRank:I

    return v0
.end method

.method public getUserEliteYears()[I
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserEliteYears:[I

    return-object v0
.end method

.method public getUserFriendCount()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserFriendCount:I

    return v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPhotoCount()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserPhotoCount:I

    return v0
.end method

.method public getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserReviewCount()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserReviewCount:I

    return v0
.end method

.method public getUserVideoCount()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserVideoCount:I

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 5

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

    iput-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mDateCreated:Ljava/util/Date;

    .line 130
    :cond_0
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 131
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserId:Ljava/lang/String;

    .line 133
    :cond_1
    const-string/jumbo v0, "user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    const-string/jumbo v0, "user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserName:Ljava/lang/String;

    .line 136
    :cond_2
    const-string/jumbo v0, "user_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 137
    const-string/jumbo v0, "user_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserPhotoUrl:Ljava/lang/String;

    .line 139
    :cond_3
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 140
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mBusinessName:Ljava/lang/String;

    .line 142
    :cond_4
    const-string/jumbo v0, "user_friend_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserFriendCount:I

    .line 143
    const-string/jumbo v0, "user_review_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserReviewCount:I

    .line 144
    const-string/jumbo v0, "user_video_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserVideoCount:I

    .line 145
    const-string/jumbo v0, "user_photo_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserPhotoCount:I

    .line 146
    const-string/jumbo v0, "rank"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Ranking;->mRank:I

    .line 147
    const-string/jumbo v0, "count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Ranking;->mCount:I

    .line 148
    const-string/jumbo v0, "user_elite_years"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 149
    const-string/jumbo v0, "user_elite_years"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 151
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserEliteYears:[I

    .line 152
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_5

    .line 153
    iget-object v3, p0, Lcom/yelp/android/serializable/_Ranking;->mUserEliteYears:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 156
    :cond_5
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

    iput-object v2, p0, Lcom/yelp/android/serializable/_Ranking;->mDateCreated:Ljava/util/Date;

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserId:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserName:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserPhotoUrl:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mBusinessName:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserFriendCount:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserReviewCount:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserVideoCount:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserPhotoCount:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Ranking;->mRank:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Ranking;->mCount:I

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserEliteYears:[I

    .line 124
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mDateCreated:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mBusinessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserFriendCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserReviewCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserVideoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserPhotoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    iget v0, p0, Lcom/yelp/android/serializable/_Ranking;->mRank:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    iget v0, p0, Lcom/yelp/android/serializable/_Ranking;->mCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mUserEliteYears:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 105
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Ranking;->mDateCreated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
