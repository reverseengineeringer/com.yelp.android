.class public Lcom/yelp/android/serializable/AlertsResponse;
.super Lcom/yelp/android/serializable/_AlertsResponse;
.source "AlertsResponse.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/AlertsResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/serializable/c;

    invoke-direct {v0}, Lcom/yelp/android/serializable/c;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/AlertsResponse;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_AlertsResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AlertsResponse;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAlerts()Ljava/util/List;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AlertsResponse;->getAlerts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCount()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AlertsResponse;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getFillerAlerts()Ljava/util/List;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AlertsResponse;->getFillerAlerts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNextPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AlertsResponse;->getNextPage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRevision()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AlertsResponse;->getRevision()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSummaryAlerts()Ljava/util/List;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AlertsResponse;->getSummaryAlerts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getTheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AlertsResponse;->getTheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getUnreadMessageCount()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AlertsResponse;->getUnreadMessageCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_AlertsResponse;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_AlertsResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setNextPage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yelp/android/serializable/AlertsResponse;->mNextPage:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_AlertsResponse;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_AlertsResponse;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
