.class public Landroid/support/v4/app/ag;
.super Landroid/support/v4/app/ai$a;
.source "RemoteInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ag$b;,
        Landroid/support/v4/app/ag$d;,
        Landroid/support/v4/app/ag$c;,
        Landroid/support/v4/app/ag$a;
    }
.end annotation


# static fields
.field public static final a:Landroid/support/v4/app/ai$a$a;

.field private static final g:Landroid/support/v4/app/ag$a;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/CharSequence;

.field private final d:[Ljava/lang/CharSequence;

.field private final e:Z

.field private final f:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 254
    new-instance v0, Landroid/support/v4/app/ag$b;

    invoke-direct {v0}, Landroid/support/v4/app/ag$b;-><init>()V

    sput-object v0, Landroid/support/v4/app/ag;->g:Landroid/support/v4/app/ag$a;

    .line 263
    :goto_0
    new-instance v0, Landroid/support/v4/app/ag$1;

    invoke-direct {v0}, Landroid/support/v4/app/ag$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/ag;->a:Landroid/support/v4/app/ai$a$a;

    return-void

    .line 255
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 256
    new-instance v0, Landroid/support/v4/app/ag$d;

    invoke-direct {v0}, Landroid/support/v4/app/ag$d;-><init>()V

    sput-object v0, Landroid/support/v4/app/ag;->g:Landroid/support/v4/app/ag$a;

    goto :goto_0

    .line 258
    :cond_1
    new-instance v0, Landroid/support/v4/app/ag$c;

    invoke-direct {v0}, Landroid/support/v4/app/ag$c;-><init>()V

    sput-object v0, Landroid/support/v4/app/ag;->g:Landroid/support/v4/app/ag$a;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v4/app/ag;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Landroid/support/v4/app/ag;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/v4/app/ag;->d:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Landroid/support/v4/app/ag;->e:Z

    return v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/app/ag;->f:Landroid/os/Bundle;

    return-object v0
.end method
