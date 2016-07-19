.class Lcom/yelp/android/m/e$2;
.super Landroid/support/v4/view/be;
.source "WindowDecorActionBar.java"


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
    .line 154
    iput-object p1, p0, Lcom/yelp/android/m/e$2;->a:Lcom/yelp/android/m/e;

    invoke-direct {p0}, Landroid/support/v4/view/be;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/yelp/android/m/e$2;->a:Lcom/yelp/android/m/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/m/e;->a(Lcom/yelp/android/m/e;Lcom/yelp/android/p/f;)Lcom/yelp/android/p/f;

    .line 158
    iget-object v0, p0, Lcom/yelp/android/m/e$2;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->c(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->requestLayout()V

    .line 159
    return-void
.end method
