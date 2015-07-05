.class abstract Lcom/yelp/android/serializable/_TipFeedback;
.super Ljava/lang/Object;
.source "_TipFeedback.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

.field protected mDateCreated:Ljava/util/Date;

.field protected mId:Ljava/lang/String;

.field protected mText:Ljava/lang/String;

.field protected mTipId:Ljava/lang/String;

.field protected mUserPassport:Lcom/yelp/android/serializable/Passport;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method protected constructor <init>(Ljava/util/Date;Lcom/yelp/android/serializable/Passport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/yelp/android/serializable/_TipFeedback;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/yelp/android/serializable/_TipFeedback;->mDateCreated:Ljava/util/Date;

    .line 27
    iput-object p2, p0, Lcom/yelp/android/serializable/_TipFeedback;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    .line 28
    iput-object p3, p0, Lcom/yelp/android/serializable/_TipFeedback;->mId:Ljava/lang/String;

    .line 29
    iput-object p4, p0, Lcom/yelp/android/serializable/_TipFeedback;->mTipId:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/yelp/android/serializable/_TipFeedback;->mText:Ljava/lang/String;

    .line 31
    iput-object p6, p0, Lcom/yelp/android/serializable/_TipFeedback;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 32
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    return-object v0
.end method

.method public getDateCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mDateCreated:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTipId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mTipId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserPassport()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 84
    const-string/jumbo v0, "time_created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    const-string/jumbo v0, "time_created"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mDateCreated:Ljava/util/Date;

    .line 87
    :cond_0
    const-string/jumbo v0, "user_passport"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    sget-object v0, Lcom/yelp/android/serializable/Passport;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "user_passport"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Passport;

    iput-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    .line 90
    :cond_1
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 91
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mId:Ljava/lang/String;

    .line 93
    :cond_2
    const-string/jumbo v0, "quicktip_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 94
    const-string/jumbo v0, "quicktip_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mTipId:Ljava/lang/String;

    .line 96
    :cond_3
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 97
    const-string/jumbo v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mText:Ljava/lang/String;

    .line 99
    :cond_4
    const-string/jumbo v0, "business"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 100
    sget-object v0, Lcom/yelp/android/serializable/YelpBusiness;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "business"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 102
    :cond_5
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 73
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 74
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_TipFeedback;->mDateCreated:Ljava/util/Date;

    .line 76
    :cond_0
    const-class v0, Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Passport;

    iput-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mId:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mTipId:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mText:Ljava/lang/String;

    .line 80
    const-class v0, Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpBusiness;

    iput-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    .line 81
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mDateCreated:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 64
    iget-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 65
    iget-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mTipId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mBusiness:Lcom/yelp/android/serializable/YelpBusiness;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 69
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_TipFeedback;->mDateCreated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
