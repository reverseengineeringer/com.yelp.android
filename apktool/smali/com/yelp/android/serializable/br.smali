.class final Lcom/yelp/android/serializable/br;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "Passport.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/Passport;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/yelp/android/serializable/Passport;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Passport;-><init>()V

    .line 60
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Passport;->readFromParcel(Landroid/os/Parcel;)V

    .line 61
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/yelp/android/serializable/Passport;

    invoke-direct {v0}, Lcom/yelp/android/serializable/Passport;-><init>()V

    .line 67
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/Passport;->readFromJson(Lorg/json/JSONObject;)V

    .line 68
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/Passport;
    .locals 1

    .prologue
    .line 54
    new-array v0, p1, [Lcom/yelp/android/serializable/Passport;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/br;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/br;->a(I)[Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    return-object v0
.end method

.method public synthetic parse(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/br;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/Passport;

    move-result-object v0

    return-object v0
.end method
