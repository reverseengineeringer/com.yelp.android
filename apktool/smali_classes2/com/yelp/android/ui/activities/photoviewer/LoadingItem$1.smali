.class final Lcom/yelp/android/ui/activities/photoviewer/LoadingItem$1;
.super Ljava/lang/Object;
.source "LoadingItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/photoviewer/LoadingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/yelp/android/ui/activities/photoviewer/LoadingItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/ui/activities/photoviewer/LoadingItem;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/yelp/android/ui/activities/photoviewer/LoadingItem;

    invoke-direct {v0}, Lcom/yelp/android/ui/activities/photoviewer/LoadingItem;-><init>()V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/ui/activities/photoviewer/LoadingItem;
    .locals 1

    .prologue
    .line 28
    new-array v0, p1, [Lcom/yelp/android/ui/activities/photoviewer/LoadingItem;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/LoadingItem$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/ui/activities/photoviewer/LoadingItem;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/photoviewer/LoadingItem$1;->a(I)[Lcom/yelp/android/ui/activities/photoviewer/LoadingItem;

    move-result-object v0

    return-object v0
.end method
