.class Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$2;
.super Ljava/lang/Object;
.source "ActivityBookmarks.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$2;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 660
    if-nez p2, :cond_0

    invoke-static {p3}, Lcom/yelp/android/ui/util/ar;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$2;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$2;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->q(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Lcom/yelp/android/ui/widgets/EditTextAndClearButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/widgets/EditTextAndClearButton;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;Ljava/lang/String;)Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$2;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->d(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->a(Ljava/lang/String;)V

    .line 665
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks$2;->a:Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;->u(Lcom/yelp/android/ui/activities/bookmarks/ActivityBookmarks;)V

    .line 666
    const/4 v0, 0x1

    .line 668
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
