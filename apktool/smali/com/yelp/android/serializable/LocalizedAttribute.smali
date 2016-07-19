.class public Lcom/yelp/android/serializable/LocalizedAttribute;
.super Lcom/yelp/android/serializable/_LocalizedAttribute;
.source "LocalizedAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/serializable/LocalizedAttribute$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/LocalizedAttribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    new-instance v0, Lcom/yelp/android/serializable/LocalizedAttribute$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/LocalizedAttribute$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/LocalizedAttribute;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/yelp/android/serializable/_LocalizedAttribute;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/serializable/LocalizedAttribute;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/yelp/android/serializable/LocalizedAttribute;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method public a(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_LocalizedAttribute;->a(Landroid/os/Parcel;)V

    .line 51
    iget-object v0, p0, Lcom/yelp/android/serializable/LocalizedAttribute;->f:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 52
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_LocalizedAttribute;->a(Lorg/json/JSONObject;)V

    .line 39
    const-string/jumbo v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    const-string/jumbo v0, "params"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 43
    iget-object v3, p0, Lcom/yelp/android/serializable/LocalizedAttribute;->f:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/yelp/android/serializable/LocalizedAttribute;->d()Lcom/yelp/android/serializable/LocalizedAttribute$Type;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/yelp/android/serializable/LocalizedAttribute;->d()Lcom/yelp/android/serializable/LocalizedAttribute$Type;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/LocalizedAttribute$Type;->PLATFORM:Lcom/yelp/android/serializable/LocalizedAttribute$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/LocalizedAttribute;->d()Lcom/yelp/android/serializable/LocalizedAttribute$Type;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/serializable/LocalizedAttribute$Type;->RESERVATION:Lcom/yelp/android/serializable/LocalizedAttribute$Type;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic c()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalizedAttribute;->c()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/yelp/android/serializable/LocalizedAttribute$Type;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalizedAttribute;->d()Lcom/yelp/android/serializable/LocalizedAttribute$Type;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalizedAttribute;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalizedAttribute;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_LocalizedAttribute;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalizedAttribute;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalizedAttribute;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalizedAttribute;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/yelp/android/serializable/_LocalizedAttribute;->hashCode()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 56
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_LocalizedAttribute;->writeToParcel(Landroid/os/Parcel;I)V

    .line 57
    iget-object v0, p0, Lcom/yelp/android/serializable/LocalizedAttribute;->f:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 58
    return-void
.end method
