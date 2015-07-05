.class abstract Lcom/yelp/android/serializable/_Photo;
.super Ljava/lang/Object;
.source "_Photo.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusinessId:Ljava/lang/String;

.field protected mCaption:Ljava/lang/String;

.field protected mFeedbackPositiveCount:I

.field protected mId:Ljava/lang/String;

.field protected mIndex:I

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

.field protected mTimeCreated:Ljava/util/Date;

.field protected mUrlPrefix:Ljava/lang/String;

.field protected mUrlSuffix:Ljava/lang/String;

.field protected mUserPassport:Lcom/yelp/android/serializable/Passport;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/List;Lcom/yelp/android/serializable/Passport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yelp/android/serializable/Passport;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Photo;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yelp/android/serializable/_Photo;->mTimeCreated:Ljava/util/Date;

    .line 32
    iput-object p2, p0, Lcom/yelp/android/serializable/_Photo;->mPrivateFeedback:Ljava/util/List;

    .line 33
    iput-object p3, p0, Lcom/yelp/android/serializable/_Photo;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    .line 34
    iput-object p4, p0, Lcom/yelp/android/serializable/_Photo;->mId:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/yelp/android/serializable/_Photo;->mCaption:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/yelp/android/serializable/_Photo;->mUrlPrefix:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/yelp/android/serializable/_Photo;->mUrlSuffix:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcom/yelp/android/serializable/_Photo;->mBusinessId:Ljava/lang/String;

    .line 39
    iput p9, p0, Lcom/yelp/android/serializable/_Photo;->mFeedbackPositiveCount:I

    .line 40
    iput p10, p0, Lcom/yelp/android/serializable/_Photo;->mIndex:I

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getCaption()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mCaption:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackPositiveCount()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/yelp/android/serializable/_Photo;->mFeedbackPositiveCount:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/yelp/android/serializable/_Photo;->mIndex:I

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
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mPrivateFeedback:Ljava/util/List;

    return-object v0
.end method

.method public getTimeCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mTimeCreated:Ljava/util/Date;

    return-object v0
.end method

.method public getUrlPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mUrlPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mUrlSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPassport()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 113
    const-string/jumbo v0, "time_created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const-string/jumbo v0, "time_created"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mTimeCreated:Ljava/util/Date;

    .line 116
    :cond_0
    const-string/jumbo v0, "feedback"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 117
    const-string/jumbo v0, "feedback"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mPrivateFeedback:Ljava/util/List;

    .line 121
    :goto_0
    const-string/jumbo v0, "user_passport"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 122
    sget-object v0, Lcom/yelp/android/serializable/Passport;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "user_passport"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Passport;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    .line 124
    :cond_1
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mId:Ljava/lang/String;

    .line 127
    :cond_2
    const-string/jumbo v0, "caption"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 128
    const-string/jumbo v0, "caption"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mCaption:Ljava/lang/String;

    .line 130
    :cond_3
    const-string/jumbo v0, "url_prefix"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 131
    const-string/jumbo v0, "url_prefix"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mUrlPrefix:Ljava/lang/String;

    .line 133
    :cond_4
    const-string/jumbo v0, "url_suffix"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 134
    const-string/jumbo v0, "url_suffix"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mUrlSuffix:Ljava/lang/String;

    .line 136
    :cond_5
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 137
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mBusinessId:Ljava/lang/String;

    .line 139
    :cond_6
    const-string/jumbo v0, "feedback_positive_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Photo;->mFeedbackPositiveCount:I

    .line 140
    const-string/jumbo v0, "index"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Photo;->mIndex:I

    .line 141
    return-void

    .line 119
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mPrivateFeedback:Ljava/util/List;

    goto/16 :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 98
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 99
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_Photo;->mTimeCreated:Ljava/util/Date;

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mPrivateFeedback:Ljava/util/List;

    .line 102
    const-class v0, Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Passport;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mId:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mCaption:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mUrlPrefix:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mUrlSuffix:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mBusinessId:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Photo;->mFeedbackPositiveCount:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_Photo;->mIndex:I

    .line 110
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 144
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mTimeCreated:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 146
    const-string/jumbo v0, "time_created"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Photo;->mTimeCreated:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mPrivateFeedback:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 149
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 150
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mPrivateFeedback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 151
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 153
    :cond_1
    const-string/jumbo v0, "feedback"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    if-eqz v0, :cond_3

    .line 156
    const-string/jumbo v0, "user_passport"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Photo;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Passport;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 159
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Photo;->mId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mCaption:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 162
    const-string/jumbo v0, "caption"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Photo;->mCaption:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 164
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mUrlPrefix:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 165
    const-string/jumbo v0, "url_prefix"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Photo;->mUrlPrefix:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mUrlSuffix:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 168
    const-string/jumbo v0, "url_suffix"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Photo;->mUrlSuffix:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    :cond_7
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mBusinessId:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 171
    const-string/jumbo v0, "business_id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Photo;->mBusinessId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    :cond_8
    const-string/jumbo v0, "feedback_positive_count"

    iget v2, p0, Lcom/yelp/android/serializable/_Photo;->mFeedbackPositiveCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    const-string/jumbo v0, "index"

    iget v2, p0, Lcom/yelp/android/serializable/_Photo;->mIndex:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 175
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mTimeCreated:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mPrivateFeedback:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mCaption:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mUrlPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mUrlSuffix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget v0, p0, Lcom/yelp/android/serializable/_Photo;->mFeedbackPositiveCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Lcom/yelp/android/serializable/_Photo;->mIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Photo;->mTimeCreated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
