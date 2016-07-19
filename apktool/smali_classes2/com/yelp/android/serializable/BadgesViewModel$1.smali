.class final Lcom/yelp/android/serializable/BadgesViewModel$1;
.super Ljava/lang/Object;
.source "BadgesViewModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/BadgesViewModel;
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
        "Lcom/yelp/android/serializable/BadgesViewModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BadgesViewModel;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/yelp/android/serializable/BadgesViewModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/BadgesViewModel;-><init>(Lcom/yelp/android/serializable/BadgesViewModel$1;)V

    .line 44
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/BadgesViewModel;->a(Landroid/os/Parcel;)V

    .line 45
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/BadgesViewModel;
    .locals 1

    .prologue
    .line 39
    new-array v0, p1, [Lcom/yelp/android/serializable/BadgesViewModel;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/BadgesViewModel$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/BadgesViewModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/BadgesViewModel$1;->a(I)[Lcom/yelp/android/serializable/BadgesViewModel;

    move-result-object v0

    return-object v0
.end method
