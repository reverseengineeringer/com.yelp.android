.class final Lcom/facebook/share/internal/j$2;
.super Ljava/lang/Object;
.source "ShareInternalUtility.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/j;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 246
    iput p1, p0, Lcom/facebook/share/internal/j$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 249
    iget v0, p0, Lcom/facebook/share/internal/j$2;->a:I

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/facebook/share/internal/j;->a(Lcom/facebook/f;)Lcom/facebook/share/internal/h;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/facebook/share/internal/j;->a(IILandroid/content/Intent;Lcom/facebook/share/internal/h;)Z

    move-result v0

    return v0
.end method
