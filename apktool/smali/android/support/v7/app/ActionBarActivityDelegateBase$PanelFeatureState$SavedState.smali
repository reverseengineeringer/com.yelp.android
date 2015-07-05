.class Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field featureId:I

.field isOpen:Z

.field menuState:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1741
    new-instance v0, Landroid/support/v7/app/m;

    invoke-direct {v0}, Landroid/support/v7/app/m;-><init>()V

    sput-object v0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/f;)V
    .locals 0

    .prologue
    .line 1711
    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Landroid/os/Parcel;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    .locals 1

    .prologue
    .line 1711
    invoke-static {p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->readFromParcel(Landroid/os/Parcel;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    move-result-object v0

    return-object v0
.end method

.method private static readFromParcel(Landroid/os/Parcel;)Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1730
    new-instance v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;

    invoke-direct {v1}, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;-><init>()V

    .line 1731
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->featureId:I

    .line 1732
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->isOpen:Z

    .line 1734
    iget-boolean v0, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_0

    .line 1735
    invoke-virtual {p0}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, v1, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    .line 1738
    :cond_0
    return-object v1

    .line 1732
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1717
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 1721
    iget v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->featureId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1722
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1724
    iget-boolean v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->isOpen:Z

    if-eqz v0, :cond_0

    .line 1725
    iget-object v0, p0, Landroid/support/v7/app/ActionBarActivityDelegateBase$PanelFeatureState$SavedState;->menuState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 1727
    :cond_0
    return-void

    .line 1722
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
