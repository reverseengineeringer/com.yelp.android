.class Lcom/facebook/internal/j$a;
.super Ljava/lang/Object;
.source "ImageDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/facebook/internal/j$d;

.field private c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/internal/j$d;Z)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Lcom/facebook/internal/j$a;->a:Landroid/content/Context;

    .line 358
    iput-object p2, p0, Lcom/facebook/internal/j$a;->b:Lcom/facebook/internal/j$d;

    .line 359
    iput-boolean p3, p0, Lcom/facebook/internal/j$a;->c:Z

    .line 360
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 364
    iget-object v0, p0, Lcom/facebook/internal/j$a;->b:Lcom/facebook/internal/j$d;

    iget-object v1, p0, Lcom/facebook/internal/j$a;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/facebook/internal/j$a;->c:Z

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$d;Landroid/content/Context;Z)V

    .line 365
    return-void
.end method
