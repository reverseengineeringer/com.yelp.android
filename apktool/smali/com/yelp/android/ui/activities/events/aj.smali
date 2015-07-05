.class Lcom/yelp/android/ui/activities/events/aj;
.super Ljava/lang/Object;
.source "EventRsvpController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/af;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/af;)V
    .locals 0

    .prologue
    .line 351
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/aj;->a:Lcom/yelp/android/ui/activities/events/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/aj;->a:Lcom/yelp/android/ui/activities/events/af;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/af;->b(Lcom/yelp/android/ui/activities/events/af;Z)Z

    .line 361
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/aj;->a:Lcom/yelp/android/ui/activities/events/af;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/af;->c(Lcom/yelp/android/ui/activities/events/af;)V

    .line 369
    :goto_0
    return-void

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/aj;->a:Lcom/yelp/android/ui/activities/events/af;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/af;->a(Lcom/yelp/android/ui/activities/events/af;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/aj;->a:Lcom/yelp/android/ui/activities/events/af;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/af;->a(Lcom/yelp/android/ui/activities/events/af;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f070364

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x417

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
