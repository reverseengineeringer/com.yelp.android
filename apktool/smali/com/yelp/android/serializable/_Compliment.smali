.class abstract Lcom/yelp/android/serializable/_Compliment;
.super Ljava/lang/Object;
.source "_Compliment.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusinessId:Ljava/lang/String;

.field protected mBusinessName:Ljava/lang/String;

.field protected mComplimentableId:Ljava/lang/String;

.field protected mDateModified:Ljava/util/Date;

.field protected mId:Ljava/lang/String;

.field protected mMessage:Ljava/lang/String;

.field protected mPhoto:Lcom/yelp/android/serializable/Photo;

.field protected mSender:Lcom/yelp/android/serializable/User;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Lcom/yelp/android/serializable/Photo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/User;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Compliment;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/yelp/android/serializable/_Compliment;->mDateModified:Ljava/util/Date;

    .line 29
    iput-object p2, p0, Lcom/yelp/android/serializable/_Compliment;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 30
    iput-object p3, p0, Lcom/yelp/android/serializable/_Compliment;->mId:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/yelp/android/serializable/_Compliment;->mMessage:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lcom/yelp/android/serializable/_Compliment;->mBusinessName:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lcom/yelp/android/serializable/_Compliment;->mBusinessId:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lcom/yelp/android/serializable/_Compliment;->mComplimentableId:Ljava/lang/String;

    .line 35
    iput-object p8, p0, Lcom/yelp/android/serializable/_Compliment;->mSender:Lcom/yelp/android/serializable/User;

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
    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mBusinessName:Ljava/lang/String;

    return-object v0
.end method

.method public getComplimentableId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mComplimentableId:Ljava/lang/String;

    return-object v0
.end method

.method public getDateModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mDateModified:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mPhoto:Lcom/yelp/android/serializable/Photo;

    return-object v0
.end method

.method public getSender()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mSender:Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 98
    const-string/jumbo v0, "time_created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    const-string/jumbo v0, "time_created"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mDateModified:Ljava/util/Date;

    .line 101
    :cond_0
    const-string/jumbo v0, "photo"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    sget-object v0, Lcom/yelp/android/serializable/Photo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "photo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 104
    :cond_1
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 105
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mId:Ljava/lang/String;

    .line 107
    :cond_2
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 108
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mMessage:Ljava/lang/String;

    .line 110
    :cond_3
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 111
    const-string/jumbo v0, "business_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mBusinessName:Ljava/lang/String;

    .line 113
    :cond_4
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 114
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mBusinessId:Ljava/lang/String;

    .line 116
    :cond_5
    const-string/jumbo v0, "complimentable_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 117
    const-string/jumbo v0, "complimentable_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mComplimentableId:Ljava/lang/String;

    .line 119
    :cond_6
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 120
    sget-object v0, Lcom/yelp/android/serializable/User;->CREATOR:Lcom/yelp/android/serializable/ah;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/ah;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mSender:Lcom/yelp/android/serializable/User;

    .line 122
    :cond_7
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 85
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 86
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_Compliment;->mDateModified:Ljava/util/Date;

    .line 88
    :cond_0
    const-class v0, Lcom/yelp/android/serializable/Photo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Photo;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mPhoto:Lcom/yelp/android/serializable/Photo;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mId:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mMessage:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mBusinessName:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mBusinessId:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mComplimentableId:Ljava/lang/String;

    .line 94
    const-class v0, Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/User;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mSender:Lcom/yelp/android/serializable/User;

    .line 95
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mDateModified:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mPhoto:Lcom/yelp/android/serializable/Photo;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mBusinessName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mComplimentableId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mSender:Lcom/yelp/android/serializable/User;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 81
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Compliment;->mDateModified:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
