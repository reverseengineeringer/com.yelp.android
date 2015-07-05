.class abstract Lcom/yelp/android/serializable/_RecentCheckIn;
.super Ljava/lang/Object;
.source "_RecentCheckIn.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mCommentsCount:I

.field protected mDateCreated:Ljava/util/Date;

.field protected mFeedback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mId:Ljava/lang/String;

.field protected mLocationRankTitle:Ljava/lang/String;

.field protected mPositiveFeedback:I

.field protected mPrimaryComment:Lcom/yelp/android/serializable/Comment;

.field protected mTotalCount:I

.field protected mUser:Lcom/yelp/android/serializable/User;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/Comment;Ljava/util/Date;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/User;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/Comment;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/User;",
            "III)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/yelp/android/serializable/_RecentCheckIn;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mPrimaryComment:Lcom/yelp/android/serializable/Comment;

    .line 31
    iput-object p2, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mDateCreated:Ljava/util/Date;

    .line 32
    iput-object p3, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mFeedback:Ljava/util/List;

    .line 33
    iput-object p4, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mId:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mLocationRankTitle:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    .line 36
    iput p7, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mTotalCount:I

    .line 37
    iput p8, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mCommentsCount:I

    .line 38
    iput p9, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mPositiveFeedback:I

    .line 39
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getCommentsCount()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mCommentsCount:I

    return v0
.end method

.method public getDateCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mDateCreated:Ljava/util/Date;

    return-object v0
.end method

.method public getFeedback()Ljava/util/List;
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
    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mFeedback:Ljava/util/List;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationRankTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mLocationRankTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveFeedback()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mPositiveFeedback:I

    return v0
.end method

.method public getPrimaryComment()Lcom/yelp/android/serializable/Comment;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mPrimaryComment:Lcom/yelp/android/serializable/Comment;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mTotalCount:I

    return v0
.end method

.method public getUser()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 106
    const-string/jumbo v0, "primary_comment"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    sget-object v0, Lcom/yelp/android/serializable/Comment;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "primary_comment"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Comment;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mPrimaryComment:Lcom/yelp/android/serializable/Comment;

    .line 109
    :cond_0
    const-string/jumbo v0, "time_created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    const-string/jumbo v0, "time_created"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mDateCreated:Ljava/util/Date;

    .line 112
    :cond_1
    const-string/jumbo v0, "feedback"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 113
    const-string/jumbo v0, "feedback"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/parcelgen/JsonUtil;->getStringList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mFeedback:Ljava/util/List;

    .line 117
    :goto_0
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mId:Ljava/lang/String;

    .line 120
    :cond_2
    const-string/jumbo v0, "location_rank_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 121
    const-string/jumbo v0, "location_rank_title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mLocationRankTitle:Ljava/lang/String;

    .line 123
    :cond_3
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 124
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    .line 126
    :cond_4
    const-string/jumbo v0, "check_in_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mTotalCount:I

    .line 127
    const-string/jumbo v0, "comments_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mCommentsCount:I

    .line 128
    const-string/jumbo v0, "feedback_positive_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mPositiveFeedback:I

    .line 129
    return-void

    .line 115
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mFeedback:Ljava/util/List;

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 91
    const-class v0, Lcom/yelp/android/serializable/Comment;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Comment;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mPrimaryComment:Lcom/yelp/android/serializable/Comment;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 93
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 94
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mDateCreated:Ljava/util/Date;

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mFeedback:Ljava/util/List;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mId:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mLocationRankTitle:Ljava/lang/String;

    .line 99
    const-class v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mTotalCount:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mCommentsCount:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mPositiveFeedback:I

    .line 103
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 132
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 133
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mPrimaryComment:Lcom/yelp/android/serializable/Comment;

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, "primary_comment"

    iget-object v2, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mPrimaryComment:Lcom/yelp/android/serializable/Comment;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/Comment;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mDateCreated:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 137
    const-string/jumbo v0, "time_created"

    iget-object v2, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mDateCreated:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mFeedback:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 140
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 141
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mFeedback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 144
    :cond_2
    const-string/jumbo v0, "feedback"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mId:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 147
    const-string/jumbo v0, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mLocationRankTitle:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 150
    const-string/jumbo v0, "location_rank_title"

    iget-object v2, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mLocationRankTitle:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    if-eqz v0, :cond_6

    .line 153
    const-string/jumbo v0, "user"

    iget-object v2, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 155
    :cond_6
    const-string/jumbo v0, "check_in_count"

    iget v2, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mTotalCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 156
    const-string/jumbo v0, "comments_count"

    iget v2, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mCommentsCount:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string/jumbo v0, "feedback_positive_count"

    iget v2, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mPositiveFeedback:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mPrimaryComment:Lcom/yelp/android/serializable/Comment;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mDateCreated:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mFeedback:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mLocationRankTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 85
    iget v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mTotalCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    iget v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mCommentsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mPositiveFeedback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_RecentCheckIn;->mDateCreated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
