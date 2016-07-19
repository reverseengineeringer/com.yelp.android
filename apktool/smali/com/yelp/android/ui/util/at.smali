.class public Lcom/yelp/android/ui/util/at;
.super Ljava/lang/Object;
.source "ViewSizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/util/at$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/view/View;Lcom/yelp/android/ui/util/at$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(TT;",
            "Lcom/yelp/android/ui/util/at$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/ui/util/at$1;

    invoke-direct {v1, p0, p1}, Lcom/yelp/android/ui/util/at$1;-><init>(Landroid/view/View;Lcom/yelp/android/ui/util/at$a;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 32
    return-void
.end method
