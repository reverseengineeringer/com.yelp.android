.class final Lcom/yelp/android/ui/widgets/PieProgress$SavedState$1;
.super Ljava/lang/Object;
.source "PieProgress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/widgets/PieProgress$SavedState;
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
        "Lcom/yelp/android/ui/widgets/PieProgress$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/ui/widgets/PieProgress$SavedState;
    .locals 2

    .prologue
    .line 129
    new-instance v0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;-><init>(Landroid/os/Parcel;Lcom/yelp/android/ui/widgets/PieProgress$1;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/ui/widgets/PieProgress$SavedState;
    .locals 1

    .prologue
    .line 134
    new-array v0, p1, [Lcom/yelp/android/ui/widgets/PieProgress$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/widgets/PieProgress$SavedState$1;->a(Landroid/os/Parcel;)Lcom/yelp/android/ui/widgets/PieProgress$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/widgets/PieProgress$SavedState$1;->a(I)[Lcom/yelp/android/ui/widgets/PieProgress$SavedState;

    move-result-object v0

    return-object v0
.end method
