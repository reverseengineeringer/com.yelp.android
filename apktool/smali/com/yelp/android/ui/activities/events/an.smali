.class Lcom/yelp/android/ui/activities/events/an;
.super Ljava/lang/Object;
.source "EventSubscriptionController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/al;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/al;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/an;->a:Lcom/yelp/android/ui/activities/events/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 197
    check-cast p1, Lcom/yelp/android/ui/widgets/YelpToggleButton;

    .line 198
    invoke-virtual {p1}, Lcom/yelp/android/ui/widgets/YelpToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/an;->a:Lcom/yelp/android/ui/activities/events/al;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/al;->c(Lcom/yelp/android/ui/activities/events/al;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/an;->a:Lcom/yelp/android/ui/activities/events/al;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/al;->b(Lcom/yelp/android/ui/activities/events/al;)Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->a(Ljava/lang/String;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/events/an;->a:Lcom/yelp/android/ui/activities/events/al;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/events/al;->c(Lcom/yelp/android/ui/activities/events/al;)Lcom/yelp/android/ui/activities/events/EventFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/events/EventFragment;->c()Lcom/yelp/android/ui/activities/events/EventRequestFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/an;->a:Lcom/yelp/android/ui/activities/events/al;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/al;->b(Lcom/yelp/android/ui/activities/events/al;)Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/events/EventRequestFragment;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
