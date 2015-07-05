.class public Lcom/yelp/android/serializable/ConversationMessage;
.super Lcom/yelp/android/serializable/_ConversationMessage;
.source "ConversationMessage.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/ConversationMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/yelp/android/serializable/ac;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ac;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ConversationMessage;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ConversationMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ConversationMessage;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 21
    instance-of v0, p1, Lcom/yelp/android/serializable/ConversationMessage;

    if-eqz v0, :cond_0

    .line 22
    check-cast p1, Lcom/yelp/android/serializable/ConversationMessage;

    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 25
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getBizUser()Lcom/yelp/android/serializable/BusinessUser;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ConversationMessage;->getBizUser()Lcom/yelp/android/serializable/BusinessUser;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedMessage(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 34
    iget-object v0, p0, Lcom/yelp/android/serializable/ConversationMessage;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    if-eqz v0, :cond_0

    .line 35
    const v0, 0x7f070108

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yelp/android/serializable/ConversationMessage;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessUser;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/yelp/android/serializable/ConversationMessage;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/BusinessUser;->getRole()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/yelp/android/serializable/ConversationMessage;->mMessage:Ljava/lang/String;

    const-string/jumbo v3, "\n"

    const-string/jumbo v4, "<br>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f070382

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/yelp/android/serializable/ConversationMessage;->mUser:Lcom/yelp/android/serializable/UserTiny;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/UserTiny;->getNameWithoutPeriod()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/yelp/android/serializable/ConversationMessage;->mMessage:Ljava/lang/String;

    const-string/jumbo v3, "\n"

    const-string/jumbo v4, "<br>"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ConversationMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessagingUser()Lcom/yelp/android/serializable/bg;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yelp/android/serializable/ConversationMessage;->mUser:Lcom/yelp/android/serializable/UserTiny;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/ConversationMessage;->mUser:Lcom/yelp/android/serializable/UserTiny;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/ConversationMessage;->mBizUser:Lcom/yelp/android/serializable/BusinessUser;

    goto :goto_0
.end method

.method public bridge synthetic getTimeSent()Ljava/util/Date;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ConversationMessage;->getTimeSent()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUser()Lcom/yelp/android/serializable/UserTiny;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_ConversationMessage;->getUser()Lcom/yelp/android/serializable/UserTiny;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/yelp/android/serializable/ConversationMessage;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ConversationMessage;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ConversationMessage;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_ConversationMessage;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
