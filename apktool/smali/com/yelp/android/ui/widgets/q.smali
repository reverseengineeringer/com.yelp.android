.class final Lcom/yelp/android/ui/widgets/q;
.super Ljava/lang/Object;
.source "PieProgress.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
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
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/yelp/android/ui/widgets/PieProgress$SavedState;
    .locals 2

    .prologue
    .line 127
    new-instance v0, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/yelp/android/ui/widgets/PieProgress$SavedState;-><init>(Landroid/os/Parcel;Lcom/yelp/android/ui/widgets/p;)V

    return-object v0
.end method

.method public a(I)[Lcom/yelp/android/ui/widgets/PieProgress$SavedState;
    .locals 1

    .prologue
    .line 132
    new-array v0, p1, [Lcom/yelp/android/ui/widgets/PieProgress$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/widgets/q;->a(Landroid/os/Parcel;)Lcom/yelp/android/ui/widgets/PieProgress$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/widgets/q;->a(I)[Lcom/yelp/android/ui/widgets/PieProgress$SavedState;

    move-result-object v0

    return-object v0
.end method
