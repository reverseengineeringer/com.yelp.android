.class public Lcom/yelp/android/serializable/Passport;
.super Lcom/yelp/android/serializable/_Passport;
.source "Passport.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/Passport;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

.field private mProfilePhotoPlaceholder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Lcom/yelp/android/serializable/br;

    invoke-direct {v0}, Lcom/yelp/android/serializable/br;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/Passport;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/serializable/_Passport;-><init>()V

    .line 21
    new-instance v0, Lcom/yelp/android/serializable/FeatureSet;

    invoke-direct {v0}, Lcom/yelp/android/serializable/FeatureSet;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/Passport;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    .line 22
    return-void
.end method

.method protected static fromLoginManager(Lcom/yelp/android/appdata/webrequests/dc;)Lcom/yelp/android/serializable/Passport;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/yelp/android/serializable/Passport;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Passport;-><init>()V

    .line 31
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/Passport;->mId:Ljava/lang/String;

    .line 32
    invoke-virtual {p0}, Lcom/yelp/android/appdata/webrequests/dc;->v()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/yelp/android/serializable/Passport;->mProfilePhotoPlaceholder:Ljava/lang/String;

    .line 33
    return-object v0
.end method

.method public static getMediaQuantityString(ZIIILandroid/content/res/Resources;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 130
    const-string/jumbo v0, ""

    .line 132
    if-nez p0, :cond_0

    .line 133
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 150
    :goto_0
    return-object v0

    .line 136
    :cond_0
    if-nez p2, :cond_1

    .line 139
    const v0, 0x7f0e001d

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p4, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 141
    :cond_1
    if-nez p1, :cond_2

    if-lez p2, :cond_2

    .line 143
    const v0, 0x7f0e002f

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p4, v0, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_2
    const v0, 0x7f070460

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p4, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMediaQuantityString(ZLcom/yelp/android/serializable/DisplayableAsUserBadge;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 97
    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getPhotoCount()I

    move-result v0

    .line 98
    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getVideoCount()I

    move-result v1

    .line 99
    invoke-interface {p1}, Lcom/yelp/android/serializable/DisplayableAsUserBadge;->getMediaCount()I

    move-result v2

    .line 101
    invoke-static {p0, v0, v1, v2, p2}, Lcom/yelp/android/serializable/Passport;->getMediaQuantityString(ZIIILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMediaQuantityString(ZLcom/yelp/android/serializable/YelpBusinessReview;Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 107
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserPhotoCount()I

    move-result v0

    .line 108
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserVideoCount()I

    move-result v1

    .line 109
    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpBusinessReview;->getUserMediaCount()I

    move-result v2

    .line 111
    invoke-static {p0, v0, v1, v2, p2}, Lcom/yelp/android/serializable/Passport;->getMediaQuantityString(ZIIILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDisabledFeatures()Ljava/util/List;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->getDisabledFeatures()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEliteYears()[I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->getEliteYears()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->getFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFriendCount()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->getFriendCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLastInitial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->getLastInitial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaCount()I
    .locals 2

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Passport;->getVideoCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/Passport;->getPhotoCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhotoCount()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->getPhotoCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getProfilePhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->getProfilePhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public getProfileThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Passport;->getProfilePhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/yelp/android/serializable/Passport;->getProfilePhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Photo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    .line 43
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/yelp/android/serializable/Passport;->mProfilePhotoPlaceholder:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic getReviewCount()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->getReviewCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVideoCount()I
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->getVideoCount()I

    move-result v0

    return v0
.end method

.method public isFeatureDisabled(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yelp/android/serializable/Passport;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/FeatureSet;->contains(Lcom/yelp/android/serializable/FeatureSet$Feature;)Z

    move-result v0

    return v0
.end method

.method public readFromJson(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Passport;->readFromJson(Lorg/json/JSONObject;)V

    .line 87
    iget-object v0, p0, Lcom/yelp/android/serializable/Passport;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    iget-object v1, p0, Lcom/yelp/android/serializable/Passport;->mDisabledFeatures:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/FeatureSet;->setFeatures(Ljava/util/List;)V

    .line 88
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_Passport;->readFromParcel(Landroid/os/Parcel;)V

    .line 81
    const-class v0, Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/FeatureSet;

    iput-object v0, p0, Lcom/yelp/android/serializable/Passport;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    .line 82
    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/yelp/android/serializable/_Passport;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_Passport;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget-object v0, p0, Lcom/yelp/android/serializable/Passport;->mDisabledFeatureSet:Lcom/yelp/android/serializable/FeatureSet;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 76
    return-void
.end method
