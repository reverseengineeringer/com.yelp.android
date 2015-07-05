.class Lcom/yelp/android/ui/activities/events/ap;
.super Ljava/lang/Object;
.source "EventSubscriptionController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/events/al;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/events/al;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/yelp/android/ui/activities/events/ap;->a:Lcom/yelp/android/ui/activities/events/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    .line 224
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ap;->a:Lcom/yelp/android/ui/activities/events/al;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/events/al;->b(Lcom/yelp/android/ui/activities/events/al;)Lcom/yelp/android/serializable/Event;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Event;->getSubscriptionStatusEnum()Lcom/yelp/android/serializable/Event$SubscriptionStatus;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 225
    iget-object v1, p0, Lcom/yelp/android/ui/activities/events/ap;->a:Lcom/yelp/android/ui/activities/events/al;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/events/al;->a(Lcom/yelp/android/serializable/Event$SubscriptionStatus;)V

    .line 227
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 232
    return-void
.end method
