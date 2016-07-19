.class Landroid/support/v4/view/as$d;
.super Landroid/support/v4/view/as$c;
.source "ViewConfigurationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/support/v4/view/as$c;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/ViewConfiguration;)Z
    .locals 1

    .prologue
    .line 77
    invoke-static {p1}, Landroid/support/v4/view/au;->a(Landroid/view/ViewConfiguration;)Z

    move-result v0

    return v0
.end method
