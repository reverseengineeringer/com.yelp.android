.class public Lcom/yelp/android/serializable/UserTiny;
.super Lcom/yelp/android/serializable/_UserTiny;
.source "UserTiny.java"

# interfaces
.implements Lcom/yelp/android/serializable/bg;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/UserTiny;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    new-instance v0, Lcom/yelp/android/serializable/dn;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dn;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/UserTiny;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_UserTiny;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserTiny;->describeContents()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 23
    instance-of v0, p1, Lcom/yelp/android/serializable/UserTiny;

    if-eqz v0, :cond_0

    .line 24
    check-cast p1, Lcom/yelp/android/serializable/UserTiny;

    .line 25
    invoke-virtual {p0}, Lcom/yelp/android/serializable/UserTiny;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/UserTiny;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 27
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserTiny;->getFirstName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserTiny;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLastInitial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserTiny;->getLastInitial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserTiny;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameWithoutPeriod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/yelp/android/serializable/UserTiny;->mFirstName:Ljava/lang/String;

    iget-object v1, p0, Lcom/yelp/android/serializable/UserTiny;->mLastInitial:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/yelp/android/serializable/User;->getNameWithoutPeriod(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserTiny;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/yelp/android/serializable/UserTiny;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isBlocked()Z
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_UserTiny;->isBlocked()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_UserTiny;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_UserTiny;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setBlocked(Z)V
    .locals 0

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/yelp/android/serializable/UserTiny;->mIsBlocked:Z

    .line 14
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_UserTiny;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
