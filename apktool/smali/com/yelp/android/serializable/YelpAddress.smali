.class public Lcom/yelp/android/serializable/YelpAddress;
.super Lcom/yelp/android/serializable/_YelpAddress;
.source "YelpAddress.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/YelpAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/yelp/android/serializable/dt;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dt;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpAddress;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpAddress;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/serializable/_YelpAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpAddress;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getCrossStreets()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpAddress;->getCrossStreets()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLongForm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpAddress;->getLongForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getShortForm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpAddress;->getShortForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpAddress;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpAddress;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpAddress;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpAddress;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
