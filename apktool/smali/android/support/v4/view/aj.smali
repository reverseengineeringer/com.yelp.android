.class Landroid/support/v4/view/aj;
.super Ljava/lang/Object;
.source "ViewCompatBase.java"


# static fields
.field private static a:Ljava/lang/reflect/Field;

.field private static b:Z

.field private static c:Ljava/lang/reflect/Field;

.field private static d:Z


# direct methods
.method static a(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 1

    .prologue
    .line 41
    instance-of v0, p0, Landroid/support/v4/view/af;

    if-eqz v0, :cond_0

    .line 42
    check-cast p0, Landroid/support/v4/view/af;

    invoke-interface {p0, p1}, Landroid/support/v4/view/af;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 44
    :cond_0
    return-void
.end method

.method static a(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .prologue
    .line 53
    instance-of v0, p0, Landroid/support/v4/view/af;

    if-eqz v0, :cond_0

    .line 54
    check-cast p0, Landroid/support/v4/view/af;

    invoke-interface {p0, p1}, Landroid/support/v4/view/af;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 56
    :cond_0
    return-void
.end method

.method static a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static b(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 63
    sget-boolean v0, Landroid/support/v4/view/aj;->b:Z

    if-nez v0, :cond_0

    .line 65
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/aj;->a:Ljava/lang/reflect/Field;

    .line 66
    sget-object v0, Landroid/support/v4/view/aj;->a:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 70
    :goto_0
    sput-boolean v2, Landroid/support/v4/view/aj;->b:Z

    .line 73
    :cond_0
    sget-object v0, Landroid/support/v4/view/aj;->a:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 75
    :try_start_1
    sget-object v0, Landroid/support/v4/view/aj;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 82
    :goto_1
    return v0

    .line 76
    :catch_0
    move-exception v0

    .line 82
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 67
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static c(Landroid/view/View;)I
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 86
    sget-boolean v0, Landroid/support/v4/view/aj;->d:Z

    if-nez v0, :cond_0

    .line 88
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string/jumbo v1, "mMinHeight"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/aj;->c:Ljava/lang/reflect/Field;

    .line 89
    sget-object v0, Landroid/support/v4/view/aj;->c:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :goto_0
    sput-boolean v2, Landroid/support/v4/view/aj;->d:Z

    .line 96
    :cond_0
    sget-object v0, Landroid/support/v4/view/aj;->c:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 98
    :try_start_1
    sget-object v0, Landroid/support/v4/view/aj;->c:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    .line 105
    :goto_1
    return v0

    .line 99
    :catch_0
    move-exception v0

    .line 105
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 90
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method static d(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
