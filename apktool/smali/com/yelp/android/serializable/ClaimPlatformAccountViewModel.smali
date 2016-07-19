.class public Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;
.super Lcom/yelp/android/serializable/_ClaimPlatformAccountViewModel;
.source "ClaimPlatformAccountViewModel.java"

# interfaces
.implements Lcom/yelp/android/bx/c;


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ClaimPlatformAccountViewModel;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/serializable/PlatformConfirmation;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ClaimPlatformAccountViewModel;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;->a:Lcom/yelp/android/serializable/PlatformConfirmation;

    .line 22
    return-void
.end method

.method public static b(Landroid/os/Bundle;)Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;
    .locals 1

    .prologue
    .line 26
    const-string/jumbo v0, "ClaimPlatformAccountViewModel"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "ClaimPlatformAccountViewModel"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 32
    return-void
.end method

.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ClaimPlatformAccountViewModel;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ClaimPlatformAccountViewModel;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/yelp/android/serializable/ClaimPlatformAccountViewModel;->c:Z

    .line 36
    return-void
.end method

.method public bridge synthetic a()Z
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_ClaimPlatformAccountViewModel;->a()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()Lcom/yelp/android/serializable/PlatformConfirmation;
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_ClaimPlatformAccountViewModel;->b()Lcom/yelp/android/serializable/PlatformConfirmation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_ClaimPlatformAccountViewModel;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ClaimPlatformAccountViewModel;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 13
    invoke-super {p0}, Lcom/yelp/android/serializable/_ClaimPlatformAccountViewModel;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_ClaimPlatformAccountViewModel;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
