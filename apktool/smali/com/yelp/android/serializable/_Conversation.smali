.class abstract Lcom/yelp/android/serializable/_Conversation;
.super Ljava/lang/Object;
.source "_Conversation.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field protected mBizUser:Lcom/yelp/android/serializable/BusinessUser;

.field protected mBusinessId:Ljava/lang/String;

.field protected mId:Ljava/lang/String;

.field protected mIsRead:Z

.field protected mLatestMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ConversationMessage;",
            ">;"
        }
    .end annotation
.end field

.field protected mReviewId:Ljava/lang/String;

.field protected mSubject:Ljava/lang/String;

.field protected mSubjectInConversationList:Ljava/lang/String;

.field protected mTimeCreated:Ljava/util/Date;

.field protected mUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/UserTiny;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method protected constructor <init>(Lcom/yelp/android/serializable/BusinessUser;Ljava/util/Date;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/serializable/BusinessUser;",
            "Ljava/util/Date;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ConversationMessage;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/UserTiny;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Conversation;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/yelp/android/serializable/_Conversation;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    .line 32
    iput-object p2, p0, Lcom/yelp/android/serializable/_Conversation;->mTimeCreated:Ljava/util/Date;

    .line 33
    iput-object p3, p0, Lcom/yelp/android/serializable/_Conversation;->mLatestMessages:Ljava/util/List;

    .line 34
    iput-object p4, p0, Lcom/yelp/android/serializable/_Conversation;->mUsers:Ljava/util/List;

    .line 35
    iput-object p5, p0, Lcom/yelp/android/serializable/_Conversation;->mId:Ljava/lang/String;

    .line 36
    iput-object p6, p0, Lcom/yelp/android/serializable/_Conversation;->mSubject:Ljava/lang/String;

    .line 37
    iput-object p7, p0, Lcom/yelp/android/serializable/_Conversation;->mReviewId:Ljava/lang/String;

    .line 38
    iput-object p8, p0, Lcom/yelp/android/serializable/_Conversation;->mBusinessId:Ljava/lang/String;

    .line 39
    iput-object p9, p0, Lcom/yelp/android/serializable/_Conversation;->mSubjectInConversationList:Ljava/lang/String;

    .line 40
    iput-boolean p10, p0, Lcom/yelp/android/serializable/_Conversation;->mIsRead:Z

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

.method public getBizUser()Lcom/yelp/android/serializable/BusinessUser;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    return-object v0
.end method

.method public getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mBusinessId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getLatestMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/ConversationMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mLatestMessages:Ljava/util/List;

    return-object v0
.end method

.method public getReviewId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mReviewId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getSubjectInConversationList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mSubjectInConversationList:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mTimeCreated:Ljava/util/Date;

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/serializable/UserTiny;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mUsers:Ljava/util/List;

    return-object v0
.end method

.method public isRead()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/yelp/android/serializable/_Conversation;->mIsRead:Z

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 114
    const-string/jumbo v0, "biz_user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    sget-object v0, Lcom/yelp/android/serializable/BusinessUser;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    const-string/jumbo v1, "biz_user"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/parcelgen/JsonParser$DualCreator;->parse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessUser;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    .line 117
    :cond_0
    const-string/jumbo v0, "time_created"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    const-string/jumbo v0, "time_created"

    invoke-static {p1, v0}, Lcom/yelp/parcelgen/JsonUtil;->parseTimestamp(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mTimeCreated:Ljava/util/Date;

    .line 120
    :cond_1
    const-string/jumbo v0, "latest_messages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 121
    const-string/jumbo v0, "latest_messages"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/ConversationMessage;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mLatestMessages:Ljava/util/List;

    .line 125
    :goto_0
    const-string/jumbo v0, "users"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 126
    const-string/jumbo v0, "users"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/UserTiny;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-static {v0, v1}, Lcom/yelp/parcelgen/JsonUtil;->parseJsonList(Lorg/json/JSONArray;Lcom/yelp/parcelgen/JsonParser;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mUsers:Ljava/util/List;

    .line 130
    :goto_1
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    const-string/jumbo v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mId:Ljava/lang/String;

    .line 133
    :cond_2
    const-string/jumbo v0, "subject"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 134
    const-string/jumbo v0, "subject"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mSubject:Ljava/lang/String;

    .line 136
    :cond_3
    const-string/jumbo v0, "review_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 137
    const-string/jumbo v0, "review_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mReviewId:Ljava/lang/String;

    .line 139
    :cond_4
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 140
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mBusinessId:Ljava/lang/String;

    .line 142
    :cond_5
    const-string/jumbo v0, "subject_in_conversation_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 143
    const-string/jumbo v0, "subject_in_conversation_list"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mSubjectInConversationList:Ljava/lang/String;

    .line 145
    :cond_6
    const-string/jumbo v0, "is_read"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Conversation;->mIsRead:Z

    .line 146
    return-void

    .line 123
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mLatestMessages:Ljava/util/List;

    goto/16 :goto_0

    .line 128
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mUsers:Ljava/util/List;

    goto :goto_1
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    .line 97
    const-class v0, Lcom/yelp/android/serializable/BusinessUser;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/BusinessUser;

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 99
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 100
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcom/yelp/android/serializable/_Conversation;->mTimeCreated:Ljava/util/Date;

    .line 102
    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/ConversationMessage;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mLatestMessages:Ljava/util/List;

    .line 103
    sget-object v0, Lcom/yelp/android/serializable/UserTiny;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mUsers:Ljava/util/List;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mId:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mSubject:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mReviewId:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mBusinessId:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mSubjectInConversationList:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object v0

    .line 110
    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/yelp/android/serializable/_Conversation;->mIsRead:Z

    .line 111
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 85
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mTimeCreated:Ljava/util/Date;

    if-nez v0, :cond_0

    const-wide/32 v0, -0x80000000

    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 86
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mLatestMessages:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mUsers:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 88
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mSubject:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mReviewId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mBusinessId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mSubjectInConversationList:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Z

    iget-boolean v1, p0, Lcom/yelp/android/serializable/_Conversation;->mIsRead:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 94
    return-void

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/_Conversation;->mTimeCreated:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0
.end method
