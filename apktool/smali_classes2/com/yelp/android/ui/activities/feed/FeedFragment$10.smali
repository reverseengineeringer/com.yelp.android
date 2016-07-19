.class Lcom/yelp/android/ui/activities/feed/FeedFragment$10;
.super Ljava/lang/Object;
.source "FeedFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/panels/PanelError$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/FeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/FeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/FeedFragment;)V
    .locals 0

    .prologue
    .line 750
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$10;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public q_()V
    .locals 5

    .prologue
    .line 753
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$10;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->q(Lcom/yelp/android/ui/activities/feed/FeedFragment;)Lcom/yelp/android/ui/panels/PanelError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/PanelError;->getErrorType()Lcom/yelp/android/util/ErrorType;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/util/ErrorType;->NO_LOCATION_PERMISSION:Lcom/yelp/android/util/ErrorType;

    if-ne v0, v1, :cond_0

    .line 754
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$10;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    const/16 v1, 0xfa

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/yelp/android/appdata/PermissionGroup;

    const/4 v3, 0x0

    sget-object v4, Lcom/yelp/android/appdata/PermissionGroup;->LOCATION:Lcom/yelp/android/appdata/PermissionGroup;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/k;->a(Landroid/support/v4/app/Fragment;I[Lcom/yelp/android/appdata/PermissionGroup;)Z

    .line 763
    :goto_0
    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$10;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->o()V

    .line 760
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$10;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->p_()V

    .line 761
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/FeedFragment$10;->a:Lcom/yelp/android/ui/activities/feed/FeedFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/feed/FeedFragment;->h()V

    goto :goto_0
.end method
