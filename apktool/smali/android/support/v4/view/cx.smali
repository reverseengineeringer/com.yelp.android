.class public Landroid/support/v4/view/cx;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"


# static fields
.field static final a:Landroid/support/v4/view/dc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 87
    new-instance v0, Landroid/support/v4/view/db;

    invoke-direct {v0}, Landroid/support/v4/view/db;-><init>()V

    sput-object v0, Landroid/support/v4/view/cx;->a:Landroid/support/v4/view/dc;

    .line 95
    :goto_0
    return-void

    .line 88
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 89
    new-instance v0, Landroid/support/v4/view/da;

    invoke-direct {v0}, Landroid/support/v4/view/da;-><init>()V

    sput-object v0, Landroid/support/v4/view/cx;->a:Landroid/support/v4/view/dc;

    goto :goto_0

    .line 90
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_2

    .line 91
    new-instance v0, Landroid/support/v4/view/cz;

    invoke-direct {v0}, Landroid/support/v4/view/cz;-><init>()V

    sput-object v0, Landroid/support/v4/view/cx;->a:Landroid/support/v4/view/dc;

    goto :goto_0

    .line 93
    :cond_2
    new-instance v0, Landroid/support/v4/view/cy;

    invoke-direct {v0}, Landroid/support/v4/view/cy;-><init>()V

    sput-object v0, Landroid/support/v4/view/cx;->a:Landroid/support/v4/view/dc;

    goto :goto_0
.end method

.method public static a(Landroid/view/ViewConfiguration;)I
    .locals 1

    .prologue
    .line 105
    sget-object v0, Landroid/support/v4/view/cx;->a:Landroid/support/v4/view/dc;

    invoke-interface {v0, p0}, Landroid/support/v4/view/dc;->a(Landroid/view/ViewConfiguration;)I

    move-result v0

    return v0
.end method

.method public static b(Landroid/view/ViewConfiguration;)Z
    .locals 1

    .prologue
    .line 113
    sget-object v0, Landroid/support/v4/view/cx;->a:Landroid/support/v4/view/dc;

    invoke-interface {v0, p0}, Landroid/support/v4/view/dc;->b(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method
