.class public Lcom/yelp/android/serializable/YelpAddresses;
.super Lcom/yelp/android/serializable/_YelpAddresses;
.source "YelpAddresses.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/YelpAddresses;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/yelp/android/serializable/du;

    invoke-direct {v0}, Lcom/yelp/android/serializable/du;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpAddresses;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpAddresses;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/YelpAddress;Lcom/yelp/android/serializable/YelpAddress;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpAddresses;-><init>(Lcom/yelp/android/serializable/YelpAddress;Lcom/yelp/android/serializable/YelpAddress;)V

    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpAddresses;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getPrimaryLanguage()Lcom/yelp/android/serializable/YelpAddress;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpAddresses;->getPrimaryLanguage()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSecondaryLanguage()Lcom/yelp/android/serializable/YelpAddress;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpAddresses;->getSecondaryLanguage()Lcom/yelp/android/serializable/YelpAddress;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpAddresses;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpAddresses;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpAddresses;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpAddresses;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
