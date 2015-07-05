.class abstract Lcom/yelp/android/serializable/_TalkMessage;
.super Ljava/lang/Object;
.source "_TalkMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mId:Ljava/lang/String;

.field protected mRemoved:Ljava/lang/String;

.field protected mText:Ljava/lang/String;

.field protected mTimeCreated:Ljava/util/Date;

.field protected mTimeModified:Ljava/util/Date;

.field protected mUserId:Ljava/lang/String;

.field protected mUserName:Ljava/lang/String;

.field protected mUserPhotoUrl:Ljava/lang/String;

.field protected mUserRemoved:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/yelp/android/serializable/_TalkMessage;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/yelp/android/serializable/_TalkMessage;->mTimeCreated:Ljava/util/Date;

    .line 30
    iput-object p2, p0, Lcom/yelp/android/serializable/_TalkMessage;->mTimeModified:Ljava/util/Date;

    .line 31
    iput-object p3, p0, Lcom/yelp/android/serializable/_TalkMessage;->mId:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserId:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/yelp/android/serializable/_TalkMessage;->mText:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/yelp/android/serializable/_TalkMessage;->mRemoved:Ljava/lang/String;

    .line 35
    iput-object p7, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserRemoved:Ljava/lang/String;

    .line 36
    iput-object p8, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserName:Ljava/lang/String;

    .line 37
    iput-object p9, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserPhotoUrl:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mRemoved:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mTimeCreated:Ljava/util/Date;

    return-object v0
.end method

.method public getTimeModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mTimeModified:Ljava/util/Date;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserRemoved()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserRemoved:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 108
    const-string/jumbo v0, "time_created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const-string/jumbo v0, "time_created"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mTimeCreated:Ljava/util/Date;

    .line 111
    :cond_0
    const-string/jumbo v0, "time_modified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    const-string/jumbo v0, "time_modified"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mTimeModified:Ljava/util/Date;

    .line 114
    :cond_1
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mId:Ljava/lang/String;

    .line 117
    :cond_2
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserId:Ljava/lang/String;

    .line 120
    :cond_3
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 121
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mText:Ljava/lang/String;

    .line 123
    :cond_4
    const-string/jumbo v0, "removed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 124
    const-string/jumbo v0, "removed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mRemoved:Ljava/lang/String;

    .line 126
    :cond_5
    const-string/jumbo v0, "user_removed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 127
    const-string/jumbo v0, "user_removed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserRemoved:Ljava/lang/String;

    .line 129
    :cond_6
    const-string/jumbo v0, "user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 130
    const-string/jumbo v0, "user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserName:Ljava/lang/String;

    .line 132
    :cond_7
    const-string/jumbo v0, "user_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 133
    const-string/jumbo v0, "user_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserPhotoUrl:Ljava/lang/String;

    .line 135
    :cond_8
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const-wide/32 v4, -0x80000000

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 91
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 92
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_TalkMessage;->mTimeCreated:Ljava/util/Date;

    .line 94
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 95
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 96
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_TalkMessage;->mTimeModified:Ljava/util/Date;

    .line 98
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mId:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserId:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mText:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mRemoved:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserRemoved:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserName:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserPhotoUrl:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const-wide/32 v2, -0x80000000

    .line 78
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mTimeCreated:Ljava/util/Date;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mTimeModified:Ljava/util/Date;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 83
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mRemoved:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserRemoved:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mUserPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mTimeCreated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_TalkMessage;->mTimeModified:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_1
.end method
