.class abstract Lcom/yelp/android/serializable/_ConversationMessage;
.super Ljava/lang/Object;
.source "_ConversationMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBizUser:Lcom/yelp/android/serializable/BusinessUser;

.field protected mId:Ljava/lang/String;

.field protected mMessage:Ljava/lang/String;

.field protected mTimeSent:Ljava/util/Date;

.field protected mUser:Lcom/yelp/android/serializable/UserTiny;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/BusinessUser;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/UserTiny;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ConversationMessage;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    .line 26
    iput-object p2, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mTimeSent:Ljava/util/Date;

    .line 27
    iput-object p3, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mId:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mMessage:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mUser:Lcom/yelp/android/serializable/UserTiny;

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getBizUser()Lcom/yelp/android/serializable/BusinessUser;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeSent()Ljava/util/Date;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mTimeSent:Ljava/util/Date;

    return-object v0
.end method

.method public getUser()Lcom/yelp/android/serializable/UserTiny;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mUser:Lcom/yelp/android/serializable/UserTiny;

    return-object v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 77
    const-string/jumbo v0, "biz_user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    sget-object v0, Lcom/yelp/android/serializable/BusinessUser;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "biz_user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessUser;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    .line 80
    :cond_0
    const-string/jumbo v0, "time_sent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    const-string/jumbo v0, "time_sent"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mTimeSent:Ljava/util/Date;

    .line 83
    :cond_1
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 84
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mId:Ljava/lang/String;

    .line 86
    :cond_2
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 87
    const-string/jumbo v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mMessage:Ljava/lang/String;

    .line 89
    :cond_3
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 90
    sget-object v0, Lcom/yelp/android/serializable/UserTiny;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/UserTiny;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mUser:Lcom/yelp/android/serializable/UserTiny;

    .line 92
    :cond_4
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 66
    const-class v0, Lcom/yelp/android/serializable/BusinessUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessUser;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 68
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 69
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mTimeSent:Ljava/util/Date;

    .line 71
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mId:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mMessage:Ljava/lang/String;

    .line 73
    const-class v0, Lcom/yelp/android/serializable/UserTiny;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/UserTiny;

    iput-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mUser:Lcom/yelp/android/serializable/UserTiny;

    .line 74
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 59
    iget-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mTimeSent:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mUser:Lcom/yelp/android/serializable/UserTiny;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 63
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_ConversationMessage;->mTimeSent:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
