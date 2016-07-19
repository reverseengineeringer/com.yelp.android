.class final Lcom/yelp/android/serializable/User$1;
.super Lcom/yelp/android/serializable/a;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/User;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/serializable/a",
        "<",
        "Lcom/yelp/android/serializable/User;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Lcom/yelp/android/serializable/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 597
    new-instance v0, Lcom/yelp/android/serializable/User;

    invoke-direct {v0}, Lcom/yelp/android/serializable/User;-><init>()V

    .line 598
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/User;->a(Landroid/os/Parcel;)V

    .line 599
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/User;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 609
    new-instance v0, Lcom/yelp/android/serializable/User;

    invoke-direct {v0}, Lcom/yelp/android/serializable/User;-><init>()V

    .line 610
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/User;->a(Lorg/json/JSONObject;)V

    .line 611
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/User;
    .locals 1

    .prologue
    .line 604
    new-array v0, p1, [Lcom/yelp/android/serializable/User;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/User$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 593
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/User$1;->a(I)[Lcom/yelp/android/serializable/User;

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
    .line 593
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/User$1;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/User;

    move-result-object v0

    return-object v0
.end method
