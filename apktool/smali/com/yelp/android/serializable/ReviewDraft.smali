.class public Lcom/yelp/android/serializable/ReviewDraft;
.super Lcom/yelp/android/serializable/_ReviewDraft;
.source "ReviewDraft.java"

# interfaces
.implements Lcom/yelp/android/serializable/m;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/ReviewDraft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/yelp/android/serializable/cp;

    invoke-direct {v0}, Lcom/yelp/android/serializable/cp;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ReviewDraft;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ReviewDraft;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewDraft;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBusinessId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewDraft;->getBusinessId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusinessName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewDraft;->getBusinessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getBusinessPhotoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewDraft;->getBusinessPhotoUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDateCreated()Ljava/util/Date;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewDraft;->getDateCreated()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDateModified()Ljava/util/Date;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewDraft;->getDateModified()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewDraft;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNumHalfstars()I
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewDraft;->getNumHalfstars()I

    move-result v0

    return v0
.end method

.method public getRating()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/yelp/android/serializable/ReviewDraft;->mNumHalfstars:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public bridge synthetic getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 10
    invoke-super {p0}, Lcom/yelp/android/serializable/_ReviewDraft;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReviewDraft;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ReviewDraft;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public setHalfStars(I)V
    .locals 0

    .prologue
    .line 37
    iput p1, p0, Lcom/yelp/android/serializable/ReviewDraft;->mNumHalfstars:I

    .line 38
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lcom/yelp/android/serializable/ReviewDraft;->mText:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 10
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_ReviewDraft;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
