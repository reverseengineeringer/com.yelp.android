.class public Lcom/yelp/android/serializable/BusinessRepresentative;
.super Lcom/yelp/android/serializable/_BusinessRepresentative;
.source "BusinessRepresentative.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/BusinessRepresentative;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Lcom/yelp/android/serializable/p;

    invoke-direct {v0}, Lcom/yelp/android/serializable/p;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/BusinessRepresentative;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getBio()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;->getBio()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPhoto()Lcom/yelp/android/serializable/Photo;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;->getPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v0

    return-object v0
.end method

.method public getRole()Lcom/yelp/android/serializable/BusinessRepresentative$Role;
    .locals 2

    .prologue
    .line 19
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;->getRoleString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "business_owner"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    sget-object v0, Lcom/yelp/android/serializable/BusinessRepresentative$Role;->BUSINESS_OWNER:Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    .line 22
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/yelp/android/serializable/BusinessRepresentative$Role;->MANAGER:Lcom/yelp/android/serializable/BusinessRepresentative$Role;

    goto :goto_0
.end method

.method public final getRoleString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Don\'t parse these strings yourself, use getRole() instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BusinessRepresentative;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public bridge synthetic readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BusinessRepresentative;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeJSON()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 11
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessRepresentative;->writeJSON()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 11
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_BusinessRepresentative;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
