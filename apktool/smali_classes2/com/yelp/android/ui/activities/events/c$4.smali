.class Lcom/yelp/android/ui/activities/events/c$4;
.super Ljava/lang/Object;
.source "EventRsvpController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/events/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/c;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/c$4;->a:Lcom/yelp/android/ui/activities/events/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 398
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c$4;->a:Lcom/yelp/android/ui/activities/events/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/c;->b(Lcom/yelp/android/ui/activities/events/c;Z)Z

    .line 399
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/co;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c$4;->a:Lcom/yelp/android/ui/activities/events/c;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/c;->c(Lcom/yelp/android/ui/activities/events/c;)V

    .line 409
    :goto_0
    return-void

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c$4;->a:Lcom/yelp/android/ui/activities/events/c;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/c;->a(Lcom/yelp/android/ui/activities/events/c;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c$4;->a:Lcom/yelp/android/ui/activities/events/c;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/c;->a(Lcom/yelp/android/ui/activities/events/c;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f07020a

    const v3, 0x7f0703a0

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/app/Activity;II)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x41e

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/events/EventFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
