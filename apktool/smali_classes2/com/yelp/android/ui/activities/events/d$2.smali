.class Lcom/yelp/android/ui/activities/events/d$2;
.super Ljava/lang/Object;
.source "EventSubscriptionController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/events/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/d;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/d$2;->a:Lcom/yelp/android/ui/activities/events/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 215
    check-cast p1, Lcom/yelp/android/ui/widgets/YelpToggleButton;

    .line 216
    invoke-virtual {p1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d$2;->a:Lcom/yelp/android/ui/activities/events/d;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/d;->c(Lcom/yelp/android/ui/activities/events/d;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/d$2;->a:Lcom/yelp/android/ui/activities/events/d;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/d;->b(Lcom/yelp/android/ui/activities/events/d;)Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/d$2;->a:Lcom/yelp/android/ui/activities/events/d;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/d;->c(Lcom/yelp/android/ui/activities/events/d;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/d$2;->a:Lcom/yelp/android/ui/activities/events/d;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/d;->b(Lcom/yelp/android/ui/activities/events/d;)Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->I()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
