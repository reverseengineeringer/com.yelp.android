.class Lcom/yelp/android/ui/activities/events/EventsFragment$3;
.super Ljava/lang/Object;
.source "EventsFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/b$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/events/EventsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/EventsFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/EventsFragment;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$3;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .prologue
    .line 271
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/EventsFragment$3;->a:Lcom/yelp/android/ui/activities/events/EventsFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/EventsFragment;->d(Lcom/yelp/android/ui/activities/events/EventsFragment;)Lcom/yelp/android/ui/panels/PanelError$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/panels/PanelError$a;->q_()V

    .line 276
    return-void
.end method
