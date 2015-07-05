.class public Lcom/yelp/android/serializable/RecentCheckIn;
.super Lcom/yelp/android/serializable/_RecentCheckIn;
.source "RecentCheckIn.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/RecentCheckIn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/serializable/ch;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ch;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/RecentCheckIn;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_RecentCheckIn;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentCheckIn;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCommentsCount()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentCheckIn;->getCommentsCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDateCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentCheckIn;->getDateCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFeedback()Ljava/util/List;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentCheckIn;->getFeedback()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentCheckIn;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocationRankTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentCheckIn;->getLocationRankTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPositiveFeedback()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentCheckIn;->getPositiveFeedback()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPrimaryComment()Lcom/yelp/android/serializable/Comment;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentCheckIn;->getPrimaryComment()Lcom/yelp/android/serializable/Comment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTotalCount()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentCheckIn;->getTotalCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getUser()Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentCheckIn;->getUser()Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_RecentCheckIn;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_RecentCheckIn;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_RecentCheckIn;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_RecentCheckIn;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
