.class public Lcom/yelp/android/serializable/SpecialHours;
.super Lcom/yelp/android/serializable/_SpecialHours;
.source "SpecialHours.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/SpecialHours;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/yelp/android/serializable/db;

    invoke-direct {v0}, Lcom/yelp/android/serializable/db;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/SpecialHours;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/yelp/android/serializable/_SpecialHours;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_SpecialHours;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDays()[I
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_SpecialHours;->getDays()[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_SpecialHours;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_SpecialHours;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_SpecialHours;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 9
    invoke-super {p0}, Lcom/yelp/android/serializable/_SpecialHours;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 9
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_SpecialHours;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
