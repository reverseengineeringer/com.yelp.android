.class final Lcom/yelp/android/serializable/Category$1;
.super Lcom/yelp/android/serializable/a;
.source "Category.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/a",
        "<",
        "Lcom/yelp/android/serializable/Category;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/yelp/android/serializable/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Category;
    .locals 6

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 102
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->j()Lcom/yelp/android/database/e;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/database/e;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 106
    if-nez v0, :cond_0

    .line 107
    new-instance v0, Lcom/yelp/android/serializable/Category;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    invoke-virtual {v0, v5}, Lcom/yelp/android/serializable/Category;->a(I)V

    .line 110
    :cond_0
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Category;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 120
    const-string/jumbo v0, "category_filter"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 121
    const-string/jumbo v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 122
    const-string/jumbo v0, "parent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {}, Lcom/yelp/android/appdata/BaseYelpApplication;->K()Lcom/yelp/android/appdata/BaseYelpApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/BaseYelpApplication;->j()Lcom/yelp/android/database/e;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/e;->a(Ljava/lang/String;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    .line 127
    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/yelp/android/serializable/Category;

    const/4 v4, -0x1

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/yelp/android/serializable/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 130
    :cond_0
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Category;
    .locals 1

    .prologue
    .line 115
    new-array v0, p1, [Lcom/yelp/android/serializable/Category;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Category$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Category$1;->a(I)[Lcom/yelp/android/serializable/Category;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Category$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Category;

    move-result-object v0

    return-object v0
.end method
