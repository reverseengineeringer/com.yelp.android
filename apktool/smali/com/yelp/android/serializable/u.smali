.class final Lcom/yelp/android/serializable/u;
.super Lcom/yelp/android/serializable/ah;
.source "Category.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/ah",
        "<",
        "Lcom/yelp/android/serializable/Category;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/yelp/android/serializable/ah;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Category;
    .locals 6

    .prologue
    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 71
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->j()Lcom/yelp/android/database/m;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/database/m;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 73
    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/yelp/android/serializable/Category;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    invoke-virtual {v0, v5}, Lcom/yelp/android/serializable/Category;->setNumChildren(I)V

    .line 77
    :cond_0
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Category;
    .locals 5

    .prologue
    .line 87
    const-string/jumbo v0, "category_filter"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string/jumbo v0, "parent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->z()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->j()Lcom/yelp/android/database/m;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/m;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/yelp/android/serializable/Category;

    const/4 v4, -0x1

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    :cond_0
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Category;
    .locals 1

    .prologue
    .line 82
    new-array v0, p1, [Lcom/yelp/android/serializable/Category;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/u;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/u;->a(I)[Lcom/yelp/android/serializable/Category;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/u;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    return-object v0
.end method
