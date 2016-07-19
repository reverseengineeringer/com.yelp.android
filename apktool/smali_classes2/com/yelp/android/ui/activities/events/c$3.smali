.class Lcom/yelp/android/ui/activities/events/c$3;
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
    .line 371
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/c$3;->a:Lcom/yelp/android/ui/activities/events/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 374
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/c$3;->a:Lcom/yelp/android/ui/activities/events/c;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/c;->b(Lcom/yelp/android/ui/activities/events/c;)Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->G()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c$3;->a:Lcom/yelp/android/ui/activities/events/c;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/c;->b(Lcom/yelp/android/ui/activities/events/c;)Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->L()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventRsvp;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;

    move-result-object v0

    .line 378
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/c$3;->a:Lcom/yelp/android/ui/activities/events/c;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/c;->a(Lcom/yelp/android/ui/activities/events/c;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/l;->a()Landroid/support/v4/app/o;

    move-result-object v1

    const v2, 0x7f0f020d

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/o;->b(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/o;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/o;->a(Ljava/lang/String;)Landroid/support/v4/app/o;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/o;->a()I

    .line 385
    return-void
.end method
