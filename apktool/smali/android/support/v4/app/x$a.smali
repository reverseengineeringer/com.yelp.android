.class public Landroid/support/v4/app/x$a;
.super Landroid/support/v4/app/aa$a;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final d:Landroid/support/v4/app/aa$a$a;


# instance fields
.field public a:I

.field public b:Ljava/lang/CharSequence;

.field public c:Landroid/app/PendingIntent;

.field private final e:Landroid/os/Bundle;

.field private final f:[Landroid/support/v4/app/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2171
    new-instance v0, Landroid/support/v4/app/x$a$1;

    invoke-direct {v0}, Landroid/support/v4/app/x$a$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/x$a;->d:Landroid/support/v4/app/aa$a$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 6

    .prologue
    .line 1827
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/app/x$a;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/ag;)V

    .line 1828
    return-void
.end method

.method private constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/ag;)V
    .locals 1

    .prologue
    .line 1831
    invoke-direct {p0}, Landroid/support/v4/app/aa$a;-><init>()V

    .line 1832
    iput p1, p0, Landroid/support/v4/app/x$a;->a:I

    .line 1833
    invoke-static {p2}, Landroid/support/v4/app/x$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/x$a;->b:Ljava/lang/CharSequence;

    .line 1834
    iput-object p3, p0, Landroid/support/v4/app/x$a;->c:Landroid/app/PendingIntent;

    .line 1835
    if-eqz p4, :cond_0

    :goto_0
    iput-object p4, p0, Landroid/support/v4/app/x$a;->e:Landroid/os/Bundle;

    .line 1836
    iput-object p5, p0, Landroid/support/v4/app/x$a;->f:[Landroid/support/v4/app/ag;

    .line 1837
    return-void

    .line 1835
    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 1841
    iget v0, p0, Landroid/support/v4/app/x$a;->a:I

    return v0
.end method

.method public b()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1846
    iget-object v0, p0, Landroid/support/v4/app/x$a;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public c()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1851
    iget-object v0, p0, Landroid/support/v4/app/x$a;->c:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public d()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 1859
    iget-object v0, p0, Landroid/support/v4/app/x$a;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public e()[Landroid/support/v4/app/ag;
    .locals 1

    .prologue
    .line 1868
    iget-object v0, p0, Landroid/support/v4/app/x$a;->f:[Landroid/support/v4/app/ag;

    return-object v0
.end method

.method public synthetic f()[Landroid/support/v4/app/ai$a;
    .locals 1

    .prologue
    .line 1808
    invoke-virtual {p0}, Landroid/support/v4/app/x$a;->e()[Landroid/support/v4/app/ag;

    move-result-object v0

    return-object v0
.end method
