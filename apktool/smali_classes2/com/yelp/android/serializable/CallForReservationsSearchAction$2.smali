.class final Lcom/yelp/android/serializable/CallForReservationsSearchAction$2;
.super Lcom/yelp/parcelgen/JsonParser$DualCreator;
.source "CallForReservationsSearchAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/CallForReservationsSearchAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/parcelgen/JsonParser$DualCreator",
        "<",
        "Lcom/yelp/android/serializable/CallForReservationsSearchAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/yelp/parcelgen/JsonParser$DualCreator;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/CallForReservationsSearchAction;
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/yelp/android/serializable/CallForReservationsSearchAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;-><init>()V

    .line 129
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->a(Landroid/os/Parcel;)V

    .line 130
    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/CallForReservationsSearchAction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Lcom/yelp/android/serializable/CallForReservationsSearchAction;

    invoke-direct {v0}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;-><init>()V

    .line 137
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction;->a(Lorg/json/JSONObject;)V

    .line 138
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/CallForReservationsSearchAction;
    .locals 1

    .prologue
    .line 124
    new-array v0, p1, [Lcom/yelp/android/serializable/CallForReservationsSearchAction;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction$2;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/CallForReservationsSearchAction;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction$2;->a(I)[Lcom/yelp/android/serializable/CallForReservationsSearchAction;

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
    .line 121
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/CallForReservationsSearchAction$2;->a(Lorg/json/JSONObject;)Lcom/yelp/android/serializable/CallForReservationsSearchAction;

    move-result-object v0

    return-object v0
.end method
