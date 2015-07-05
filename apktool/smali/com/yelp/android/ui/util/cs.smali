.class public Lcom/yelp/android/ui/util/cs;
.super Ljava/lang/Object;
.source "ViewSizer.java"


# direct methods
.method public static a(Landroid/view/View;Lcom/yelp/android/ui/util/cu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/yelp/android/ui/util/cu",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/util/ct;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/util/ct;-><init>(Landroid/view/View;Lcom/yelp/android/ui/util/cu;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 30
    return-void
.end method
