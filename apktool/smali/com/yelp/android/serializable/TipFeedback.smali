.class public Lcom/yelp/android/serializable/TipFeedback;
.super Lcom/yelp/android/serializable/_TipFeedback;
.source "TipFeedback.java"

# interfaces
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge$DisplayableAsUserBadgeWithTimeAgo;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/TipFeedback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/yelp/android/serializable/di;

    invoke-direct {v0}, Lcom/yelp/android/serializable/di;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/TipFeedback;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/yelp/android/serializable/_TipFeedback;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/Tip;Lcom/yelp/android/appdata/webrequests/dc;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 22
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {p2}, Lcom/yelp/android/serializable/Passport;->fromLoginManager(Lcom/yelp/android/appdata/webrequests/dc;)Lcom/yelp/android/serializable/Passport;

    move-result-object v2

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getBusinessId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/yelp/android/serializable/Tip;->getText()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/yelp/android/serializable/_TipFeedback;-><init>(Ljava/util/Date;Lcom/yelp/android/serializable/Passport;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 24
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_TipFeedback;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_TipFeedback;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDateCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_TipFeedback;->getDateCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getFriendCount()I
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getFriendCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_TipFeedback;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaCount()I
    .locals 1

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getMediaCount()I

    move-result v0

    return v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getPhotoCount()I

    move-result v0

    return v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getReviewCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_TipFeedback;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeOf()Ljava/util/Date;
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->getDateCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTipId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_TipFeedback;->getTipId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUserPassport()Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_TipFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    return-object v0
.end method

.method public getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getProfileThumbnail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/yelp/android/serializable/TipFeedback;->getUserPassport()Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Passport;->getVideoCount()I

    move-result v0

    return v0
.end method

.method public isEliteUser()Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_TipFeedback;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_TipFeedback;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/yelp/android/serializable/TipFeedback;->mText:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_TipFeedback;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
