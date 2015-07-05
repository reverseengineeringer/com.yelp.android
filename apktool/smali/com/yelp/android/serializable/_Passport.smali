.class abstract Lcom/yelp/android/serializable/_Passport;
.super Ljava/lang/Object;
.source "_Passport.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mDisabledFeatures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mEliteYears:[I

.field protected mFirstName:Ljava/lang/String;

.field protected mFriendCount:I

.field protected mId:Ljava/lang/String;

.field protected mLastInitial:Ljava/lang/String;

.field protected mName:Ljava/lang/String;

.field protected mPhotoCount:I

.field protected mProfilePhoto:Lcom/yelp/android/serializable/Photo;

.field protected mReviewCount:I

.field protected mVideoCount:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method protected constructor <init>(Ljava/util/List;Lcom/yelp/android/serializable/Photo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII[I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yelp/android/serializable/Photo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIII[I)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Passport;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yelp/android/serializable/_Passport;->mDisabledFeatures:Ljava/util/List;

    .line 32
    iput-object p2, p0, Lcom/yelp/android/serializable/_Passport;->mProfilePhoto:Lcom/yelp/android/serializable/Photo;

    .line 33
    iput-object p3, p0, Lcom/yelp/android/serializable/_Passport;->mId:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/yelp/android/serializable/_Passport;->mName:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/yelp/android/serializable/_Passport;->mFirstName:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/yelp/android/serializable/_Passport;->mLastInitial:Ljava/lang/String;

    .line 37
    iput p7, p0, Lcom/yelp/android/serializable/_Passport;->mReviewCount:I

    .line 38
    iput p8, p0, Lcom/yelp/android/serializable/_Passport;->mFriendCount:I

    .line 39
    iput p9, p0, Lcom/yelp/android/serializable/_Passport;->mVideoCount:I

    .line 40
    iput p10, p0, Lcom/yelp/android/serializable/_Passport;->mPhotoCount:I

    .line 41
    iput-object p11, p0, Lcom/yelp/android/serializable/_Passport;->mEliteYears:[I

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

.method public getDisabledFeatures()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mDisabledFeatures:Ljava/util/List;

    return-object v0
.end method

.method public getEliteYears()[I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mEliteYears:[I

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendCount()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/yelp/android/serializable/_Passport;->mFriendCount:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastInitial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mLastInitial:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/yelp/android/serializable/_Passport;->mPhotoCount:I

    return v0
.end method

.method public getProfilePhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mProfilePhoto:Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/yelp/android/serializable/_Passport;->mReviewCount:I

    return v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/yelp/android/serializable/_Passport;->mVideoCount:I

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 117
    const-string/jumbo v0, "disabled_features"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 118
    const-string/jumbo v0, "disabled_features"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mDisabledFeatures:Ljava/util/List;

    .line 122
    :goto_0
    const-string/jumbo v0, "profile_photo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "profile_photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mProfilePhoto:Lcom/yelp/android/serializable/Photo;

    .line 125
    :cond_0
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mId:Ljava/lang/String;

    .line 128
    :cond_1
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mName:Ljava/lang/String;

    .line 131
    :cond_2
    const-string/jumbo v0, "first_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    const-string/jumbo v0, "first_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mFirstName:Ljava/lang/String;

    .line 134
    :cond_3
    const-string/jumbo v0, "last_initial"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 135
    const-string/jumbo v0, "last_initial"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mLastInitial:Ljava/lang/String;

    .line 137
    :cond_4
    const-string/jumbo v0, "review_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Passport;->mReviewCount:I

    .line 138
    const-string/jumbo v0, "friend_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Passport;->mFriendCount:I

    .line 139
    const-string/jumbo v0, "video_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Passport;->mVideoCount:I

    .line 140
    const-string/jumbo v0, "business_photo_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Passport;->mPhotoCount:I

    .line 141
    const-string/jumbo v0, "elite_years"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 142
    const-string/jumbo v0, "elite_years"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 144
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mEliteYears:[I

    .line 145
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_6

    .line 146
    iget-object v3, p0, Lcom/yelp/android/serializable/_Passport;->mEliteYears:[I

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    aput v4, v3, v0

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 120
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mDisabledFeatures:Ljava/util/List;

    goto/16 :goto_0

    .line 149
    :cond_6
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mDisabledFeatures:Ljava/util/List;

    .line 103
    const-class v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mProfilePhoto:Lcom/yelp/android/serializable/Photo;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mId:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mName:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mFirstName:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mLastInitial:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Passport;->mReviewCount:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Passport;->mFriendCount:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Passport;->mVideoCount:I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Passport;->mPhotoCount:I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mEliteYears:[I

    .line 114
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 152
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 153
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mDisabledFeatures:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 154
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 155
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mDisabledFeatures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 158
    :cond_0
    const-string/jumbo v0, "disabled_features"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mProfilePhoto:Lcom/yelp/android/serializable/Photo;

    if-eqz v0, :cond_2

    .line 161
    const-string/jumbo v0, "profile_photo"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Passport;->mProfilePhoto:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mId:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 164
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Passport;->mId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mName:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 167
    const-string/jumbo v0, "name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Passport;->mName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mFirstName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 170
    const-string/jumbo v0, "first_name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Passport;->mFirstName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mLastInitial:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 173
    const-string/jumbo v0, "last_initial"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Passport;->mLastInitial:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    :cond_6
    const-string/jumbo v0, "review_count"

    iget v2, p0, Lcom/yelp/android/serializable/_Passport;->mReviewCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 176
    const-string/jumbo v0, "friend_count"

    iget v2, p0, Lcom/yelp/android/serializable/_Passport;->mFriendCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 177
    const-string/jumbo v0, "video_count"

    iget v2, p0, Lcom/yelp/android/serializable/_Passport;->mVideoCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 178
    const-string/jumbo v0, "business_photo_count"

    iget v2, p0, Lcom/yelp/android/serializable/_Passport;->mPhotoCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 179
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mEliteYears:[I

    if-eqz v0, :cond_8

    .line 180
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 181
    iget-object v3, p0, Lcom/yelp/android/serializable/_Passport;->mEliteYears:[I

    array-length v4, v3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v4, :cond_7

    aget v5, v3, v0

    .line 182
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 184
    :cond_7
    const-string/jumbo v0, "elite_years"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    :cond_8
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mDisabledFeatures:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mProfilePhoto:Lcom/yelp/android/serializable/Photo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mLastInitial:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget v0, p0, Lcom/yelp/android/serializable/_Passport;->mReviewCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Lcom/yelp/android/serializable/_Passport;->mFriendCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Lcom/yelp/android/serializable/_Passport;->mVideoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Lcom/yelp/android/serializable/_Passport;->mPhotoCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/serializable/_Passport;->mEliteYears:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 99
    return-void
.end method
