.class public Lcom/yelp/android/serializable/PreviousReview;
.super Lcom/yelp/android/serializable/_PreviousReview;
.source "PreviousReview.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/PreviousReview;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/yelp/android/serializable/bz;

    invoke-direct {v0}, Lcom/yelp/android/serializable/bz;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/PreviousReview;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_PreviousReview;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PreviousReview;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDateModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PreviousReview;->getDateModified()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PreviousReview;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getRating()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PreviousReview;->getRating()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PreviousReview;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PreviousReview;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_PreviousReview;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_PreviousReview;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_PreviousReview;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
