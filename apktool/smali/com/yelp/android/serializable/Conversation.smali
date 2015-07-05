.class public Lcom/yelp/android/serializable/Conversation;
.super Lcom/yelp/android/serializable/_Conversation;
.source "Conversation.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Conversation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/yelp/android/serializable/ab;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ab;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Conversation;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Conversation;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_Conversation;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 20
    instance-of v0, p1, Lcom/yelp/android/serializable/Conversation;

    if-eqz v0, :cond_0

    .line 21
    check-cast p1, Lcom/yelp/android/serializable/Conversation;

    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 24
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getBizUser()Lcom/yelp/android/serializable/BusinessUser;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_Conversation;->getBizUser()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_Conversation;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLatestMessage()Lcom/yelp/android/serializable/ConversationMessage;
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/Conversation;->mLatestMessages:Ljava/util/List;

    iget-object v1, p0, Lcom/yelp/android/serializable/Conversation;->mLatestMessages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ConversationMessage;

    return-object v0
.end method

.method public bridge synthetic getLatestMessages()Ljava/util/List;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_Conversation;->getLatestMessages()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOtherUser()Lcom/yelp/android/serializable/bg;
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/Conversation;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/yelp/android/serializable/Conversation;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    .line 63
    :goto_0
    return-object v0

    .line 57
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v1

    .line 58
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Conversation;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/UserTiny;

    .line 59
    invoke-virtual {v0}, Lcom/yelp/android/serializable/UserTiny;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yelp/android/serializable/User;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 63
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getReviewId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_Conversation;->getReviewId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_Conversation;->getSubject()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSubjectInConversationList()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_Conversation;->getSubjectInConversationList()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_Conversation;->getTimeCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUsers()Ljava/util/List;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_Conversation;->getUsers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Conversation;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isRead()Z
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_Conversation;->isRead()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Conversation;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Conversation;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setRead(Z)V
    .locals 0

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/yelp/android/serializable/Conversation;->mIsRead:Z

    .line 51
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Conversation;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
