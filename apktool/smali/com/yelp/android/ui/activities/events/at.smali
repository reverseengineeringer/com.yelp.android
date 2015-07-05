.class Lcom/yelp/android/ui/activities/events/at;
.super Ljava/lang/Object;
.source "EventsFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/o;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventsFragment;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/at;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 235
    return-void
.end method

.method public k_()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/at;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->b(Lcom/yelp/android/ui/activities/events/EventsFragment;)Lcom/yelp/android/ui/panels/aa;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/aa;->m_()V

    .line 240
    return-void
.end method
