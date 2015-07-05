.class Lcom/yelp/android/ui/activities/reviewpage/al;
.super Ljava/lang/Object;
.source "ReviewAdapter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviewpage/am;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/ak;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ak;Lcom/yelp/android/ui/activities/reviewpage/am;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/al;->b:Lcom/yelp/android/ui/activities/reviewpage/ak;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/al;->a:Lcom/yelp/android/ui/activities/reviewpage/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/al;->a:Lcom/yelp/android/ui/activities/reviewpage/am;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/ak;->a(Lcom/yelp/android/ui/activities/reviewpage/am;)V

    .line 287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/al;->a:Lcom/yelp/android/ui/activities/reviewpage/am;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/reviewpage/am;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 288
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 289
    return-void
.end method
