.class final Landroid/support/v7/internal/widget/ba;
.super Ljava/lang/Object;
.source "SpinnerCompat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 736
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;
    .locals 2

    .prologue
    .line 738
    new-instance v0, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;-><init>(Landroid/os/Parcel;Landroid/support/v7/internal/widget/au;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;
    .locals 1

    .prologue
    .line 742
    new-array v0, p1, [Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 736
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ba;->a(Landroid/os/Parcel;)Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 736
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/widget/ba;->a(I)[Landroid/support/v7/internal/widget/SpinnerCompat$SavedState;

    move-result-object v0

    return-object v0
.end method
