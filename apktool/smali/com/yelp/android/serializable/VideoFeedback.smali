.class public Lcom/yelp/android/serializable/VideoFeedback;
.super Lcom/yelp/android/serializable/_VideoFeedback;
.source "VideoFeedback.java"

# interfaces
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge$DisplayableAsUserBadgeWithTimeAgo;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/VideoFeedback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/yelp/android/serializable/dp;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dp;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/VideoFeedback;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/serializable/_VideoFeedback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_VideoFeedback;->describeContents()I

    move-result v0

    return v0
.end method

.method public getFriendCount()I
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getFriendCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_VideoFeedback;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaCount()I
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getMediaCount()I

    move-result v0

    return v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getPhotoCount()I

    move-result v0

    return v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getReviewCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTimeCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_VideoFeedback;->getTimeCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getTimeOf()Ljava/util/Date;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->getTimeCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserPassport()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_VideoFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    return-object v0
.end method

.method public getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getProfileThumbnail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/serializable/VideoFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getVideoCount()I

    move-result v0

    return v0
.end method

.method public isEliteUser()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_VideoFeedback;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_VideoFeedback;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_VideoFeedback;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
