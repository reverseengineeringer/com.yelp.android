.class abstract Lcom/yelp/android/serializable/_Comment;
.super Ljava/lang/Object;
.source "_Comment.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mDateUpdated:Ljava/util/Date;

.field protected mId:Ljava/lang/String;

.field protected mText:Ljava/lang/String;

.field protected mUser:Lcom/yelp/android/serializable/User;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Comment;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/yelp/android/serializable/_Comment;->mDateUpdated:Ljava/util/Date;

    .line 25
    iput-object p2, p0, Lcom/yelp/android/serializable/_Comment;->mId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/yelp/android/serializable/_Comment;->mText:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/yelp/android/serializable/_Comment;->mUser:Lcom/yelp/android/serializable/User;

    .line 28
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public getDateUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mDateUpdated:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mUser:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 70
    const-string/jumbo v0, "time_updated"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string/jumbo v0, "time_updated"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mDateUpdated:Ljava/util/Date;

    .line 73
    :cond_0
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mId:Ljava/lang/String;

    .line 76
    :cond_1
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mText:Ljava/lang/String;

    .line 79
    :cond_2
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 80
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mUser:Lcom/yelp/android/serializable/User;

    .line 82
    :cond_3
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 61
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 62
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_Comment;->mDateUpdated:Ljava/util/Date;

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mId:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mText:Ljava/lang/String;

    .line 66
    const-class v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mUser:Lcom/yelp/android/serializable/User;

    .line 67
    return-void
.end method

.method public writeJSON()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 85
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 86
    iget-object v1, p0, Lcom/yelp/android/serializable/_Comment;->mDateUpdated:Ljava/util/Date;

    if-eqz v1, :cond_0

    .line 87
    const-string/jumbo v1, "time_updated"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Comment;->mDateUpdated:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/serializable/_Comment;->mId:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 90
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Comment;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/serializable/_Comment;->mText:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 93
    const-string/jumbo v1, "text"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Comment;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/serializable/_Comment;->mUser:Lcom/yelp/android/serializable/User;

    if-eqz v1, :cond_3

    .line 96
    const-string/jumbo v1, "user"

    iget-object v2, p0, Lcom/yelp/android/serializable/_Comment;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/User;->writeJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    :cond_3
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mDateUpdated:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mUser:Lcom/yelp/android/serializable/User;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 57
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Comment;->mDateUpdated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
