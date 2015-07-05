.class abstract Lcom/yelp/android/serializable/_ReviewDraft;
.super Ljava/lang/Object;
.source "_ReviewDraft.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusinessId:Ljava/lang/String;

.field protected mBusinessName:Ljava/lang/String;

.field protected mBusinessPhotoUrl:Ljava/lang/String;

.field protected mDateCreated:Ljava/util/Date;

.field protected mDateModified:Ljava/util/Date;

.field protected mId:Ljava/lang/String;

.field protected mNumHalfstars:I

.field protected mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReviewDraft;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mDateCreated:Ljava/util/Date;

    .line 29
    iput-object p2, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mDateModified:Ljava/util/Date;

    .line 30
    iput-object p3, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mBusinessId:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mBusinessName:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mBusinessPhotoUrl:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mText:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mId:Ljava/lang/String;

    .line 35
    iput p8, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mNumHalfstars:I

    .line 36
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mBusinessName:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mBusinessPhotoUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDateCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mDateCreated:Ljava/util/Date;

    return-object v0
.end method

.method public getDateModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mDateModified:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getNumHalfstars()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mNumHalfstars:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 101
    const-string/jumbo v0, "time_created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string/jumbo v0, "time_created"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mDateCreated:Ljava/util/Date;

    .line 104
    :cond_0
    const-string/jumbo v0, "time_modified"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    const-string/jumbo v0, "time_modified"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mDateModified:Ljava/util/Date;

    .line 107
    :cond_1
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mBusinessId:Ljava/lang/String;

    .line 110
    :cond_2
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 111
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mBusinessName:Ljava/lang/String;

    .line 113
    :cond_3
    const-string/jumbo v0, "business_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 114
    const-string/jumbo v0, "business_photo_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mBusinessPhotoUrl:Ljava/lang/String;

    .line 116
    :cond_4
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 117
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mText:Ljava/lang/String;

    .line 119
    :cond_5
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 120
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mId:Ljava/lang/String;

    .line 122
    :cond_6
    const-string/jumbo v0, "num_halfstars"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mNumHalfstars:I

    .line 123
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    .prologue
    const-wide/32 v4, -0x80000000

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 85
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 86
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mDateCreated:Ljava/util/Date;

    .line 88
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 89
    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    .line 90
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mDateModified:Ljava/util/Date;

    .line 92
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mBusinessId:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mBusinessName:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mBusinessPhotoUrl:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mText:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mId:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mNumHalfstars:I

    .line 98
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const-wide/32 v2, -0x80000000

    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mDateCreated:Ljava/util/Date;

    if-nez v0, :cond_0

    move-wide v0, v2

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mDateModified:Ljava/util/Date;

    if-nez v0, :cond_1

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mBusinessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mBusinessPhotoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mNumHalfstars:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mDateCreated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/serializable/_ReviewDraft;->mDateModified:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    goto :goto_1
.end method
