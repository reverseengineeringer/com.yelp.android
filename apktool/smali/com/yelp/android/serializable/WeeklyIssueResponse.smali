.class public Lcom/yelp/android/serializable/WeeklyIssueResponse;
.super Lcom/yelp/android/serializable/_WeeklyIssueResponse;
.source "WeeklyIssueResponse.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/WeeklyIssueResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/serializable/dr;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dr;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/WeeklyIssueResponse;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_WeeklyIssueResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_WeeklyIssueResponse;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getWeeklyIssue()Lcom/yelp/android/serializable/WeeklyIssue;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_WeeklyIssueResponse;->getWeeklyIssue()Lcom/yelp/android/serializable/WeeklyIssue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_WeeklyIssueResponse;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_WeeklyIssueResponse;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_WeeklyIssueResponse;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
