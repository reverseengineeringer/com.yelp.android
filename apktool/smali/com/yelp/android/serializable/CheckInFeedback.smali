.class public Lcom/yelp/android/serializable/CheckInFeedback;
.super Lcom/yelp/android/serializable/_CheckInFeedback;
.source "CheckInFeedback.java"

# interfaces
.implements Lcom/yelp/android/serializable/DisplayableAsUserBadge;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/CheckInFeedback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/yelp/android/serializable/y;

    invoke-direct {v0}, Lcom/yelp/android/serializable/y;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/CheckInFeedback;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/serializable/_CheckInFeedback;-><init>()V

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/YelpCheckIn;Lcom/yelp/android/serializable/User;)V
    .locals 6

    .prologue
    .line 15
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    move-object v0, p0

    move-object v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/serializable/_CheckInFeedback;-><init>(Ljava/util/Date;Ljava/lang/String;Lcom/yelp/android/serializable/User;Lcom/yelp/android/serializable/YelpBusiness;Lcom/yelp/android/serializable/YelpCheckIn;)V

    .line 16
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_CheckInFeedback;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBusiness()Lcom/yelp/android/serializable/YelpBusiness;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_CheckInFeedback;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCheckIn()Lcom/yelp/android/serializable/YelpCheckIn;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_CheckInFeedback;->getCheckIn()Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    return-object v0
.end method

.method public getFriendCount()I
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedback;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getFriendCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_CheckInFeedback;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaCount()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedback;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getMediaCount()I

    move-result v0

    return v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedback;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getLocalPhotoCount()I

    move-result v0

    return v0
.end method

.method public getReviewCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedback;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getReviewCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTimeUpdated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_CheckInFeedback;->getTimeUpdated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUser()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_CheckInFeedback;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedback;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedback;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedback;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getUserPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedback;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->getVideoCount()I

    move-result v0

    return v0
.end method

.method public isEliteUser()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/yelp/android/serializable/CheckInFeedback;->mUser:Lcom/yelp/android/serializable/User;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/User;->isEliteUser()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_CheckInFeedback;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_CheckInFeedback;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 12
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_CheckInFeedback;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
