.class Lcom/yelp/android/ui/panels/f$1;
.super Ljava/lang/Object;
.source "StickyFilterListHeader.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/f;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/f;

.field final synthetic b:Lcom/yelp/android/ui/panels/f;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/f;Lcom/yelp/android/ui/panels/f;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/yelp/android/ui/panels/f$1;->b:Lcom/yelp/android/ui/panels/f;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/f$1;->a:Lcom/yelp/android/ui/panels/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f$1;->a:Lcom/yelp/android/ui/panels/f;

    invoke-static {v0, p0}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 242
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f$1;->b:Lcom/yelp/android/ui/panels/f;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/f$1;->b:Lcom/yelp/android/ui/panels/f;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/f;->a(Lcom/yelp/android/ui/panels/f;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/panels/f;->a(Lcom/yelp/android/ui/panels/f;Landroid/view/View;)Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f$1;->b:Lcom/yelp/android/ui/panels/f;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/f;->c(Lcom/yelp/android/ui/panels/f;)Lcom/yelp/android/ui/util/e;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/panels/f$1;->b:Lcom/yelp/android/ui/panels/f;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/f;->b(Lcom/yelp/android/ui/panels/f;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/util/e;->b(Landroid/view/View;)V

    .line 248
    iget-object v0, p0, Lcom/yelp/android/ui/panels/f$1;->b:Lcom/yelp/android/ui/panels/f;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/f;->d(Lcom/yelp/android/ui/panels/f;)V

    .line 249
    return-void
.end method
