.class Lcom/yelp/android/ui/activities/feed/viewbinder/q$1;
.super Ljava/lang/Object;
.source "InlineAlertsViewBinder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/feed/viewbinder/q;-><init>(Landroid/view/View;Lcom/yelp/android/ui/activities/notifications/a$a;Lcom/yelp/android/ui/activities/support/YelpFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/support/YelpFragment;

.field final synthetic b:Lcom/yelp/android/ui/activities/feed/viewbinder/q;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/viewbinder/q;Lcom/yelp/android/ui/activities/support/YelpFragment;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$1;->b:Lcom/yelp/android/ui/activities/feed/viewbinder/q;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$1;->a:Lcom/yelp/android/ui/activities/support/YelpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/viewbinder/q$1;->a:Lcom/yelp/android/ui/activities/support/YelpFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/yelp/android/ui/activities/notifications/ActivityNotifications;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3f7

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/support/YelpFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 62
    return-void
.end method
