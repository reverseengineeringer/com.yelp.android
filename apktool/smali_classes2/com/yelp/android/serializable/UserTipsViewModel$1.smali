.class final Lcom/yelp/android/serializable/UserTipsViewModel$1;
.super Ljava/lang/Object;
.source "UserTipsViewModel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/UserTipsViewModel;
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
        "Lcom/yelp/android/serializable/UserTipsViewModel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/UserTipsViewModel;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/yelp/android/serializable/UserTipsViewModel;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yelp/android/serializable/UserTipsViewModel;-><init>(Lcom/yelp/android/serializable/UserTipsViewModel$1;)V

    .line 63
    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/UserTipsViewModel;->a(Landroid/os/Parcel;)V

    .line 64
    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/serializable/UserTipsViewModel;
    .locals 1

    .prologue
    .line 58
    new-array v0, p1, [Lcom/yelp/android/serializable/UserTipsViewModel;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/UserTipsViewModel$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/serializable/UserTipsViewModel;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/UserTipsViewModel$1;->a(I)[Lcom/yelp/android/serializable/UserTipsViewModel;

    move-result-object v0

    return-object v0
.end method
