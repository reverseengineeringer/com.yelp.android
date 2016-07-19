.class Lcom/yelp/android/ui/util/AndroidListFragment$1;
.super Ljava/lang/Object;
.source "AndroidListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/util/AndroidListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/AndroidListFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/AndroidListFragment;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/yelp/android/ui/util/AndroidListFragment$1;->a:Lcom/yelp/android/ui/util/AndroidListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/yelp/android/ui/util/AndroidListFragment$1;->a:Lcom/yelp/android/ui/util/AndroidListFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/util/AndroidListFragment;->a(Lcom/yelp/android/ui/util/AndroidListFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/AndroidListFragment$1;->a:Lcom/yelp/android/ui/util/AndroidListFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/util/AndroidListFragment;->a(Lcom/yelp/android/ui/util/AndroidListFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    .line 166
    return-void
.end method
