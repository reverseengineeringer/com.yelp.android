.class public Landroid/support/v4/app/x$f;
.super Landroid/support/v4/app/x$p;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1765
    invoke-direct {p0}, Landroid/support/v4/app/x$p;-><init>()V

    .line 1763
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/x$f;->a:Ljava/util/ArrayList;

    .line 1766
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$f;
    .locals 1

    .prologue
    .line 1785
    invoke-static {p1}, Landroid/support/v4/app/x$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/x$f;->f:Ljava/lang/CharSequence;

    .line 1786
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/app/x$f;->g:Z

    .line 1787
    return-object p0
.end method

.method public b(Ljava/lang/CharSequence;)Landroid/support/v4/app/x$f;
    .locals 2

    .prologue
    .line 1794
    iget-object v0, p0, Landroid/support/v4/app/x$f;->a:Ljava/util/ArrayList;

    invoke-static {p1}, Landroid/support/v4/app/x$d;->d(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1795
    return-object p0
.end method
