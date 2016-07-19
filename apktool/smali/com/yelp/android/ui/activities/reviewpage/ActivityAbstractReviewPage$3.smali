.class Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$3;
.super Ljava/lang/Object;
.source "ActivityAbstractReviewPage.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .prologue
    .line 688
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$3;->b:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$3;->a:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 691
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    .line 692
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    :cond_0
    :goto_0
    return v0

    .line 695
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$3;->b:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->j:Ljava/lang/String;

    .line 696
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$3;->b:Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;->a(Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage;)V

    .line 697
    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/ActivityAbstractReviewPage$3;->a:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 698
    const/4 v0, 0x1

    goto :goto_0
.end method
