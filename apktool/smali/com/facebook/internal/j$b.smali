.class Lcom/facebook/internal/j$b;
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
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/facebook/internal/j$d;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/facebook/internal/j$d;)V
    .locals 0

    .prologue
    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/facebook/internal/j$b;->a:Landroid/content/Context;

    .line 374
    iput-object p2, p0, Lcom/facebook/internal/j$b;->b:Lcom/facebook/internal/j$d;

    .line 375
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/facebook/internal/j$b;->b:Lcom/facebook/internal/j$d;

    iget-object v1, p0, Lcom/facebook/internal/j$b;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/facebook/internal/j;->a(Lcom/facebook/internal/j$d;Landroid/content/Context;)V

    .line 380
    return-void
.end method
