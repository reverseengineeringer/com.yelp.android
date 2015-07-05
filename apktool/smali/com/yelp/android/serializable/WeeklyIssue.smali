.class public Lcom/yelp/android/serializable/WeeklyIssue;
.super Lcom/yelp/android/serializable/_WeeklyIssue;
.source "WeeklyIssue.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/WeeklyIssue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/serializable/dq;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dq;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/WeeklyIssue;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_WeeklyIssue;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_WeeklyIssue;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBusinesses()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_WeeklyIssue;->getBusinesses()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeadlinePhotoCreditName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_WeeklyIssue;->getHeadlinePhotoCreditName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeadlinePhotoTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_WeeklyIssue;->getHeadlinePhotoTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getHeadlinePhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_WeeklyIssue;->getHeadlinePhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_WeeklyIssue;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMarketId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_WeeklyIssue;->getMarketId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMarketLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_WeeklyIssue;->getMarketLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMarketName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_WeeklyIssue;->getMarketName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPublishDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_WeeklyIssue;->getPublishDate()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getReviews()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_WeeklyIssue;->getReviews()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_WeeklyIssue;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_WeeklyIssue;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_WeeklyIssue;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_WeeklyIssue;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
