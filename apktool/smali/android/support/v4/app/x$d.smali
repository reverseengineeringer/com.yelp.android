.class public Landroid/support/v4/app/x$d;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field A:Landroid/app/Notification;

.field public B:Landroid/app/Notification;

.field public C:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public a:Landroid/content/Context;

.field public b:Ljava/lang/CharSequence;

.field public c:Ljava/lang/CharSequence;

.field d:Landroid/app/PendingIntent;

.field e:Landroid/app/PendingIntent;

.field f:Landroid/widget/RemoteViews;

.field public g:Landroid/graphics/Bitmap;

.field public h:Ljava/lang/CharSequence;

.field public i:I

.field j:I

.field k:Z

.field public l:Z

.field public m:Landroid/support/v4/app/x$p;

.field public n:Ljava/lang/CharSequence;

.field o:I

.field p:I

.field q:Z

.field r:Ljava/lang/String;

.field s:Z

.field t:Ljava/lang/String;

.field public u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/x$a;",
            ">;"
        }
    .end annotation
.end field

.field v:Z

.field w:Ljava/lang/String;

.field x:Landroid/os/Bundle;

.field y:I

.field z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/x$d;->k:Z

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x$d;->u:Ljava/util/ArrayList;

    .line 913
    iput-boolean v4, p0, Landroid/support/v4/app/x$d;->v:Z

    .line 916
    iput v4, p0, Landroid/support/v4/app/x$d;->y:I

    .line 917
    iput v4, p0, Landroid/support/v4/app/x$d;->z:I

    .line 921
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x$d;->B:Landroid/app/Notification;

    .line 936
    iput-object p1, p0, Landroid/support/v4/app/x$d;->a:Landroid/content/Context;

    .line 939
    iget-object v0, p0, Landroid/support/v4/app/x$d;->B:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Landroid/app/Notification;->when:J

    .line 940
    iget-object v0, p0, Landroid/support/v4/app/x$d;->B:Landroid/app/Notification;

    const/4 v1, -0x1

    iput v1, v0, Landroid/app/Notification;->audioStreamType:I

    .line 941
    iput v4, p0, Landroid/support/v4/app/x$d;->j:I

    .line 942
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x$d;->C:Ljava/util/ArrayList;

    .line 943
    return-void
.end method

.method private a(IZ)V
    .locals 3

    .prologue
    .line 1291
    if-eqz p2, :cond_0

    .line 1292
    iget-object v0, p0, Landroid/support/v4/app/x$d;->B:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1296
    :goto_0
    return-void

    .line 1294
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/x$d;->B:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0
.end method

.method protected static d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .prologue
    const/16 v1, 0x1400

    .line 1572
    if-nez p0, :cond_1

    .line 1576
    :cond_0
    :goto_0
    return-object p0

    .line 1573
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 1574
    const/4 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public a()Landroid/app/Notification;
    .locals 2

    .prologue
    .line 1561
    invoke-static {}, Landroid/support/v4/app/x;->a()Landroid/support/v4/app/x$g;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/x$d;->b()Landroid/support/v4/app/x$e;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/support/v4/app/x$g;->a(Landroid/support/v4/app/x$d;Landroid/support/v4/app/x$e;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/support/v4/app/x$d;
    .locals 1

    .prologue
    .line 987
    iget-object v0, p0, Landroid/support/v4/app/x$d;->B:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 988
    return-object p0
.end method

.method public a(J)Landroid/support/v4/app/x$d;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Landroid/support/v4/app/x$d;->B:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 951
    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroid/support/v4/app/x$d;
    .locals 0

    .prologue
    .line 1083
    iput-object p1, p0, Landroid/support/v4/app/x$d;->d:Landroid/app/PendingIntent;

    .line 1084
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/x$d;
    .locals 0

    .prologue
    .line 1147
    iput-object p1, p0, Landroid/support/v4/app/x$d;->g:Landroid/graphics/Bitmap;

    .line 1148
    return-object p0
.end method

.method public a(Landroid/support/v4/app/x$a;)Landroid/support/v4/app/x$d;
    .locals 1

    .prologue
    .line 1480
    iget-object v0, p0, Landroid/support/v4/app/x$d;->u:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1481
    return-object p0
.end method

.method public a(Landroid/support/v4/app/x$p;)Landroid/support/v4/app/x$d;
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Landroid/support/v4/app/x$d;->m:Landroid/support/v4/app/x$p;

    if-eq v0, p1, :cond_0

    .line 1494
    iput-object p1, p0, Landroid/support/v4/app/x$d;->m:Landroid/support/v4/app/x$p;

    .line 1495
    iget-object v0, p0, Landroid/support/v4/app/x$d;->m:Landroid/support/v4/app/x$p;

    if-eqz v0, :cond_0

    .line 1496
    iget-object v0, p0, Landroid/support/v4/app/x$d;->m:Landroid/support/v4/app/x$p;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/x$p;->a(Landroid/support/v4/app/x$d;)V

    .line 1499
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$d;
    .locals 1

    .prologue
    .line 1011
    invoke-static {p1}, Landroid/support/v4/app/x$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/x$d;->b:Ljava/lang/CharSequence;

    .line 1012
    return-object p0
.end method

.method public a(Z)Landroid/support/v4/app/x$d;
    .locals 1

    .prologue
    .line 1245
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/x$d;->a(IZ)V

    .line 1246
    return-object p0
.end method

.method public b(I)Landroid/support/v4/app/x$d;
    .locals 0

    .prologue
    .line 1043
    iput p1, p0, Landroid/support/v4/app/x$d;->i:I

    .line 1044
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$d;
    .locals 1

    .prologue
    .line 1019
    invoke-static {p1}, Landroid/support/v4/app/x$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/x$d;->c:Ljava/lang/CharSequence;

    .line 1020
    return-object p0
.end method

.method protected b()Landroid/support/v4/app/x$e;
    .locals 1

    .prologue
    .line 1568
    new-instance v0, Landroid/support/v4/app/x$e;

    invoke-direct {v0}, Landroid/support/v4/app/x$e;-><init>()V

    return-object v0
.end method

.method public c(I)Landroid/support/v4/app/x$d;
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Landroid/support/v4/app/x$d;->B:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 1284
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Landroid/support/v4/app/x$d;->B:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 1287
    :cond_0
    return-object p0
.end method

.method public c(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$d;
    .locals 2

    .prologue
    .line 1128
    iget-object v0, p0, Landroid/support/v4/app/x$d;->B:Landroid/app/Notification;

    invoke-static {p1}, Landroid/support/v4/app/x$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1129
    return-object p0
.end method

.method public d(I)Landroid/support/v4/app/x$d;
    .locals 0

    .prologue
    .line 1510
    iput p1, p0, Landroid/support/v4/app/x$d;->y:I

    .line 1511
    return-object p0
.end method
