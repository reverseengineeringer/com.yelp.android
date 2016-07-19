.class Lcom/yelp/android/m/e$3;
.super Ljava/lang/Object;
.source "WindowDecorActionBar.java"

# interfaces
.implements Landroid/support/v4/view/bf;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/m/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/m/e;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/yelp/android/m/e$3;->a:Lcom/yelp/android/m/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yelp/android/m/e$3;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->c(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 167
    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 168
    return-void
.end method
