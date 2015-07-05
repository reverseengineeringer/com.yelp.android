.class abstract Lcom/yelp/android/serializable/_ExternalCheckIn;
.super Ljava/lang/Object;
.source "_ExternalCheckIn.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mAppCheckInId:Ljava/lang/String;

.field protected mAppId:Ljava/lang/String;

.field protected mAppName:Ljava/lang/String;

.field protected mAppUserId:Ljava/lang/String;

.field protected mAppUserImageUrl:Ljava/lang/String;

.field protected mAppUserName:Ljava/lang/String;

.field protected mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

.field protected mBusinessId:Ljava/lang/String;

.field protected mDateCreated:Ljava/util/Date;

.field protected mLocation:Ljava/lang/String;

.field protected mUserId:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ExternalCheckIn;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mDateCreated:Ljava/util/Date;

    .line 32
    iput-object p2, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mUserId:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppId:Ljava/lang/String;

    .line 34
    iput-object p4, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppCheckInId:Ljava/lang/String;

    .line 35
    iput-object p5, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppName:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppUserId:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppUserName:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppUserImageUrl:Ljava/lang/String;

    .line 39
    iput-object p9, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mBusinessId:Ljava/lang/String;

    .line 40
    iput-object p10, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mLocation:Ljava/lang/String;

    .line 41
    iput-object p11, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

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

.method public getAppCheckInId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppCheckInId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppUserImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppUserImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getAppUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getDateCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mDateCreated:Ljava/util/Date;

    return-object v0
.end method

.method public getLocation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 119
    const-string/jumbo v0, "time_created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    const-string/jumbo v0, "time_created"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mDateCreated:Ljava/util/Date;

    .line 122
    :cond_0
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mUserId:Ljava/lang/String;

    .line 125
    :cond_1
    const-string/jumbo v0, "app_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    const-string/jumbo v0, "app_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppId:Ljava/lang/String;

    .line 128
    :cond_2
    const-string/jumbo v0, "app_check_in_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 129
    const-string/jumbo v0, "app_check_in_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppCheckInId:Ljava/lang/String;

    .line 131
    :cond_3
    const-string/jumbo v0, "app_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 132
    const-string/jumbo v0, "app_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppName:Ljava/lang/String;

    .line 134
    :cond_4
    const-string/jumbo v0, "app_user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 135
    const-string/jumbo v0, "app_user_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppUserId:Ljava/lang/String;

    .line 137
    :cond_5
    const-string/jumbo v0, "app_user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 138
    const-string/jumbo v0, "app_user_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppUserName:Ljava/lang/String;

    .line 140
    :cond_6
    const-string/jumbo v0, "app_user_image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 141
    const-string/jumbo v0, "app_user_image_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppUserImageUrl:Ljava/lang/String;

    .line 143
    :cond_7
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 144
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mBusinessId:Ljava/lang/String;

    .line 146
    :cond_8
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 147
    const-string/jumbo v0, "location"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mLocation:Ljava/lang/String;

    .line 149
    :cond_9
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 150
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 152
    :cond_a
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 103
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 104
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mDateCreated:Ljava/util/Date;

    .line 106
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mUserId:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppId:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppCheckInId:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppName:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppUserId:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppUserName:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppUserImageUrl:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mBusinessId:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mLocation:Ljava/lang/String;

    .line 115
    const-class v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 116
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mDateCreated:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppCheckInId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mAppUserImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 99
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_ExternalCheckIn;->mDateCreated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
