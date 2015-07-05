.class abstract Lcom/yelp/android/serializable/_Tip;
.super Ljava/lang/Object;
.source "_Tip.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusinessId:Ljava/lang/String;

.field protected mBusinessName:Ljava/lang/String;

.field protected mBusinessPhotoUrl:Ljava/lang/String;

.field protected mComplimentCount:I

.field protected mId:Ljava/lang/String;

.field protected mIsFirstTip:Z

.field protected mPhoto:Lcom/yelp/android/serializable/Photo;

.field protected mPositiveFeedback:I

.field protected mPrivateFeedback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mText:Ljava/lang/String;

.field protected mTime:Ljava/util/Date;

.field protected mTipOfTheDayTime:Ljava/util/Date;

.field protected mUserId:Ljava/lang/String;

.field protected mUserName:Ljava/lang/String;

.field protected mUserPhotoUrl:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lcom/yelp/android/serializable/Photo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yelp/android/serializable/Photo;",
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
    .line 38
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Tip;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/yelp/android/serializable/_Tip;->mTime:Ljava/util/Date;

    .line 40
    iput-object p2, p0, Lcom/yelp/android/serializable/_Tip;->mTipOfTheDayTime:Ljava/util/Date;

    .line 41
    iput-object p3, p0, Lcom/yelp/android/serializable/_Tip;->mPrivateFeedback:Ljava/util/List;

    .line 42
    iput-object p4, p0, Lcom/yelp/android/serializable/_Tip;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 43
    iput-object p5, p0, Lcom/yelp/android/serializable/_Tip;->mId:Ljava/lang/String;

    .line 44
    iput-object p6, p0, Lcom/yelp/android/serializable/_Tip;->mUserName:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lcom/yelp/android/serializable/_Tip;->mUserId:Ljava/lang/String;

    .line 46
    iput-object p8, p0, Lcom/yelp/android/serializable/_Tip;->mText:Ljava/lang/String;

    .line 47
    iput-object p9, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessId:Ljava/lang/String;

    .line 48
    iput-object p10, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessPhotoUrl:Ljava/lang/String;

    .line 49
    iput-object p11, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessName:Ljava/lang/String;

    .line 50
    iput-object p12, p0, Lcom/yelp/android/serializable/_Tip;->mUserPhotoUrl:Ljava/lang/String;

    .line 51
    iput-boolean p13, p0, Lcom/yelp/android/serializable/_Tip;->mIsFirstTip:Z

    .line 52
    iput p14, p0, Lcom/yelp/android/serializable/_Tip;->mPositiveFeedback:I

    .line 53
    iput p15, p0, Lcom/yelp/android/serializable/_Tip;->mComplimentCount:I

    .line 54
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessName:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getComplimentCount()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/yelp/android/serializable/_Tip;->mComplimentCount:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mPhoto:Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method public getPositiveFeedback()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/yelp/android/serializable/_Tip;->mPositiveFeedback:I

    return v0
.end method

.method public getPrivateFeedback()Ljava/util/List;
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
    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mPrivateFeedback:Ljava/util/List;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mTime:Ljava/util/Date;

    return-object v0
.end method

