.class public Lcom/yelp/android/serializable/FriendRequest;
.super Lcom/yelp/android/serializable/_FriendRequest;
.source "FriendRequest.java"

# interfaces
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge;


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ah",
            "<",
            "Lcom/yelp/android/serializable/FriendRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    new-instance v0, Lcom/yelp/android/serializable/au;

    invoke-direct {v0}, Lcom/yelp/android/serializable/au;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/FriendRequest;->CREATOR:Lcom/yelp/android/serializable/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/serializable/_FriendRequest;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_FriendRequest;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 20
    if-ne p0, p1, :cond_1

    .line 32
    :cond_0
    :goto_0
    return v0

    .line 22
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    instance-of v2, p1, Lcom/yelp/android/serializable/FriendRequest;

    if-nez v2, :cond_3

    move v0, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_3
    check-cast p1, Lcom/yelp/android/serializable/FriendRequest;

    .line 27
    iget-object v2, p0, Lcom/yelp/android/serializable/FriendRequest;->mSender:Lcom/yelp/android/serializable/User;

    if-nez v2, :cond_4

    .line 28
    iget-object v2, p1, Lcom/yelp/android/serializable/FriendRequest;->mSender:Lcom/yelp/android/serializable/User;

    if-eqz v2, :cond_0

    move v0, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_4
    iget-object v2, p0, Lcom/yelp/android/serializable/FriendRequest;->mSender:Lcom/yelp/android/serializable/User;

    iget-object v3, p1, Lcom/yelp/android/serializable/FriendRequest;->mSender:Lcom/yelp/android/serializable/User;

    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/User;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 31
    goto :goto_0
.end method

.method public bridge synthetic getDateModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_FriendRequest;->getDateModified()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFriendCount()I
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getFriendCount()I

    move-result v0

    return v0
.end method

.method public getMediaCount()I
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getMediaCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_FriendRequest;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getLocalPhotoCount()I

    move-result v0

    return v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getSender()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_FriendRequest;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getVideoCount()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 12
    .line 14
    iget-object v0, p0, Lcom/yelp/android/serializable/FriendRequest;->mSender:Lcom/yelp/android/serializable/User;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    .line 15
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/FriendRequest;->mSender:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isEliteUser()Z
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/yelp/android/serializable/FriendRequest;->getSender()Lcom/yelp/android/serializable/User;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->isEliteUser()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FriendRequest;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FriendRequest;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_FriendRequest;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
