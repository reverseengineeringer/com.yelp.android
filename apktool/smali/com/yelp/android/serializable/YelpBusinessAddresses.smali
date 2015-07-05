.class public Lcom/yelp/android/serializable/YelpBusinessAddresses;
.super Lcom/yelp/android/serializable/_YelpBusinessAddresses;
.source "YelpBusinessAddresses.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/YelpBusinessAddresses;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlternateAddresses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpDetailedAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    new-instance v0, Lcom/yelp/android/serializable/dy;

    invoke-direct {v0}, Lcom/yelp/android/serializable/dy;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/YelpBusinessAddresses;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/yelp/android/serializable/_YelpBusinessAddresses;-><init>()V

    .line 43
    new-instance v0, Lcom/yelp/android/serializable/YelpDetailedAddress;

    invoke-direct {v0}, Lcom/yelp/android/serializable/YelpDetailedAddress;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessAddresses;->mAddress:Lcom/yelp/android/serializable/YelpDetailedAddress;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessAddresses;->mAlternateAddresses:Ljava/util/Map;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpDetailedAddress;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpDetailedAddress;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpDetailedAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/serializable/_YelpBusinessAddresses;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/serializable/YelpDetailedAddress;)V

    .line 50
    iput-object p4, p0, Lcom/yelp/android/serializable/YelpBusinessAddresses;->mAlternateAddresses:Ljava/util/Map;

    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAddress()Lcom/yelp/android/serializable/YelpDetailedAddress;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->getAddress()Lcom/yelp/android/serializable/YelpDetailedAddress;

    move-result-object v0

    return-object v0
.end method

.method public getAlternateAddresses()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpDetailedAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessAddresses;->mAlternateAddresses:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLocality()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->getLocality()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAlternateAddressEmpty()Z
    .locals 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessAddresses;->mAlternateAddresses:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/YelpDetailedAddress;

    .line 67
    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDetailedAddress;->getAddress1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpDetailedAddress;->getAddress2()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic readFromJson(Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->readFromJson(Lorg/json/JSONObject;)V

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->readFromParcel(Landroid/os/Parcel;)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 86
    const-class v1, Lcom/yelp/android/serializable/YelpDetailedAddress;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 87
    iget-object v1, p0, Lcom/yelp/android/serializable/YelpBusinessAddresses;->mAlternateAddresses:Ljava/util/Map;

    const-class v2, Lcom/yelp/android/serializable/YelpDetailedAddress;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/m;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 88
    return-void
.end method

.method public setAddress(Lcom/yelp/android/serializable/YelpDetailedAddress;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusinessAddresses;->mAddress:Lcom/yelp/android/serializable/YelpDetailedAddress;

    .line 63
    return-void
.end method

.method public setAlternateAddresses(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/YelpDetailedAddress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    iput-object p1, p0, Lcom/yelp/android/serializable/YelpBusinessAddresses;->mAlternateAddresses:Ljava/util/Map;

    .line 59
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_YelpBusinessAddresses;->writeToParcel(Landroid/os/Parcel;I)V

    .line 78
    iget-object v0, p0, Lcom/yelp/android/serializable/YelpBusinessAddresses;->mAlternateAddresses:Ljava/util/Map;

    invoke-static {v0}, Lcom/yelp/android/ui/util/m;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method