.method public getTipOfTheDayTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mTipOfTheDayTime:Ljava/util/Date;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mUserPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isFirstTip()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_Tip;->mIsFirstTip:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 155
    const-string/jumbo v0, "time_modified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    const-string/jumbo v0, "time_modified"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mTime:Ljava/util/Date;

    .line 158
    :cond_0
    const-string/jumbo v0, "totd_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 159
    const-string/jumbo v0, "totd_time"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mTipOfTheDayTime:Ljava/util/Date;

    .line 161
    :cond_1
    const-string/jumbo v0, "feedback"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 162
    const-string/jumbo v0, "feedback"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mPrivateFeedback:Ljava/util/List;

    .line 166
    :goto_0
    const-string/jumbo v0, "photo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 167
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 169
    :cond_2
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 170
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mId:Ljava/lang/String;

    .line 172
    :cond_3
    const-string/jumbo v0, "user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 173
    const-string/jumbo v0, "user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mUserName:Ljava/lang/String;

    .line 175
    :cond_4
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 176
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mUserId:Ljava/lang/String;

    .line 178
    :cond_5
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 179
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mText:Ljava/lang/String;

    .line 181
    :cond_6
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 182
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessId:Ljava/lang/String;

    .line 184
    :cond_7
    const-string/jumbo v0, "business_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 185
    const-string/jumbo v0, "business_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessPhotoUrl:Ljava/lang/String;

    .line 187
    :cond_8
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 188
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessName:Ljava/lang/String;

    .line 190
    :cond_9
    const-string/jumbo v0, "user_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 191
    const-string/jumbo v0, "user_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mUserPhotoUrl:Ljava/lang/String;

    .line 193
    :cond_a
    const-string/jumbo v0, "is_first_tip"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Tip;->mIsFirstTip:Z

    .line 194
    const-string/jumbo v0, "feedback_positive_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Tip;->mPositiveFeedback:I

    .line 195
    const-string/jumbo v0, "compliment_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Tip;->mComplimentCount:I

    .line 196
    return-void

    .line 164
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mPrivateFeedback:Ljava/util/List;

    goto/16 :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const-wide/32 v4, -0x80000000

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 131
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 132
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_Tip;->mTime:Ljava/util/Date;

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 135
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 136
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_Tip;->mTipOfTheDayTime:Ljava/util/Date;

    .line 138
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mPrivateFeedback:Ljava/util/List;

    .line 139
    const-class v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mId:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mUserName:Ljava/lang/String;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mUserId:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mText:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessId:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessPhotoUrl:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessName:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mUserPhotoUrl:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 149
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Tip;->mIsFirstTip:Z

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Tip;->mPositiveFeedback:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Tip;->mComplimentCount:I

    .line 152
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    .line 199
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 200
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mTime:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 201
    const-string/jumbo v0, "time_modified"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Tip;->mTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mTipOfTheDayTime:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 204
    const-string/jumbo v0, "totd_time"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Tip;->mTipOfTheDayTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mPrivateFeedback:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 207
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 208
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mPrivateFeedback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 209
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 211
    :cond_2
    const-string/jumbo v0, "feedback"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mPhoto:Lcom/yelp/android/serializable/Photo;

    if-eqz v0, :cond_4

    .line 214
    const-string/jumbo v0, "photo"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Tip;->mPhoto:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 216
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 217
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Tip;->mId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mUserName:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 220
    const-string/jumbo v0, "user_name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Tip;->mUserName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mUserId:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 223
    const-string/jumbo v0, "user_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Tip;->mUserId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mText:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 226
    const-string/jumbo v0, "text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Tip;->mText:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    :cond_8
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessId:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 229
    const-string/jumbo v0, "business_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    :cond_9
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessPhotoUrl:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 232
    const-string/jumbo v0, "business_photo_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessPhotoUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    :cond_a
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessName:Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 235
    const-string/jumbo v0, "business_name"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    :cond_b
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mUserPhotoUrl:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 238
    const-string/jumbo v0, "user_photo_url"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Tip;->mUserPhotoUrl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    :cond_c
    const-string/jumbo v0, "is_first_tip"

    iget-boolean v2, p0, Lcom/yelp/android/serializable/_Tip;->mIsFirstTip:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 241
    const-string/jumbo v0, "feedback_positive_count"

    iget v2, p0, Lcom/yelp/android/serializable/_Tip;->mPositiveFeedback:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 242
    const-string/jumbo v0, "compliment_count"

    iget v2, p0, Lcom/yelp/android/serializable/_Tip;->mComplimentCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 243
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const-wide/32 v2, -0x80000000

    const/4 v4, 0x0

    .line 112
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mTime:Ljava/util/Date;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 113
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mTipOfTheDayTime:Ljava/util/Date;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mPrivateFeedback:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mPhoto:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {p1, v0, v4}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mBusinessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mUserPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_Tip;->mIsFirstTip:Z

    aput-boolean v1, v0, v4

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 125
    iget v0, p0, Lcom/yelp/android/serializable/_Tip;->mPositiveFeedback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/yelp/android/serializable/_Tip;->mComplimentCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_Tip;->mTipOfTheDayTime:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_1
.end method
