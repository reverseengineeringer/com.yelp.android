.class public Landroid/support/v4/widget/y;
.super Ljava/lang/Object;
.source "TextViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/y$c;,
        Landroid/support/v4/widget/y$b;,
        Landroid/support/v4/widget/y$a;,
        Landroid/support/v4/widget/y$d;
    }
.end annotation


# static fields
.field static final a:Landroid/support/v4/widget/y$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 130
    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 131
    new-instance v0, Landroid/support/v4/widget/y$c;

    invoke-direct {v0}, Landroid/support/v4/widget/y$c;-><init>()V

    sput-object v0, Landroid/support/v4/widget/y;->a:Landroid/support/v4/widget/y$d;

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_0
    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 133
    new-instance v0, Landroid/support/v4/widget/y$b;

    invoke-direct {v0}, Landroid/support/v4/widget/y$b;-><init>()V

    sput-object v0, Landroid/support/v4/widget/y;->a:Landroid/support/v4/widget/y$d;

    goto :goto_0

    .line 135
    :cond_1
    new-instance v0, Landroid/support/v4/widget/y$a;

    invoke-direct {v0}, Landroid/support/v4/widget/y$a;-><init>()V

    sput-object v0, Landroid/support/v4/widget/y;->a:Landroid/support/v4/widget/y$d;

    goto :goto_0
.end method

.method public static a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 157
    sget-object v0, Landroid/support/v4/widget/y;->a:Landroid/support/v4/widget/y$d;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/widget/y$d;->a(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 158
    return-void
.end method
