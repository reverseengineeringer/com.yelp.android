.class final Lcom/yelp/android/serializable/PlatformGenericSearchFilter$1;
.super Lcom/yelp/android/serializable/a;
.source "PlatformGenericSearchFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/PlatformGenericSearchFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/a",
        "<",
        "Lcom/yelp/android/serializable/PlatformGenericSearchFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/yelp/android/serializable/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PlatformGenericSearchFilter;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;-><init>(Lcom/yelp/android/serializable/PlatformGenericSearchFilter$1;)V

    .line 92
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->a(Landroid/os/Parcel;)V

    .line 93
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PlatformGenericSearchFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 98
    new-instance v0, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;-><init>(Lcom/yelp/android/serializable/PlatformGenericSearchFilter$1;)V

    .line 99
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter;->a(Lorg/json/JSONObject;)V

    .line 100
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/PlatformGenericSearchFilter;
    .locals 1

    .prologue
    .line 105
    new-array v0, p1, [Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter$1;->a(I)[Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

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
    .line 88
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/PlatformGenericSearchFilter$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PlatformGenericSearchFilter;

    move-result-object v0

    return-object v0
.end method
