.class Lcom/yelp/android/ui/activities/events/ai;
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
    .line 339
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/ai;->a:Lcom/yelp/android/ui/activities/events/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/ai;->a:Lcom/yelp/android/ui/activities/events/af;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/af;->b(Lcom/yelp/android/ui/activities/events/af;)Lcom/yelp/android/serializable/Event;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Event;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ai;->a:Lcom/yelp/android/ui/activities/events/af;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/af;->b(Lcom/yelp/android/ui/activities/events/af;)Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getRsvp()Lcom/yelp/android/serializable/EventRsvp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/EventRsvp;->getPartyPassImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/activities/events/EventPartyPassFragment;

    move-result-object v0

    .line 344
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ai;->a:Lcom/yelp/android/ui/activities/events/af;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/af;->a(Lcom/yelp/android/ui/activities/events/af;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/events/EventFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0c01d4

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 348
    return-void
.end method
