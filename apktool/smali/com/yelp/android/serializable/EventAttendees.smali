.class public Lcom/yelp/android/serializable/EventAttendees;
.super Lcom/yelp/android/serializable/_EventAttendees;
.source "EventAttendees.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/EventAttendees;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/serializable/aj;

    invoke-direct {v0}, Lcom/yelp/android/serializable/aj;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/EventAttendees;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_EventAttendees;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventAttendees;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAttendeeIds()Ljava/util/List;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventAttendees;->getAttendeeIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAttendees()Ljava/util/List;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventAttendees;->getAttendees()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAttendeesText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventAttendees;->getAttendeesText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSectionCounts()[I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventAttendees;->getSectionCounts()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSectionNames()Ljava/util/List;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_EventAttendees;->getSectionNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_EventAttendees;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_EventAttendees;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_EventAttendees;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
