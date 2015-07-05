.class final Landroid/support/v7/app/m;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    .locals 1

    .prologue
    .line 1744
    # invokes: Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    invoke-static {p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->access$1100(Landroid/os/Parcel;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public a(I)[Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    .locals 1

    .prologue
    .line 1748
    new-array v0, p1, [Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1742
    invoke-virtual {p0, p1}, Landroid/support/v7/app/m;->a(Landroid/os/Parcel;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1742
    invoke-virtual {p0, p1}, Landroid/support/v7/app/m;->a(I)[Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method
