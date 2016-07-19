.class public Lcom/yelp/android/serializable/ContinueLastOrderInfo;
.super Lcom/yelp/android/serializable/_ContinueLastOrderInfo;
.source "ContinueLastOrderInfo.java"


# static fields
.field public static final CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/parcelgen/JsonParser$DualCreator",
            "<",
            "Lcom/yelp/android/serializable/ContinueLastOrderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/yelp/android/serializable/ContinueLastOrderInfo$1;

    invoke-direct {v0}, Lcom/yelp/android/serializable/ContinueLastOrderInfo$1;-><init>()V

    sput-object v0, Lcom/yelp/android/serializable/ContinueLastOrderInfo;->CREATOR:Lcom/yelp/parcelgen/JsonParser$DualCreator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/yelp/android/serializable/_ContinueLastOrderInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/os/Parcel;)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ContinueLastOrderInfo;->a(Landroid/os/Parcel;)V

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
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ContinueLastOrderInfo;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 17
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0}, Lcom/yelp/android/serializable/ContinueLastOrderInfo;->g()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic b()Lorg/json/JSONObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_ContinueLastOrderInfo;->b()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_ContinueLastOrderInfo;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_ContinueLastOrderInfo;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_ContinueLastOrderInfo;->describeContents()I

    move-result v0

    return v0
.end method

.method public bridge synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_ContinueLastOrderInfo;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/yelp/android/serializable/_ContinueLastOrderInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_ContinueLastOrderInfo;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic g()Ljava/util/Date;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_ContinueLastOrderInfo;->g()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic h()Ljava/util/Date;
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_ContinueLastOrderInfo;->h()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .prologue
    .line 14
    invoke-super {p0}, Lcom/yelp/android/serializable/_ContinueLastOrderInfo;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0, p1, p2}, Lcom/yelp/android/serializable/_ContinueLastOrderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
