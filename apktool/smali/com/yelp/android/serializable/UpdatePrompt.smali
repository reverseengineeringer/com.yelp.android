.class public Lcom/yelp/android/serializable/UpdatePrompt;
.super Lcom/yelp/android/serializable/_UpdatePrompt;
.source "UpdatePrompt.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/UpdatePrompt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/yelp/android/serializable/dj;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dj;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/UpdatePrompt;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/yelp/android/serializable/_UpdatePrompt;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_UpdatePrompt;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAppLaunchesBetweenUpdatePrompts()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_UpdatePrompt;->getAppLaunchesBetweenUpdatePrompts()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_UpdatePrompt;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_UpdatePrompt;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_UpdatePrompt;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setAppLaunchesBetweenUpdatePrompts(I)V
    .locals 0

    .prologue
    .line 20
    iput p1, p0, Lcom/yelp/android/serializable/UpdatePrompt;->mAppLaunchesBetweenUpdatePrompts:I

    .line 21
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/yelp/android/serializable/UpdatePrompt;->mMessage:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_UpdatePrompt;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
