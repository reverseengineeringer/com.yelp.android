.class public Lcom/yelp/android/serializable/FacebookUser;
.super Lcom/yelp/android/serializable/_FacebookUser;
.source "FacebookUser.java"


# static fields
.field public static final CREATOR:Lcom/yelp/android/serializable/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/serializable/ah",
            "<",
            "Lcom/yelp/android/serializable/FacebookUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/yelp/android/serializable/ao;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ao;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/FacebookUser;->CREATOR:Lcom/yelp/android/serializable/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/yelp/android/serializable/_FacebookUser;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_FacebookUser;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_FacebookUser;->getBirthday()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_FacebookUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_FacebookUser;->getFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_FacebookUser;->getGender()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_FacebookUser;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_FacebookUser;->getLastName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getVerified()Z
    .locals 1

    .prologue
    .line 8
    invoke-super {p0}, Lcom/yelp/android/serializable/_FacebookUser;->getVerified()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FacebookUser;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_FacebookUser;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 8
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_FacebookUser;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
