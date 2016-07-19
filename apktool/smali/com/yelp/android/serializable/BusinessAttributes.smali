.class public Lcom/yelp/android/serializable/BusinessAttributes;
.super Lcom/yelp/android/serializable/_BusinessAttributes;
.source "BusinessAttributes.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/BusinessAttributes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/AddressAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/BusinessAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    new-instance v0, Lcom/yelp/android/serializable/BusinessAttributes$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/BusinessAttributes$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/BusinessAttributes;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/yelp/android/serializable/_BusinessAttributes;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/BusinessAttributes;->g:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/BusinessAttributes;->h:Ljava/util/Map;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/yelp/android/serializable/BusinessAttributes;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/yelp/android/serializable/BusinessAttributes;->g:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic b(Lcom/yelp/android/serializable/BusinessAttributes;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/yelp/android/serializable/BusinessAttributes;->h:Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BusinessAttributes;->a(Landroid/os/Parcel;)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 40
    const-class v1, Lcom/yelp/android/serializable/AddressAttribute;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 41
    iget-object v1, p0, Lcom/yelp/android/serializable/BusinessAttributes;->g:Ljava/util/Map;

    const-class v2, Lcom/yelp/android/serializable/AddressAttribute;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/i;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 44
    const-class v1, Lcom/yelp/android/serializable/BusinessAttribute;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 45
    iget-object v1, p0, Lcom/yelp/android/serializable/BusinessAttributes;->h:Ljava/util/Map;

    const-class v2, Lcom/yelp/android/serializable/BusinessAttribute;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/i;->a(Landroid/os/Bundle;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 47
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
    .line 17
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BusinessAttributes;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessAttributes;->g:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessAttributes;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/AddressAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessAttributes;->g:Ljava/util/Map;

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/yelp/android/serializable/BusinessAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessAttributes;->h:Ljava/util/Map;

    return-object v0
.end method

.method public bridge synthetic d()Lcom/yelp/android/serializable/BusinessAttribute;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessAttributes;->d()Lcom/yelp/android/serializable/BusinessAttribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessAttributes;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Lcom/yelp/android/serializable/BusinessAttribute;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessAttributes;->e()Lcom/yelp/android/serializable/BusinessAttribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_BusinessAttributes;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Lcom/yelp/android/serializable/BusinessAttribute;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessAttributes;->f()Lcom/yelp/android/serializable/BusinessAttribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Lcom/yelp/android/serializable/BusinessAttribute;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessAttributes;->g()Lcom/yelp/android/serializable/BusinessAttribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Lcom/yelp/android/serializable/BusinessAttribute;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessAttributes;->h()Lcom/yelp/android/serializable/BusinessAttribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessAttributes;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i()Lcom/yelp/android/serializable/AddressAttribute;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0}, Lcom/yelp/android/serializable/_BusinessAttributes;->i()Lcom/yelp/android/serializable/AddressAttribute;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 29
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_BusinessAttributes;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessAttributes;->g:Ljava/util/Map;

    invoke-static {v0}, Lcom/yelp/android/ui/util/i;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 32
    iget-object v0, p0, Lcom/yelp/android/serializable/BusinessAttributes;->h:Ljava/util/Map;

    invoke-static {v0}, Lcom/yelp/android/ui/util/i;->a(Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 33
    return-void
.end method
