.class public Lcom/yelp/android/serializable/PhotoFeedback;
.super Lcom/yelp/android/serializable/_PhotoFeedback;
.source "PhotoFeedback.java"

# interfaces
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge$DisplayableAsUserBadgeWithTimeAgo;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/PhotoFeedback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/yelp/android/serializable/bu;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bu;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/PhotoFeedback;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/serializable/_PhotoFeedback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_PhotoFeedback;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCondensedBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_PhotoFeedback;->getCondensedBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public getFriendCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/yelp/android/serializable/PhotoFeedback;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getFriendCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_PhotoFeedback;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaCount()I
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yelp/android/serializable/PhotoFeedback;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getMediaCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_PhotoFeedback;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/PhotoFeedback;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getPhotoCount()I

    move-result v0

    return v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/serializable/PhotoFeedback;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getReviewCount()I

    move-result v0

    return v0
.end method

.method public getTimeOf()Ljava/util/Date;
    .locals 1

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/yelp/android/serializable/PhotoFeedback;->getTimeUpdated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTimeUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_PhotoFeedback;->getTimeUpdated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/serializable/PhotoFeedback;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/serializable/PhotoFeedback;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserPassport()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_PhotoFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    return-object v0
.end method

.method public getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yelp/android/serializable/PhotoFeedback;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getProfileThumbnail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/serializable/PhotoFeedback;->mUserPassport:Lcom/yelp/android/serializable/Passport;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getVideoCount()I

    move-result v0

    return v0
.end method

.method public isEliteUser()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PhotoFeedback;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PhotoFeedback;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_PhotoFeedback;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
