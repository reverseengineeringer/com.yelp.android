.class final Lcom/yelp/android/serializable/PlatformSearchAction$2;
.super Lcom/yelp/android/serializable/a;
.source "PlatformSearchAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/PlatformSearchAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/a",
        "<",
        "Lcom/yelp/android/serializable/PlatformSearchAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/yelp/android/serializable/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PlatformSearchAction;
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/yelp/android/serializable/PlatformSearchAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PlatformSearchAction;-><init>()V

    .line 190
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->a(Landroid/os/Parcel;)V

    .line 191
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PlatformSearchAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lcom/yelp/android/serializable/PlatformSearchAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/PlatformSearchAction;-><init>()V

    .line 197
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/PlatformSearchAction;->a(Lorg/json/JSONObject;)V

    .line 198
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/PlatformSearchAction;
    .locals 1

    .prologue
    .line 185
    new-array v0, p1, [Lcom/yelp/android/serializable/PlatformSearchAction;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/PlatformSearchAction$2;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/PlatformSearchAction;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/PlatformSearchAction$2;->a(I)[Lcom/yelp/android/serializable/PlatformSearchAction;

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
    .line 182
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/PlatformSearchAction$2;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/PlatformSearchAction;

    move-result-object v0

    return-object v0
.end method
