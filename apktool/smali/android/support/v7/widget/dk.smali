.class final Landroid/support/v7/widget/dk;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/support/v7/widget/Toolbar$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v7/widget/Toolbar$SavedState;
    .locals 1

    .prologue
    .line 1894
    new-instance v0, Landroid/support/v7/widget/Toolbar$SavedState;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/Toolbar$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Landroid/support/v7/widget/Toolbar$SavedState;
    .locals 1

    .prologue
    .line 1899
    new-array v0, p1, [Landroid/support/v7/widget/Toolbar$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1890
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/dk;->a(Landroid/os/Parcel;)Landroid/support/v7/widget/Toolbar$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1890
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/dk;->a(I)[Landroid/support/v7/widget/Toolbar$SavedState;

    move-result-object v0

    return-object v0
.end method
