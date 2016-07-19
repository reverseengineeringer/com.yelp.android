.class Lcom/yelp/android/ui/activities/reviewpage/c$1;
.super Ljava/lang/Object;
.source "ReviewAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviewpage/c;->b(Lcom/yelp/android/ui/activities/reviewpage/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/c$a;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/c;Lcom/yelp/android/ui/activities/reviewpage/c$a;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/c$1;->b:Lcom/yelp/android/ui/activities/reviewpage/c;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/c$1;->a:Lcom/yelp/android/ui/activities/reviewpage/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/c$1;->a:Lcom/yelp/android/ui/activities/reviewpage/c$a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/c;->a(Lcom/yelp/android/ui/activities/reviewpage/c$a;)V

    .line 334
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/c$1;->a:Lcom/yelp/android/ui/activities/reviewpage/c$a;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/c$a;->p:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 335
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 336
    return-void
.end method
